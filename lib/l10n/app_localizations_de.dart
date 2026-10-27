// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonDone => 'Fertig';

  @override
  String get commonSave => 'Speichern';

  @override
  String get commonClose => 'Schließen';

  @override
  String get commonRevert => 'Zurücksetzen';

  @override
  String get commonReset => 'Zurücksetzen';

  @override
  String get commonLearnMore => 'Mehr erfahren';

  @override
  String get commonBack => 'Zurück';

  @override
  String get commonContinue => 'Weiter';

  @override
  String get commonApply => 'Anwenden';

  @override
  String get commonGrant => 'Gewähren';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Fehlgeschlagen';

  @override
  String get commonEnabled => 'Aktiviert';

  @override
  String get commonDisabled => 'Deaktiviert';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · nach Updates suchen';
  }

  @override
  String get homeHeroTitle => 'Passe dein Display an jeden Monitor an';

  @override
  String get homeStatusPermanentAccessActive => 'Dauerhafter Zugriff aktiv';

  @override
  String get homeStatusPrivilegedAccessReady => 'Privilegierter Zugriff bereit';

  @override
  String get homeStatusSetupRequired => 'Einrichtung erforderlich';

  @override
  String get homeApplyTestProfile => 'Testprofil anwenden';

  @override
  String get homeApplyFailed =>
      'Anwenden fehlgeschlagen. Überprüfe deinen privilegierten Zugriff.';

  @override
  String get homeResetDisplayToNative =>
      'Display auf Telefonstandard zurücksetzen';

  @override
  String get homeSectionQuickSettings => 'Schnelleinstellungen';

  @override
  String get homeSectionConfigure => 'Konfigurieren';

  @override
  String get homeNavDisplayTitle => 'Display';

  @override
  String get homeNavDisplaySubtitle =>
      'Auflösung, Skalierung, Aussehen und Launcher-Schutzmodus';

  @override
  String get homeNavAccessTitle => 'Zugriff & Berechtigungen';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, dauerhafter Zugriff und Sonderberechtigungen';

  @override
  String get homeForceLandscapeTitle =>
      'Querformat erzwingen (Spiegelungssperre)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Erzwingt das Querformat bei Apps, die im Hochformat feststecken (einschließlich des HyperOS-Launchers). Wird wirksam beim Tippen auf Testprofil anwenden.';

  @override
  String get homeAutoApplyTitle =>
      'Automatisch anwenden, wenn Monitor verbunden wird';

  @override
  String get homeAutoApplyWatching =>
      'Sucht im Hintergrund nach externen Displays.';

  @override
  String get homeAutoApplyDescription =>
      'Wendet dein Profil automatisch an, sobald ein externes Display verbunden ist.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Telefonbildschirm abdunkeln';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Dunkelt den Bildschirm beim Verbinden auf das Minimum ab';

  @override
  String get homePermissionsRequiredDialogTitle =>
      'Berechtigungen erforderlich';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Querformat erzwingen kann erst aktiviert werden, wenn beide Sonderberechtigungen gewährt wurden:';

  @override
  String get homePermissionDisplayOverApps => '• Über anderen Apps anzeigen';

  @override
  String get homePermissionModifySettings => '• Systemeinstellungen ändern';

  @override
  String get homeGrantOverlay => 'Overlay gewähren';

  @override
  String get homeGrantSettings => 'Einstellungen gewähren';

  @override
  String get homeVersionCheckForUpdates => 'Nach Updates suchen · MIT-Lizenz';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Update $version verfügbar';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Testprofil aktiv — Zurücksetzung in $seconds s';
  }

  @override
  String get homeKeepSettings => 'Einstellungen behalten';

  @override
  String get homeRevertNow => 'Jetzt zurücksetzen';

  @override
  String get homeStatusConnected => 'Externes Display verbunden';

  @override
  String get homeStatusNotDetected => 'Kein externes Display erkannt';

  @override
  String get homeStatusDisconnected => 'Getrennt';

  @override
  String get homeWatcherActive => 'Display-Überwachung aktiv';

  @override
  String get homeWatcherStopped => 'Display-Überwachung gestoppt';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Profil bei Verbindung automatisch anwenden';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height bei $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Testprofil (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Automatische Rücksetzung in $seconds s, falls nicht bestätigt';
  }

  @override
  String get homeScreenOffHint =>
      'Bildschirm ausschalten (Ein/Aus-Taste), um sofort abzubrechen & zurückzusetzen';

  @override
  String get homeOrientationLockActiveSummary =>
      'Querformatsperre aktiv. Der Startbildschirm und kürzliche Apps bleiben im Querformat, solange die Sperre an ist.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Querformat erzwingen benötigt die Berechtigungen \"Über anderen Apps anzeigen\" und \"Systemeinstellungen ändern\" für MoniTune. Bitte gewähren und erneut versuchen.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Die Querformatsperre konnte nicht angewendet werden.';

  @override
  String get displayTitle => 'Display';

  @override
  String get displaySectionTargetResolution => 'Zielauflösung';

  @override
  String get displaySectionDesktopUiScaling => 'Desktop-UI-Skalierung';

  @override
  String get displaySectionBehaviour => 'Verhalten';

  @override
  String get displaySectionAppearance => 'Erscheinungsbild';

  @override
  String get displaySectionLanguage => 'Sprache';

  @override
  String get displaySectionPresets => 'Display-Voreinstellungen';

  @override
  String get displaySectionCustomResolution => 'Benutzerdefinierte Auflösung';

  @override
  String get displaySectionUiScaling => 'UI-Skalierung';

  @override
  String get displaySectionLauncherOrientation => 'Launcher & Ausrichtung';

  @override
  String get displayDiagResolution => 'Auflösung';

  @override
  String get displayDiagDensity => 'Pixeldichte';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Drehung';

  @override
  String get displayDiagExternalDisplay => 'Externes Display';

  @override
  String get displayDiagNoneConnected => 'Keines verbunden';

  @override
  String get displayDiagCustomProfile => 'Benutzerdefiniertes Profil';

  @override
  String get displayDiagActive => 'Aktiv';

  @override
  String get displayDiagNotApplied => 'Nicht angewendet';

  @override
  String get displayRotationLandscape90 => 'Querformat (90°)';

  @override
  String get displayRotationPortrait180 => 'Hochformat umgekehrt (180°)';

  @override
  String get displayRotationLandscape270 => 'Querformat umgekehrt (270°)';

  @override
  String get displayRotationPortrait0 => 'Hochformat (0°)';

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
  String get displayPresetNative => 'Natives Telefondisplay';

  @override
  String get displayPresetNativeShort => 'Nativ';

  @override
  String get displayPresetCustom => 'Benutzerdefinierte Auflösung…';

  @override
  String get displayPresetCustomShort => 'Benutzerdefiniert';

  @override
  String get displayWidthPx => 'Breite (px)';

  @override
  String get displayHeightPx => 'Höhe (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Ziel-Zeichenbereich: $width × $height Pixel';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% Skalierungsfaktor';
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
      '100% liefert native PC-Dichte ohne Vergrößerung von mobilen Widgets.';

  @override
  String get displayKeepUiDensityTitle =>
      'Android-UI-Dichte beibehalten (Launcher-Schutz)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Wendet die Auflösung an, belässt aber die Android-Dichte unverändert, damit MIUI/HyperOS-Startbildschirmsymbole an ihrem Platz bleiben.';

  @override
  String get displayLauncherSafeMode => 'Launcher-Schutzmodus';

  @override
  String get displayLauncherSafeModeDesc =>
      'Hält das Symbolraster des MIUI/HyperOS-Launchers intakt';

  @override
  String get displayForceLandscape => 'Querformat erzwingen';

  @override
  String get displayForceLandscapeDesc =>
      'Verhindert, dass der Launcher wieder ins Hochformat zurückdreht';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI Launcher erkannt';

  @override
  String get displayMiuiDetectedMessage =>
      'Das Ändern der Android-Dichte kann die Symbole auf deinem Startbildschirm durcheinanderbringen und Apps auf andere Seiten verschieben. Aktiviere oben \"Android-UI-Dichte beibehalten\", um dies zu verhindern — Desktop-Auflösung und Spiegelung bleiben unberührt.';

  @override
  String get displayMiuiDetectedTip =>
      'Tipp: Aktiviere zusätzlich Einstellungen → Startbildschirm → \"Startbildschirmlayout sperren\".';

  @override
  String get displayForceLandscapeTitle => 'Querformat erzwingen';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Aktiviert — wird angewendet, wenn du auf Testprofil anwenden (Start) tippst.';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Auf dem Startbildschirm umschaltbar. Benötigt beide Ausrichtungsberechtigungen.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Auflösung beim Beenden automatisch zurücksetzen';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Stellt die native Auflösung deines Telefons wieder her, wenn du fertig bist.';

  @override
  String get displayMaterialYouTitle => 'Material You-Farben';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Folgt deiner Hintergrund-Farbpalette';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Verwendet deinen gewählten Akzent';

  @override
  String get displayUseWallpaperTitle => 'Hintergrundfarben verwenden';

  @override
  String get displayUseWallpaperChecking =>
      'Prüfe Unterstützung deiner Android-Version…';

  @override
  String get displayUseWallpaperSupported =>
      'Wendet die aus deinem Hintergrund generierte expressive Material 3-Palette an.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Erfordert Android 12 oder neuer. Wähle stattdessen unten einen Akzent.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Hintergrundfarben erfordern Android 12 oder neuer.';

  @override
  String get displayAccent => 'Akzent';

  @override
  String get displayAccentColorSemantics => 'Akzentfarbe';

  @override
  String get displayPalette => 'Palette';

  @override
  String get displayPaletteVibrant => 'Kräftig';

  @override
  String get displayPaletteFidelity => 'Exakt';

  @override
  String get displayPaletteExpressive => 'Ausdrucksstark';

  @override
  String get displayPaletteTonalSpot => 'Tonaler Fokus';

  @override
  String get displayPaletteNeutral => 'Neutral';

  @override
  String get displayPaletteContent => 'Inhalt';

  @override
  String get displayPaletteDescription =>
      'Kräftig hält die Akzentfarbe leuchtend, Exakt passt sie präzise an, und Ausdrucksstark lässt Material 3 Nuancen für ein dynamisches Erscheinungsbild abstimmen.';

  @override
  String get displayContrast => 'Kontrast';

  @override
  String get displayContrastBoost => 'Kontrastverstärkung';

  @override
  String get displayContrastBoosted => 'Verstärkt';

  @override
  String get displayContrastStandard => 'Standard';

  @override
  String get displayContrastDescription =>
      'Verstärkt erhöht den Text- und Oberflächenkontrast — besonders nützlich bei sehr hellen Hintergrundpaletten oder auf großen Monitoren auf Distanz.';

  @override
  String get displayLanguage => 'Sprache';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Systemstandard ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Systemstandard';

  @override
  String get accessTitle => 'Zugriff & Berechtigungen';

  @override
  String get accessSectionPrivileged => 'Privilegierter Zugriff';

  @override
  String get accessSectionSpecial => 'Sonderberechtigungen';

  @override
  String get accessSectionBackground => 'Hintergrund';

  @override
  String get accessForceLandscapeHint =>
      'Querformat erzwingen benötigt beide Berechtigungen.';

  @override
  String get accessPermDisplayOverApps => 'Über anderen Apps anzeigen';

  @override
  String get accessPermModifySettings => 'Systemeinstellungen ändern';

  @override
  String get accessPermBatteryOptimization =>
      'Ausnahme von der Akku-Optimierung';

  @override
  String get accessPermNotifications =>
      'Benachrichtigungen (Auto-Apply-Wächter)';

  @override
  String get accessPermanentTitle => 'Dauerhafter Zugriff aktiv';

  @override
  String get accessPermanentSubtitle =>
      'Funktioniert ohne Shizuku, ADB oder WLAN.';

  @override
  String get accessShizukuActiveTitle => 'Shizuku-Zugriff aktiv';

  @override
  String get accessShizukuActiveSubtitle =>
      'Gewähre einmal dauerhaften Zugriff, um danach ohne Shizuku auszukommen.';

  @override
  String get accessRootActiveTitle => 'Root-Zugriff (su) verfügbar';

  @override
  String get accessRootActiveSubtitle =>
      'Display-Änderungen werden über Root ausgeführt.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku erkannt — Berechtigung erforderlich';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Einmal autorisieren, dann dauerhaften Zugriff gewähren.';

  @override
  String get accessNoAccessTitle => 'Kein privilegierter Zugriff';

  @override
  String get accessNoAccessSubtitle =>
      'Starte Shizuku über WLAN-Debugging oder verwende Root, um Änderungen zu aktivieren.';

  @override
  String get accessAuthorizeShizuku => 'Mit Shizuku autorisieren';

  @override
  String get accessShizukuRequested => 'Shizuku-Berechtigung angefordert.';

  @override
  String get accessGrantPermanent =>
      'Dauerhaften Zugriff gewähren (später ohne Shizuku)';

  @override
  String get accessPermanentGranted =>
      'Dauerhafter Display-Zugriff erfolgreich gewährt!';

  @override
  String get accessPermanentFailed =>
      'Gewährung fehlgeschlagen. Läuft Shizuku und ist es autorisiert?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Sichere Einstellungen schreiben (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku-Dienst';

  @override
  String get accessPrivilegeRoot => 'Root-Berechtigung';

  @override
  String get accessPrivilegeOverlay => 'Über anderen Apps anzeigen';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Systemeinstellungen ändern';

  @override
  String get accessPrivilegeNotifications => 'Benachrichtigungen';

  @override
  String get accessPrivilegeBatteryOptimization => 'Akku-Optimierung';

  @override
  String get accessStatusGranted => 'Gewährt';

  @override
  String get accessStatusMissing => 'Fehlt';

  @override
  String get accessStatusNotRunning => 'Läuft nicht';

  @override
  String get accessStatusRequired => 'Erforderlich';

  @override
  String get accessAdbInstruction =>
      'Führe den ADB-Befehl vom Computer aus, falls Shizuku nicht verfügbar ist.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingBack => 'Zurück';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingGetStarted => 'Loslegen';

  @override
  String get onboardingWelcomeTitle => 'Willkommen bei MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Optimiere dein Android-Display für jeden externen Monitor. Lege die gewünschte Auflösung und Skalierung fest, halte deinen Startbildschirm ordentlich und erzwinge das Widescreen-Querformat — alles in einer schlanken App.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Voreinstellungen für Auflösung und UI-Skalierung';

  @override
  String get onboardingWelcomeBullet2 =>
      'Schutzmodus für MIUI/HyperOS-Launcher';

  @override
  String get onboardingWelcomeBullet3 =>
      'Farben, die sich deinem Hintergrundbild anpassen';

  @override
  String get onboardingProblemTitle => 'Die Einschränkungen von Android';

  @override
  String get onboardingProblemBody =>
      'Wenn du dein Telefon auf einen Monitor spiegelst, legt Android Auflösung, Dichte und Ausrichtung fest — und normale Apps dürfen diese nicht ändern.';

  @override
  String get onboardingProblemBullet1 =>
      'Das Ändern der Dichte auf Xiaomi MIUI/HyperOS kann Startbildschirmsymbole über verschiedene Seiten verstreuen.';

  @override
  String get onboardingProblemBullet2 =>
      'Keine systemeigene Möglichkeit, schwarze Ränder zu entfernen oder ein Breitbildformat zu wählen.';

  @override
  String get onboardingWhyTitle => 'Warum Shizuku oder Root?';

  @override
  String get onboardingWhyBody =>
      'Die von MoniTune durchgeführten Aktionen erfordern die Berechtigung WRITE_SECURE_SETTINGS, die Android nur privilegierten Apps erteilt.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku führt Befehle mit den über WLAN-Debugging erteilten Rechten aus — ganz ohne Root.';

  @override
  String get onboardingWhyBullet2 =>
      'Ist dein Telefon bereits gerootet, kann MoniTune Root direkt nutzen.';

  @override
  String get onboardingWhyBullet3 =>
      'Vollständige Transparenz: MoniTune nutzt diesen Zugriff ausschließlich für Displaygröße, Dichte und Ausrichtung.';

  @override
  String get onboardingPathsTitle => 'Wähle deine Methode';

  @override
  String get onboardingPathsBody =>
      'Beide Wege schalten exakt dieselben Funktionen frei.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (ohne Root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Empfohlen für die meisten Telefone. Erfordert eine einmalige Einrichtung über WLAN-Debugging.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Wenn dein Gerät bereits gerootet ist, erkennt MoniTune dies automatisch.';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku einrichten';

  @override
  String get onboardingShizukuStepsBody =>
      'Installiere Shizuku und starte es einmal. MoniTune führt dich durch die nächsten Schritte.';

  @override
  String get onboardingShizukuStep1 =>
      'Installiere Shizuku von der offiziellen Website oder GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Öffne Shizuku und starte es über WLAN-Debugging (Android 11+) oder ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Kehre zu MoniTune zurück und tippe auf \"Mit Shizuku autorisieren\".';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku-Anleitung öffnen';

  @override
  String get onboardingOneTimeTitle => 'Einmalige Einrichtung';

  @override
  String get onboardingOneTimeBody =>
      'Solange Shizuku (oder Root) verfügbar ist, kann sich MoniTune dauerhaft die Berechtigung WRITE_SECURE_SETTINGS erteilen.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Einmalig gewähren — danach funktioniert MoniTune ohne Shizuku, ohne ADB und ohne WLAN.';

  @override
  String get onboardingOneTimeBullet2 =>
      'Die Berechtigung bleibt auch nach einem Neustart erhalten.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku muss nur für diesen einen Moment aktiv sein.';

  @override
  String get onboardingSafetyTitle => 'Integrierter Schutz';

  @override
  String get onboardingSafetyBody =>
      'Das Ändern der Displaygröße kann den Bildschirm unlesbar machen — MoniTune schützt dich davor.';

  @override
  String get onboardingSafetyBullet1 =>
      'Der Testmodus setzt nach 15 Sekunden automatisch zurück, es sei denn, du tippst auf \"Einstellungen behalten\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Ausschalten des Bildschirms stellt sofort die native Auflösung wieder her.';

  @override
  String get onboardingSafetyBullet3 =>
      'Der Launcher-Schutzmodus überspringt Dichteänderungen, damit MIUI/HyperOS-Symbole an Ort und Stelle bleiben.';

  @override
  String get onboardingReadyTitle => 'Alles bereit';

  @override
  String get onboardingReadyBody =>
      'Richte als Nächstes deinen privilegierten Zugriff und die zwei Sonderberechtigungen ein. Wähle dann Auflösung und Skalierung und teste sie mit der 15-Sekunden-Sicherheitsrücksetzung.';

  @override
  String get onboardingReadyBullet1 =>
      'Auto-Apply: Wendet dein Profil an, sobald ein Monitor verbunden wird, und setzt beim Trennen zurück.';

  @override
  String get onboardingReadyBullet2 =>
      'Querformat erzwingen überschreibt die Ausrichtung jeder App — auch des HyperOS-Launchers (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Unter Android 12+ übernimmt MoniTune die Farben deines Hintergrundbilds (Material You).';

  @override
  String get onboardingReadyButton => 'Zugriff jetzt einrichten';

  @override
  String infoVersion(String version) {
    return 'Version $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Version $version · Build $buildNumber';
  }

  @override
  String get infoChecking => 'Wird geprüft…';

  @override
  String get infoCheckingForUpdates => 'Nach Updates suchen…';

  @override
  String get infoCheckForUpdates => 'Nach Updates suchen';

  @override
  String get infoDistributedVia => 'Verteilt über GitHub Releases';

  @override
  String get infoMitLicense => 'MIT-lizenziert · Quellcode verfügbar';

  @override
  String get infoPrivacyNotice =>
      'Keine Daten verlassen dieses Gerät, außer bei der Update-Prüfung';

  @override
  String get infoOpenReleasePage => 'Release-Seite öffnen';

  @override
  String get infoOpenReleases => 'GitHub Releases öffnen';

  @override
  String get infoNoBrowser => 'Kein Webbrowser verfügbar.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version ist verfügbar.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Neue Version $version verfügbar';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Du verwendest die neueste Version ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'App ist aktuell';

  @override
  String get infoUpdateFailed => 'Update-Prüfung fehlgeschlagen';

  @override
  String get infoRateLimit =>
      'GitHub begrenzt aktuell Anfragen aus diesem Netzwerk. Versuche es in ein paar Minuten erneut.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub antwortete mit Statuscode $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Unerwartete Antwort von GitHub.';

  @override
  String get infoNoRelease => 'GitHub meldete keine Version.';

  @override
  String get infoTimeout => 'Zeitüberschreitung bei Verbindung zu GitHub.';

  @override
  String get infoNoNetwork => 'Keine Netzwerkverbindung.';

  @override
  String get infoGenericError => 'Updates konnten nicht geprüft werden.';

  @override
  String get safetyEmergencyRevertHint =>
      'Bildschirm ausschalten (Ein/Aus-Taste), um sofort abzubrechen & zurückzusetzen';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Automatische Rücksetzung in $seconds s, falls nicht bestätigt';
  }
}
