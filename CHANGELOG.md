# Changelog

All notable changes to MoniTune are recorded here. Versions before 1.0.0 were
development builds published to GitHub Releases; 1.0.0 is the first release
intended to sit and be used.

## 1.2.1

### Fixed
- **Crash on Disabling Auto-Apply**: Fixed fatal `ForegroundServiceDidNotStartInTimeException` when toggling off auto-apply by stopping `ExternalDisplayService` directly via `stopService()` instead of starting it with `ACTION_STOP`.
- **Auto-Apply Re-Arm After App Update**: Registered `ACTION_MY_PACKAGE_REPLACED` in `BootReceiver` and added an initialization check in `AppState.initialize()` so the background monitor watcher automatically revives after APK updates.

### Added
- **True Blackout Overlay (AMOLED Friendly)**: When the blackout sub-option is active, MoniTune now draws an opaque pure black overlay on the built-in display (`Display.DEFAULT_DISPLAY`), completely turning off AMOLED pixels and intercepting accidental touches.
- **Double-Tap Wake**: Double-tapping anywhere on the black screen temporarily lifts the blackout overlay for 10 seconds to allow interacting with the phone without unplugging the display cable.
- **Native Extra Dim**: Simultaneously activates Android 12+'s Extra Dim (`reduce_bright_colors_activated`) via `WRITE_SECURE_SETTINGS` alongside brightness zeroing for maximum energy savings and glare reduction.

## 1.2.0

### Added
- **Phone Screen Blackout (AMOLED Friendly)**: Automated sub-option under **Auto-apply on connect** on the Home screen. When an external display is connected, the phone screen brightness drops to zero and switches to manual mode, blacking out AMOLED panels to save battery, reduce heat, and prevent burn-in without altering the digital HDMI/DisplayPort video output.
- **Zero Runtime Dependencies**: Works entirely via Permanent Access (`WRITE_SECURE_SETTINGS` / `WRITE_SETTINGS`), with zero Shizuku or root required at runtime.
- **Multi-Layer Anti-Lockout Failsafes**: Screen brightness safely and automatically restores on monitor disconnect, service shutdown, in-app toggle, or device reboot (`BootReceiver`), with recovery against unexpected process termination.
- **Full Localization**: The new blackout sub-option title and description are translated across all 18 supported languages with RTL alignment support for Arabic.

## 1.1.0

### Added
- **Full Internationalization (i18n)**: MoniTune is now fully translated into 17 languages:
  - Brazilian Portuguese (`pt-BR`)
  - Simplified Chinese (`zh-CN`)
  - Traditional Chinese (`zh-TW`)
  - Spanish (`es`)
  - French (`fr`)
  - Italian (`it`)
  - German (`de`)
  - Dutch (`nl`)
  - Polish (`pl`)
  - Russian (`ru`)
  - Turkish (`tr`)
  - Japanese (`ja`)
  - Korean (`ko`)
  - Hindi (`hi`)
  - Arabic (`ar`, with full Right-to-Left layout support)
  - Indonesian (`id`)
  - Vietnamese (`vi`)
- **In-App Language Selector**: Under **Display → Appearance & Language**, select any language using native autonyms, or default to following system language.
- **Localized Background Notifications**: Android foreground service channels and notifications for external display detection and force-landscape overlays are now localized.

## 1.0.1

### Fixed
- The update check is now discoverable. It was a dim caption at the very
  bottom of the Home screen, which read as a label rather than something
  tappable. It is now a full-width **MoniTune <version>** row that says
  "Check for updates", plus a shortcut button in the app bar.
- After a check finds a newer version, the app bar button keeps a dot until
  you update, and the row highlights the available version.

### Added
- A test that fails the build if `lib/version.dart` and `pubspec.yaml` ever
  disagree about the version.

## 1.0.0

First stable release.

### Display
- Resolution presets (720p, 1080p, 1440p, 4K, ultrawide, native) plus a custom
  width/height.
- UI scale from 75% to 200%, with the resulting DPI shown live.
- **Launcher-safe mode** applies the resolution but leaves Android density
  untouched, so MIUI/HyperOS home-screen icons stay where they are.
- **Force Landscape** keeps the display in landscape over apps that lock
  themselves to portrait, including the HyperOS launcher and recents. Applied
  when you tap **Apply Test Profile**, never on the toggle.
- **Auto-apply on connect**: a background watcher applies the profile when a
  monitor connects and resets it when it disconnects.
- **15-second safety revert** unless you tap **Keep Settings**.

### Access
- Works with Shizuku (no root) or root (Magisk/KernelSU), and remembers a
  one-time permanent access grant so Shizuku is not needed afterwards.
- Battery-optimization exemption, to keep the auto-apply watcher reliable.

### Appearance
- Material 3 **expressive** theme generated from a single seed colour.
- **Material You**: on Android 12+ the app can take its colours from the
  wallpaper, re-read whenever the app returns to the foreground.
- Eight accent presets, three palette styles (Bold, Exact, Expressive) and a
  contrast boost, all under **Display → Appearance**.
- Themed (monochrome) launcher icon on Android 13+.
- Expressive motion: spring presses, a morphing selection control, spring page
  transitions and a morphing activity indicator — all respecting the system
  "remove animations" setting.
- Inter and JetBrains Mono bundled in-tree: no runtime font downloads.

### Updates
- **Check for updates** in the app (tap the version at the bottom of the Home
  screen) queries GitHub Releases. It is always manual: nothing is sent anywhere
  until you ask.

### Notes
- `INTERNET` is used only by that manual update check; see `NOTICE.md`.
- The test signing key is committed on purpose so that updates install over
  previous releases; it is not suitable for store publishing.
