# MoniTune Internationalization (i18n) Architecture & Translation Pipeline Specification

**Date:** 2026-10-26  
**Status:** Approved by User  
**Target Release:** MoniTune v1.1.0  

---

## 1. Overview & Objectives

MoniTune is currently a single-language (English) application with hardcoded strings across all Flutter widgets, screens, and Android background notification channels. Recent user requests ([Issue #3](https://github.com/goodeesh/monitune/issues/3) for Brazilian Portuguese and [Issue #4](https://github.com/goodeesh/monitune/issues/4) for Chinese) highlight the need for full internationalization.

This document specifies:
1. Setting up the first-party Flutter `gen-l10n` toolchain.
2. Complete extraction of all UI strings into a master English ARB catalog with translator context metadata.
3. Refactoring all Flutter screens, widgets, and Android notification strings to use localized keys.
4. Adding user locale selection in the UI (Display Screen under "Appearance & Language") with auto-detect system language support.
5. A high-fidelity subagent translation pipeline to generate natural, idiomatic translations for a broad global set of 17 languages.
6. Automated verification tools ensuring 100% key parity, valid placeholder tokens, and layout safety.

---

## 2. Flutter i18n Architecture

### 2.1 Dependencies & Configuration

In `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter
  intl: any

flutter:
  generate: true
```

In `l10n.yaml`:
```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
nullable-getter: false
```

### 2.2 Extension Helper (`lib/l10n/l10n.dart`)
To keep code concise and avoid boilerplate:
```dart
import 'package:flutter/widgets.dart';
import 'package:monitune/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
```

Usage throughout widgets:
```dart
Text(context.l10n.homeKeepSettings)
```

### 2.3 State Management & Locale Persistence (`AppState`)
In `lib/state/app_state.dart`:
- Store `String? _languageCode` (`null` = follow system locale; or specific ISO code such as `'pt'`, `'zh'`, `'es'`).
- Persist value to `SharedPreferences` with key `pref_language_code`.
- Expose `Locale? get appLocale => _languageCode != null ? Locale(_languageCode!) : null;`.
- Add `Future<void> setLanguage(String? languageCode)` which updates preferences, state, and calls `notifyListeners()`.

In `lib/main.dart`:
```dart
MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  locale: state.appLocale,
  // ...
)
```
When `state.appLocale` is `null`, Flutter resolves against `PlatformDispatcher.instance.locales` and picks the closest matching supported locale, falling back to English.

---

## 3. String Extraction & UI Integration

### 3.1 ARB Master Catalog (`lib/l10n/app_en.arb`)
All strings across the entire codebase will be extracted into semantic categories:
- `common_*`: Reusable actions (`cancel`, `save`, `reset`, `revert`, `close`, `learnMore`).
- `home_*`: Monitor status (`connected`, `disconnected`), primary action cards, active profile pill, countdown notice.
- `display_*`: Presets (1080p, 1440p, 4K, Ultrawide, Native, Custom), UI scaling slider (`{scale}% ({dpi} DPI)`), "Launcher-safe mode", "Force Landscape", Appearance, and Language settings.
- `access_*`: Privileges (`Write Secure Settings`, `Shizuku`, `Root`, `Display over other apps`, `Modify system settings`, `Notifications`, `Battery optimization`), permission instructions, setup assistance.
- `onboarding_*`: Step cards, titles, explainers, and onboarding actions.
- `info_*`: Version info, check for updates, release links, licenses.
- `safety_*`: Emergency revert hint (`"Press Power button to turn off screen and revert display"`).

ICU parameter placeholders will be strictly documented:
```json
"homeRevertCountdown": "Auto-reverting in {seconds}s unless confirmed",
"@homeRevertCountdown": {
  "description": "Safety countdown timer displayed during display profile test",
  "placeholders": {
    "seconds": { "type": "int", "example": "15" }
  }
}
```

### 3.2 UI Language Selector
- **Location:** `DisplayScreen` inside a new "Appearance & Language" section.
- **UI Element:** A settings tile showing the current language label (e.g. *"System default (English)"*, *"Português (Brasil)"*, *"简体中文"*).
- **Selector Sheet:** Bottom sheet presenting native language names with checkmark for the selected item:
  - 🌐 System default
  - English
  - Português (Brasil)
  - 简体中文
  - Español
  - Deutsch
  - Français
  - Italiano
  - 日本語
  - 한국어
  - 繁體中文
  - Русский
  - Polski
  - Türkçe
  - हिन्दी
  - العربية
  - Bahasa Indonesia
  - Nederlands
  - Tiếng Việt

### 3.3 Android Native Notification Localization
Android foreground services ([`ExternalDisplayService.kt`](file:///home/adriansc/Projects/Monitune/android/app/src/main/kotlin/com/goodeesh/monitune/display/ExternalDisplayService.kt) and [`OrientationOverlayService.kt`](file:///home/adriansc/Projects/Monitune/android/app/src/main/kotlin/com/goodeesh/monitune/display/OrientationOverlayService.kt)) will use `context.getString(R.string.notif_...)`:
- Default English in `android/app/src/main/res/values/strings.xml`.
- Localized resources in corresponding `values-<lang>/strings.xml` directories.

---

## 4. Subagent Translation Pipeline

To deliver high quality without robotic literalisms, translations will be executed by specialized subagents with a dedicated Android Localization Persona.

### 4.1 Translator Persona & System Prompt
Each subagent receives:
```
Role: Senior Mobile Localization Engineer and native speaker of [Target Language].
Domain: Android system utility for display resolution scaling, MIUI/HyperOS launcher handling, and external monitors.

Quality Standards:
1. Idiomatic Software Phrasing: Use standard Android/HyperOS terminology for this locale (e.g., standard terms for resolution, density/DPI, overlay permissions, system settings).
2. Placeholder Preservation: Never alter or translate {variables} (e.g., {seconds}, {dpi}, {width}, {height}, {version}).
3. Acronyms: Keep standard technical abbreviations unchanged (DPI, 4K, 1080p, HDMI, ADB, Shizuku, MIUI, HyperOS).
4. Formatting: Output valid ARB/JSON matching the exact key structure of app_en.arb without extra or missing keys.
```

### 4.2 Parallel Batches by Language Family
- **Batch 1 (Requested):** `pt_BR` (Brazilian Portuguese), `zh_CN` (Simplified Chinese).
- **Batch 2 (Romance):** `es` (Spanish), `fr` (French), `it` (Italian).
- **Batch 3 (Germanic & Central European):** `de` (German), `nl` (Dutch), `pl` (Polish).
- **Batch 4 (East Asian & Cyrillic):** `ja` (Japanese), `ko` (Korean), `zh_TW` (Traditional Chinese), `ru` (Russian).
- **Batch 5 (Middle Eastern, South & SE Asian):** `ar` (Arabic), `hi` (Hindi), `tr` (Turkish), `id` (Indonesian), `vi` (Vietnamese).

---

## 5. Verification & Testing

### 5.1 Automated ARB Parity Validator (`tool/verify_l10n.dart`)
A custom Dart CLI utility will check:
- JSON syntax validity of all `.arb` files.
- Complete 1:1 key parity between each locale `.arb` and `app_en.arb`.
- Placeholder matching (ensuring every `{placeholder}` in English matches the translated entry).

### 5.2 Code Generation & Compilation
Run:
```bash
flutter gen-l10n
flutter analyze
```

### 5.3 Test Suite Updates
- Update existing smoke tests (`test/screens_smoke_test.dart`, `test/widget_test.dart`) to wrap test trees with `AppLocalizations.localizationsDelegates`.
- Add a new multi-locale widget test (`test/l10n_smoke_test.dart`) verifying key screens (Home, Display, Access, Onboarding) render correctly in English, Brazilian Portuguese, Simplified Chinese, German, and Arabic without text overflows or runtime exceptions.
