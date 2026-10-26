// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Anuluj';

  @override
  String get commonDone => 'Gotowe';

  @override
  String get commonSave => 'Zapisz';

  @override
  String get commonClose => 'Zamknij';

  @override
  String get commonRevert => 'Przywróć';

  @override
  String get commonReset => 'Zresetuj';

  @override
  String get commonLearnMore => 'Dowiedz się więcej';

  @override
  String get commonBack => 'Wstecz';

  @override
  String get commonContinue => 'Dalej';

  @override
  String get commonApply => 'Zastosuj';

  @override
  String get commonGrant => 'Przyznaj';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Niepowodzenie';

  @override
  String get commonEnabled => 'Włączone';

  @override
  String get commonDisabled => 'Wyłączone';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · sprawdź dostępność aktualizacji';
  }

  @override
  String get homeHeroTitle => 'Dopasuj ekran do dowolnego monitora';

  @override
  String get homeStatusPermanentAccessActive => 'Stały dostęp aktywny';

  @override
  String get homeStatusPrivilegedAccessReady => 'Dostęp uprzywilejowany gotowy';

  @override
  String get homeStatusSetupRequired => 'Wymagana konfiguracja';

  @override
  String get homeApplyTestProfile => 'Zastosuj profil testowy';

  @override
  String get homeApplyFailed =>
      'Nie udało się zastosować. Sprawdź uprawnienia dostępu.';

  @override
  String get homeResetDisplayToNative =>
      'Przywróć ekran do wartości domyślnych telefonu';

  @override
  String get homeSectionQuickSettings => 'Szybkie ustawienia';

  @override
  String get homeSectionConfigure => 'Konfiguracja';

  @override
  String get homeNavDisplayTitle => 'Ekran';

  @override
  String get homeNavDisplaySubtitle =>
      'Rozdzielczość, skalowanie, wygląd i bezpieczny tryb launchera';

  @override
  String get homeNavAccessTitle => 'Dostęp i uprawnienia';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, stały dostęp i uprawnienia specjalne';

  @override
  String get homeForceLandscapeTitle =>
      'Wymuś orientację poziomą (blokada klonowania)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Wymusza orientację poziomą w aplikacjach zablokowanych w pionie (w tym w launcherze HyperOS). Aktywowane po dotknięciu Zastosuj profil testowy.';

  @override
  String get homeAutoApplyTitle =>
      'Stosuj automatycznie po podłączeniu monitora';

  @override
  String get homeAutoApplyWatching =>
      'Wyszukiwanie zewnętrznych ekranów w tle.';

  @override
  String get homeAutoApplyDescription =>
      'Automatycznie stosuj profil po podłączeniu zewnętrznego ekranu.';

  @override
  String get homePermissionsRequiredDialogTitle => 'Wymagane uprawnienia';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Wymuszenie orientacji poziomej wymaga przyznania obu uprawnień specjalnych:';

  @override
  String get homePermissionDisplayOverApps =>
      '• Wyświetlanie nad innymi aplikacjami';

  @override
  String get homePermissionModifySettings =>
      '• Modyfikowanie ustawień systemowych';

  @override
  String get homeGrantOverlay => 'Zezwól na nakładkę';

  @override
  String get homeGrantSettings => 'Zezwól na ustawienia';

  @override
  String get homeVersionCheckForUpdates =>
      'Sprawdź aktualizacje · Licencja MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Dostępna aktualizacja $version';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Profil testowy aktywny — przywrócenie za $seconds s';
  }

  @override
  String get homeKeepSettings => 'Zachowaj ustawienia';

  @override
  String get homeRevertNow => 'Przywróć teraz';

  @override
  String get homeStatusConnected => 'Podłączono ekran zewnętrzny';

  @override
  String get homeStatusNotDetected => 'Nie wykryto ekranu zewnętrznego';

  @override
  String get homeStatusDisconnected => 'Rozłączono';

  @override
  String get homeWatcherActive => 'Monitorowanie ekranu aktywne';

  @override
  String get homeWatcherStopped => 'Monitorowanie ekranu zatrzymane';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Automatycznie zastosuj profil po połączeniu';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height przy $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Profil testowy (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Automatyczne przywrócenie za $seconds s bez potwierdzenia';
  }

  @override
  String get homeScreenOffHint =>
      'Wyłącz ekran (przycisk zasilania), aby natychmiast anulować i przywrócić';

  @override
  String get homeOrientationLockActiveSummary =>
      'Blokada orientacji poziomej aktywna. Ekran główny i ostatnie aplikacje pozostaną w poziomie, dopóki funkcja jest włączona.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Wymuszenie orientacji poziomej wymaga uprawnień \"Wyświetlanie nad innymi aplikacjami\" i \"Modyfikowanie ustawień systemowych\" dla MoniTune. Przyznaj je i spróbuj ponownie.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Nie udało się zastosować blokady orientacji poziomej.';

  @override
  String get displayTitle => 'Ekran';

  @override
  String get displaySectionTargetResolution => 'Rozdzielczość docelowa';

  @override
  String get displaySectionDesktopUiScaling => 'Skalowanie interfejsu pulpitu';

  @override
  String get displaySectionBehaviour => 'Zachowanie';

  @override
  String get displaySectionAppearance => 'Wygląd';

  @override
  String get displaySectionLanguage => 'Język';

  @override
  String get displaySectionPresets => 'Predefiniowane ustawienia ekranu';

  @override
  String get displaySectionCustomResolution => 'Niestandardowa rozdzielczość';

  @override
  String get displaySectionUiScaling => 'Skalowanie interfejsu';

  @override
  String get displaySectionLauncherOrientation => 'Launcher i orientacja';

  @override
  String get displayDiagResolution => 'Rozdzielczość';

  @override
  String get displayDiagDensity => 'Zagęszczenie pikseli';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Obrót';

  @override
  String get displayDiagExternalDisplay => 'Ekran zewnętrzny';

  @override
  String get displayDiagNoneConnected => 'Brak połączenia';

  @override
  String get displayDiagCustomProfile => 'Profil niestandardowy';

  @override
  String get displayDiagActive => 'Aktywny';

  @override
  String get displayDiagNotApplied => 'Niezastosowany';

  @override
  String get displayRotationLandscape90 => 'Poziomo (90°)';

  @override
  String get displayRotationPortrait180 => 'Pionowo odwrócone (180°)';

  @override
  String get displayRotationLandscape270 => 'Poziomo odwrócone (270°)';

  @override
  String get displayRotationPortrait0 => 'Pionowo standardowo (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'Ultrawide 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'Ultrawide (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'Ultrawide (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'Domyślny ekran telefonu';

  @override
  String get displayPresetNativeShort => 'Natywna';

  @override
  String get displayPresetCustom => 'Niestandardowa rozdzielczość…';

  @override
  String get displayPresetCustomShort => 'Własna';

  @override
  String get displayWidthPx => 'Szerokość (px)';

  @override
  String get displayHeightPx => 'Wysokość (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Obszar renderowania: $width × $height pikseli';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Współczynnik skalowania $scale%';
  }

  @override
  String displayScalePercent(int scale) {
    return '$scale%';
  }

  @override
  String displayDpiValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String displayScaleDpiIndicator(int scale, int dpi) {
    return '$scale% ($dpi DPI)';
  }

  @override
  String get displayScaleNativeHint =>
      '100% zapewnia natywne zagęszczenie interfejsu PC bez powiększania widżetów telefonu.';

  @override
  String get displayKeepUiDensityTitle =>
      'Zachowaj zagęszczenie UI Androida (ochrona launchera)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Stosuje rozdzielczość bez modyfikacji zagęszczenia Androida, dzięki czemu ikony na pulpicie MIUI/HyperOS nie zostaną poprzesuwane.';

  @override
  String get displayLauncherSafeMode => 'Bezpieczny tryb launchera';

  @override
  String get displayLauncherSafeModeDesc =>
      'Zachowuje nienaruszony układ siatki ikon launchera MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Wymuś orientację poziomą';

  @override
  String get displayForceLandscapeDesc =>
      'Zapobiega powracaniu launchera do orientacji pionowej';

  @override
  String get displayMiuiDetectedTitle => 'Wykryto launcher HyperOS / MIUI';

  @override
  String get displayMiuiDetectedMessage =>
      'Zmiana zagęszczenia Androida może zaburzyć układ ikon na ekranie głównym i rozrzucić aplikacje na inne strony. Włącz powyższą opcję \"Zachowaj zagęszczenie UI Androida\", aby temu zapobiec — rozdzielczość pulpitu oraz klonowanie obrazu pozostaną nienaruszone.';

  @override
  String get displayMiuiDetectedTip =>
      'Wskazówka: włącz również w Ustawienia → Ekran główny → \"Zablokuj układ ekranu głównego\".';

  @override
  String get displayForceLandscapeTitle => 'Wymuś orientację poziomą';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Włączone — stosowane po dotknięciu Zastosuj profil testowy (Ekran główny).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Możesz to przełączyć na ekranie głównym. Wymaga obu uprawnień orientacji.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Automatycznie resetuj rozdzielczość przy wyjściu';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Przywraca natywną rozdzielczość telefonu po zakończeniu pracy.';

  @override
  String get displayMaterialYouTitle => 'Kolory Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Dopasowanie do palety tapety';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Używanie wybranego akcentu';

  @override
  String get displayUseWallpaperTitle => 'Użyj kolorów tapety';

  @override
  String get displayUseWallpaperChecking =>
      'Sprawdzanie obsługi w Twojej wersji Androida…';

  @override
  String get displayUseWallpaperSupported =>
      'Stosuje ekspresyjną paletę Material 3 wygenerowaną z Twojej tapety.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Wymaga systemu Android 12 lub nowszego. Wybierz akcent poniżej.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Kolory tapety wymagają Androida 12 lub nowszego.';

  @override
  String get displayAccent => 'Akcent';

  @override
  String get displayAccentColorSemantics => 'Kolor akcentu';

  @override
  String get displayPalette => 'Paleta';

  @override
  String get displayPaletteVibrant => 'Wyrazista';

  @override
  String get displayPaletteFidelity => 'Wierna';

  @override
  String get displayPaletteExpressive => 'Ekspresyjna';

  @override
  String get displayPaletteTonalSpot => 'Punkt tonalny';

  @override
  String get displayPaletteNeutral => 'Neutralna';

  @override
  String get displayPaletteContent => 'Treść';

  @override
  String get displayPaletteDescription =>
      'Wyrazista zachowuje nasycenie akcentu, Wierna precyzyjnie odwzorowuje barwę, a Ekspresyjna pozwala systemowi Material 3 miksować odcienie dla unikalnego efektu.';

  @override
  String get displayContrast => 'Kontrast';

  @override
  String get displayContrastBoost => 'Zwiększenie kontrastu';

  @override
  String get displayContrastBoosted => 'Zwiększony';

  @override
  String get displayContrastStandard => 'Standardowy';

  @override
  String get displayContrastDescription =>
      'Zwiększony poprawia czytelność tekstu i elementów interfejsu — przydatne przy jasnych tapetach lub na dużym monitorze z dalszej odległości.';

  @override
  String get displayLanguage => 'Język';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Domyślny systemowy ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Domyślny systemowy';

  @override
  String get accessTitle => 'Dostęp i uprawnienia';

  @override
  String get accessSectionPrivileged => 'Dostęp uprzywilejowany';

  @override
  String get accessSectionSpecial => 'Uprawnienia specjalne';

  @override
  String get accessSectionBackground => 'Działanie w tle';

  @override
  String get accessForceLandscapeHint =>
      'Wymuszenie orientacji poziomej wymaga obu tych uprawnień.';

  @override
  String get accessPermDisplayOverApps => 'Wyświetlanie nad innymi aplikacjami';

  @override
  String get accessPermModifySettings => 'Modyfikowanie ustawień systemowych';

  @override
  String get accessPermBatteryOptimization =>
      'Wyłączenie z optymalizacji baterii';

  @override
  String get accessPermNotifications => 'Powiadomienia (usługa autostosowania)';

  @override
  String get accessPermanentTitle => 'Stały dostęp aktywny';

  @override
  String get accessPermanentSubtitle => 'Działa bez Shizuku, ADB i Wi-Fi.';

  @override
  String get accessShizukuActiveTitle =>
      'Dostęp uprzywilejowany Shizuku aktywny';

  @override
  String get accessShizukuActiveSubtitle =>
      'Przyznaj stały dostęp raz, aby później uruchamiać aplikację bez Shizuku.';

  @override
  String get accessRootActiveTitle => 'Dostęp Root (su) dostępny';

  @override
  String get accessRootActiveSubtitle =>
      'Zmiany parametrów ekranu będą wykonywane przez root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Wykryto Shizuku — wymagane uprawnienie';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autoryzuj raz, a następnie przyznaj stały dostęp.';

  @override
  String get accessNoAccessTitle => 'Brak dostępu uprzywilejowanego';

  @override
  String get accessNoAccessSubtitle =>
      'Uruchom Shizuku przez debugowanie bezprzewodowe lub użyj root, aby włączyć modyfikacje.';

  @override
  String get accessAuthorizeShizuku => 'Autoryzuj przez Shizuku';

  @override
  String get accessShizukuRequested => 'Wysłano żądanie uprawnień Shizuku.';

  @override
  String get accessGrantPermanent =>
      'Przyznaj stały dostęp (bez konieczności używania Shizuku później)';

  @override
  String get accessPermanentGranted =>
      'Pomyślnie przyznano stały dostęp do ustawień ekranu!';

  @override
  String get accessPermanentFailed =>
      'Nie udało się przyznać uprawnienia. Czy Shizuku działa i zostało zautoryzowane?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Zapisywanie ustawień bezpiecznych (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Usługa Shizuku';

  @override
  String get accessPrivilegeRoot => 'Uprawnienia Root';

  @override
  String get accessPrivilegeOverlay => 'Wyświetlanie nad innymi aplikacjami';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modyfikowanie ustawień systemowych';

  @override
  String get accessPrivilegeNotifications => 'Powiadomienia';

  @override
  String get accessPrivilegeBatteryOptimization => 'Optymalizacja baterii';

  @override
  String get accessStatusGranted => 'Przyznano';

  @override
  String get accessStatusMissing => 'Brak';

  @override
  String get accessStatusNotRunning => 'Nie działa';

  @override
  String get accessStatusRequired => 'Wymagane';

  @override
  String get accessAdbInstruction =>
      'Jeśli Shizuku jest niedostępne, wykonaj polecenie ADB z komputera.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Pomiń';

  @override
  String get onboardingBack => 'Wstecz';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get onboardingGetStarted => 'Rozpocznij';

  @override
  String get onboardingWelcomeTitle => 'Witaj w MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Dostosuj ekran swojego telefonu z Androidem do każdego zewnętrznego monitora. Ustaw pożądaną rozdzielczość i skalę, zachowaj porządek na pulpicie i wymuś panoramiczną orientację poziomą — wszystko w jednej lekkiej aplikacji.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Profile rozdzielczości i skalowania interfejsu';

  @override
  String get onboardingWelcomeBullet2 =>
      'Bezpieczny tryb dla launcherów MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Kolorystyka zharmonizowana z Twoją tapetą';

  @override
  String get onboardingProblemTitle => 'Ograniczenia systemu Android';

  @override
  String get onboardingProblemBody =>
      'Podczas klonowania ekranu telefonu na monitor Android automatycznie dobiera rozdzielczość, zagęszczenie i obrót — a zwykłe aplikacje nie mają prawa ich zmieniać.';

  @override
  String get onboardingProblemBullet1 =>
      'Zmiana zagęszczenia na urządzeniach Xiaomi MIUI/HyperOS może rozrzucić ikony pulpitu na różne strony.';

  @override
  String get onboardingProblemBullet2 =>
      'Brak wbudowanej opcji usunięcia czarnych pasów lub wybrania formatu panoramicznego.';

  @override
  String get onboardingWhyTitle => 'Dlaczego Shizuku lub Root?';

  @override
  String get onboardingWhyBody =>
      'Operacje wykonywane przez MoniTune wymagają uprawnienia WRITE_SECURE_SETTINGS, które Android przydziela tylko aplikacjom uprzywilejowanym.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku wykonuje polecenia z uprawnieniami nadanymi przez bezprzewodowe debugowanie — bez konieczności rootowania.';

  @override
  String get onboardingWhyBullet2 =>
      'Jeśli urządzenie jest już zrootowane, MoniTune może skorzystać bezpośrednio z uprawnień root.';

  @override
  String get onboardingWhyBullet3 =>
      'Pełna przejrzystość: MoniTune korzysta z tego dostępu wyłącznie do zmiany rozmiaru ekranu, zagęszczenia pikseli i rotacji.';

  @override
  String get onboardingPathsTitle => 'Wybierz metodę';

  @override
  String get onboardingPathsBody =>
      'Obie ścieżki odblokowują dokładnie te same możliwości.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (bez root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Zalecane dla większości telefonów. Wymaga jednorazowej konfiguracji przez bezprzewodowe debugowanie.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Jeśli Twoje urządzenie jest już zrootowane, MoniTune wykryje to automatycznie.';

  @override
  String get onboardingShizukuStepsTitle => 'Konfiguracja Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Zainstaluj Shizuku i uruchom je jednokrotnie. MoniTune poprowadzi Cię przez kolejne kroki.';

  @override
  String get onboardingShizukuStep1 =>
      'Zainstaluj Shizuku z oficjalnej strony lub z wydań GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Otwórz Shizuku i uruchom usługę przez Bezprzewodowe debugowanie (Android 11+) lub ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Wróć do MoniTune i dotknij \"Autoryzuj przez Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Otwórz przewodnik konfiguracji Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Jednorazowa konfiguracja';

  @override
  String get onboardingOneTimeBody =>
      'Dopóki Shizuku (lub root) jest aktywne, MoniTune może trwale przyznać sobie uprawnienie WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Przyznaj je raz — później MoniTune działa bez Shizuku, bez ADB i bez Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'Uprawnienie pozostaje aktywne także po ponownym uruchomieniu urządzenia.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku musi działać wyłącznie w tym jednym momencie.';

  @override
  String get onboardingSafetyTitle => 'Wbudowane bezpieczeństwo';

  @override
  String get onboardingSafetyBody =>
      'Zmiana wymiarów ekranu może uczynić interfejs chwilowo nieczytelnym, dlatego MoniTune czuwa nad Twoim bezpieczeństwem.';

  @override
  String get onboardingSafetyBullet1 =>
      'Tryb testowy automatycznie cofa zmiany po 15 sekundach, chyba że wybierzesz \"Zachowaj ustawienia\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Wyłączenie ekranu natychmiast przywraca domyślną rozdzielczość telefonu.';

  @override
  String get onboardingSafetyBullet3 =>
      'Bezpieczny tryb launchera pomija zmianę zagęszczenia, zapobiegając przesuwaniu ikon w MIUI/HyperOS.';

  @override
  String get onboardingReadyTitle => 'Wszystko gotowe';

  @override
  String get onboardingReadyBody =>
      'Skonfiguruj dostęp uprzywilejowany oraz dwa specjalne uprawnienia poniżej. Następnie wybierz rozdzielczość i skalę i przetestuj je bezpiecznie z 15-sekundowym odliczaniem przed zatwierdzeniem.';

  @override
  String get onboardingReadyBullet1 =>
      'Automatyczne stosowanie: aplikuje profil natychmiast po podłączeniu monitora i przywraca po odłączeniu.';

  @override
  String get onboardingReadyBullet2 =>
      'Wymuszenie orientacji poziomej działa we wszystkich aplikacjach — w tym w launcherze HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Na Androidzie 12+ MoniTune może pobierać kolory bezpośrednio z Twojej tapety (Material You).';

  @override
  String get onboardingReadyButton => 'Skonfiguruj dostęp teraz';

  @override
  String infoVersion(String version) {
    return 'Wersja $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Wersja $version · kompilacja $buildNumber';
  }

  @override
  String get infoChecking => 'Sprawdzanie…';

  @override
  String get infoCheckingForUpdates => 'Sprawdzanie aktualizacji…';

  @override
  String get infoCheckForUpdates => 'Sprawdź aktualizacje';

  @override
  String get infoDistributedVia => 'Dystrybucja przez GitHub Releases';

  @override
  String get infoMitLicense =>
      'Licencja MIT · kod źródłowy publicznie dostępny';

  @override
  String get infoPrivacyNotice =>
      'Żadne dane nie opuszczają tego urządzenia z wyjątkiem sprawdzania aktualizacji';

  @override
  String get infoOpenReleasePage => 'Otwórz stronę wydania';

  @override
  String get infoOpenReleases => 'Otwórz GitHub Releases';

  @override
  String get infoNoBrowser => 'Brak dostępnej przeglądarki internetowej.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version jest dostępne.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Dostępna nowa wersja $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Korzystasz z najnowszej wersji ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'Aplikacja jest aktualna';

  @override
  String get infoUpdateFailed => 'Sprawdzanie aktualizacji nie powiodło się';

  @override
  String get infoRateLimit =>
      'GitHub tymczasowo ogranicza liczbę zapytań z tej sieci. Spróbuj ponownie za kilka minut.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub zwrócił kod błędu $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Nieoczekiwana odpowiedź od GitHub.';

  @override
  String get infoNoRelease => 'GitHub nie zwrócił informacji o wydaniu.';

  @override
  String get infoTimeout => 'Przekroczono limit czasu połączenia z GitHub.';

  @override
  String get infoNoNetwork => 'Brak połączenia sieciowego.';

  @override
  String get infoGenericError =>
      'Nie udało się sprawdzić dostępności aktualizacji.';

  @override
  String get safetyEmergencyRevertHint =>
      'Wyłącz ekran (przycisk zasilania), aby natychmiast anulować i przywrócić';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Automatyczne przywrócenie za $seconds s bez potwierdzenia';
  }
}
