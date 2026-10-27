// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Annuleren';

  @override
  String get commonDone => 'Klaar';

  @override
  String get commonSave => 'Opslaan';

  @override
  String get commonClose => 'Sluiten';

  @override
  String get commonRevert => 'Terugdraaien';

  @override
  String get commonReset => 'Herstellen';

  @override
  String get commonLearnMore => 'Meer informatie';

  @override
  String get commonBack => 'Terug';

  @override
  String get commonContinue => 'Doorgaan';

  @override
  String get commonApply => 'Toepassen';

  @override
  String get commonGrant => 'Toestaan';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Mislukt';

  @override
  String get commonEnabled => 'Ingeschakeld';

  @override
  String get commonDisabled => 'Uitgeschakeld';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · controleren op updates';
  }

  @override
  String get homeHeroTitle => 'Stem je scherm af op elke monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Permanente toegang actief';

  @override
  String get homeStatusPrivilegedAccessReady => 'Speciale rechten gereed';

  @override
  String get homeStatusSetupRequired => 'Configuratie vereist';

  @override
  String get homeApplyTestProfile => 'Testprofiel toepassen';

  @override
  String get homeApplyFailed =>
      'Toepassen mislukt. Controleer je speciale rechten.';

  @override
  String get homeResetDisplayToNative =>
      'Scherm herstellen naar telefoonstandaard';

  @override
  String get homeSectionQuickSettings => 'Snelle instellingen';

  @override
  String get homeSectionConfigure => 'Configureren';

  @override
  String get homeNavDisplayTitle => 'Scherm';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolutie, schaling, weergave en veilige modus voor launcher';

  @override
  String get homeNavAccessTitle => 'Toegang & machtigingen';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, permanente toegang en speciale machtigingen';

  @override
  String get homeForceLandscapeTitle =>
      'Liggend forceren (vergrendeling spiegelen)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Forceert liggende weergave over apps die staand vergrendeld zijn (inclusief HyperOS-launcher). Wordt toegepast bij het aantikken van Testprofiel toepassen.';

  @override
  String get homeAutoApplyTitle =>
      'Automatisch toepassen bij aansluiten monitor';

  @override
  String get homeAutoApplyWatching =>
      'Zoekt op de achtergrond naar externe schermen.';

  @override
  String get homeAutoApplyDescription =>
      'Pas je profiel automatisch toe zodra er een extern scherm wordt aangesloten.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Telefoonscherm dimmen';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Zet schermhelderheid op minimum bij verbinding';

  @override
  String get homePermissionsRequiredDialogTitle => 'Machtigingen vereist';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Liggend forceren kan pas worden ingeschakeld nadat beide speciale machtigingen zijn verleend:';

  @override
  String get homePermissionDisplayOverApps => '• Weergeven over andere apps';

  @override
  String get homePermissionModifySettings => '• Systeeminstellingen wijzigen';

  @override
  String get homeGrantOverlay => 'Overlay toestaan';

  @override
  String get homeGrantSettings => 'Instellingen toestaan';

  @override
  String get homeVersionCheckForUpdates =>
      'Controleren op updates · MIT-licentie';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Update $version beschikbaar';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Testprofiel actief — herstellen over $seconds s';
  }

  @override
  String get homeKeepSettings => 'Instellingen behouden';

  @override
  String get homeRevertNow => 'Nu herstellen';

  @override
  String get homeStatusConnected => 'Extern scherm aangesloten';

  @override
  String get homeStatusNotDetected => 'Geen extern scherm gedetecteerd';

  @override
  String get homeStatusDisconnected => 'Verbinding verbroken';

  @override
  String get homeWatcherActive => 'Schermbewaking actief';

  @override
  String get homeWatcherStopped => 'Schermbewaking gestopt';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Profiel automatisch toepassen bij verbinding';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height op $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Testprofiel (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Wordt automatisch hersteld over $seconds s tenzij bevestigd';
  }

  @override
  String get homeScreenOffHint =>
      'Schakel het scherm uit (aan/uit-knop) om direct te annuleren en te herstellen';

  @override
  String get homeOrientationLockActiveSummary =>
      'Liggende vergrendeling actief. Het startscherm en recente apps blijven in liggende stand zolang dit aanstaat.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Liggend forceren vereist \"Weergeven over andere apps\" en \"Systeeminstellingen wijzigen\" voor MoniTune. Verleen deze en probeer het opnieuw.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Kon liggende vergrendeling niet toepassen.';

  @override
  String get displayTitle => 'Scherm';

  @override
  String get displaySectionTargetResolution => 'Doelresolutie';

  @override
  String get displaySectionDesktopUiScaling => 'Desktop-UI-schaling';

  @override
  String get displaySectionBehaviour => 'Gedrag';

  @override
  String get displaySectionAppearance => 'Uiterlijk';

  @override
  String get displaySectionLanguage => 'Taal';

  @override
  String get displaySectionPresets => 'Schermvoorinstellingen';

  @override
  String get displaySectionCustomResolution => 'Aangepaste resolutie';

  @override
  String get displaySectionUiScaling => 'UI-schaling';

  @override
  String get displaySectionLauncherOrientation => 'Launcher & oriëntatie';

  @override
  String get displayDiagResolution => 'Resolutie';

  @override
  String get displayDiagDensity => 'Dichtheid';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Draaiing';

  @override
  String get displayDiagExternalDisplay => 'Extern scherm';

  @override
  String get displayDiagNoneConnected => 'Geen aangesloten';

  @override
  String get displayDiagCustomProfile => 'Aangepast profiel';

  @override
  String get displayDiagActive => 'Actief';

  @override
  String get displayDiagNotApplied => 'Niet toegepast';

  @override
  String get displayRotationLandscape90 => 'Liggend (90°)';

  @override
  String get displayRotationPortrait180 => 'Staand omgekeerd (180°)';

  @override
  String get displayRotationLandscape270 => 'Liggend omgekeerd (270°)';

  @override
  String get displayRotationPortrait0 => 'Staand (0°)';

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
  String get displayPresetNative => 'Standaard telefoonscherm';

  @override
  String get displayPresetNativeShort => 'Standaard';

  @override
  String get displayPresetCustom => 'Aangepaste resolutie…';

  @override
  String get displayPresetCustomShort => 'Aangepast';

  @override
  String get displayWidthPx => 'Breedte (px)';

  @override
  String get displayHeightPx => 'Hoogte (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Doelgebied: $width × $height pixels';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% Schalingsfactor';
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
      '100% geeft de standaardschermdichtheid van een pc zonder mobiele widgets te vergroten.';

  @override
  String get displayKeepUiDensityTitle =>
      'Android-UI-dichtheid behouden (launcher-veilig)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Past de resolutie aan maar laat de Android-dichtheid ongemoeid, zodat MIUI/HyperOS-startschermiconen netjes op hun plek blijven.';

  @override
  String get displayLauncherSafeMode => 'Veilige modus voor launcher';

  @override
  String get displayLauncherSafeModeDesc =>
      'Houdt het pictogrammenraster van de MIUI/HyperOS-launcher intact';

  @override
  String get displayForceLandscape => 'Liggend forceren';

  @override
  String get displayForceLandscapeDesc =>
      'Voorkomt dat de launcher weer terugdraait naar de staande stand';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI-launcher gedetecteerd';

  @override
  String get displayMiuiDetectedMessage =>
      'Het wijzigen van de Android-dichtheid kan iconen op je startscherm verplaatsen en apps verspreiden over andere pagina\'s. Schakel hierboven \"Android-UI-dichtheid behouden\" in om dit te voorkomen — desktopresolutie en spiegelen blijven onaangetast.';

  @override
  String get displayMiuiDetectedTip =>
      'Tip: schakel ook Instellingen → Startscherm → \"Indeling van startscherm vergrendelen\" in.';

  @override
  String get displayForceLandscapeTitle => 'Liggend forceren';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Ingeschakeld — wordt toegepast wanneer je op Testprofiel toepassen (Start) tikt.';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Schakel dit in vanaf het startscherm. Vereist beide oriëntatiemachtigingen.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Resolutie automatisch herstellen bij afsluiten';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Zet je telefoon terug op de standaardresolutie zodra je klaar bent.';

  @override
  String get displayMaterialYouTitle => 'Material You-kleuren';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Volgt het kleurenpalet van je achtergrond';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Gebruikt het gekozen kleuraccent';

  @override
  String get displayUseWallpaperTitle => 'Achtergrondkleuren gebruiken';

  @override
  String get displayUseWallpaperChecking =>
      'Controleren op ondersteuning van je Android-versie…';

  @override
  String get displayUseWallpaperSupported =>
      'Past het expressieve Material 3-palet toe dat is afgeleid van je achtergrond.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Vereist Android 12 of nieuwer. Kies hieronder een accentkleur.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Achtergrondkleuren vereisen Android 12 of nieuwer.';

  @override
  String get displayAccent => 'Accent';

  @override
  String get displayAccentColorSemantics => 'Accentkleur';

  @override
  String get displayPalette => 'Palet';

  @override
  String get displayPaletteVibrant => 'Levendig';

  @override
  String get displayPaletteFidelity => 'Nauwkeurig';

  @override
  String get displayPaletteExpressive => 'Expressief';

  @override
  String get displayPaletteTonalSpot => 'Tonaal punt';

  @override
  String get displayPaletteNeutral => 'Neutraal';

  @override
  String get displayPaletteContent => 'Inhoud';

  @override
  String get displayPaletteDescription =>
      'Levendig houdt het accent helder, Nauwkeurig sluit er dicht op aan en Expressief laat Material 3 tinten combineren voor een dynamische look.';

  @override
  String get displayContrast => 'Contrast';

  @override
  String get displayContrastBoost => 'Extra contrast';

  @override
  String get displayContrastBoosted => 'Verhoogd';

  @override
  String get displayContrastStandard => 'Standaard';

  @override
  String get displayContrastDescription =>
      'Verhoogd verbetert de leesbaarheid van tekst en oppervlakken — handig bij zeer lichte achtergronden of op een grote monitor op afstand.';

  @override
  String get displayLanguage => 'Taal';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Systeemstandaard ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Systeemstandaard';

  @override
  String get accessTitle => 'Toegang & machtigingen';

  @override
  String get accessSectionPrivileged => 'Toegang met speciale rechten';

  @override
  String get accessSectionSpecial => 'Speciale machtigingen';

  @override
  String get accessSectionBackground => 'Achtergrond';

  @override
  String get accessForceLandscapeHint =>
      'Liggend forceren vereist beide machtigingen.';

  @override
  String get accessPermDisplayOverApps => 'Weergeven over andere apps';

  @override
  String get accessPermModifySettings => 'Systeeminstellingen wijzigen';

  @override
  String get accessPermBatteryOptimization =>
      'Uitzondering op batterijoptimalisatie';

  @override
  String get accessPermNotifications =>
      'Meldingen (automatisch toepassen-bewaking)';

  @override
  String get accessPermanentTitle => 'Permanente toegang actief';

  @override
  String get accessPermanentSubtitle => 'Werkt zonder Shizuku, ADB of wifi.';

  @override
  String get accessShizukuActiveTitle => 'Shizuku-toegang actief';

  @override
  String get accessShizukuActiveSubtitle =>
      'Verleen eenmalig permanente toegang om daarna zonder Shizuku te kunnen werken.';

  @override
  String get accessRootActiveTitle => 'Root-toegang (su) beschikbaar';

  @override
  String get accessRootActiveSubtitle =>
      'Schermwijzigingen worden uitgevoerd via root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku gedetecteerd — machtiging vereist';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autoriseer eenmalig en verleen vervolgens permanente toegang.';

  @override
  String get accessNoAccessTitle => 'Geen speciale rechten';

  @override
  String get accessNoAccessSubtitle =>
      'Start Shizuku via draadloos debuggen of gebruik root om aanpassingen mogelijk te maken.';

  @override
  String get accessAuthorizeShizuku => 'Autoriseren via Shizuku';

  @override
  String get accessShizukuRequested => 'Shizuku-machtiging aangevraagd.';

  @override
  String get accessGrantPermanent =>
      'Permanente toegang verlenen (daarna zonder Shizuku)';

  @override
  String get accessPermanentGranted =>
      'Permanente schermtoegang succesvol verleend!';

  @override
  String get accessPermanentFailed =>
      'Verlenen mislukt. Is Shizuku actief en geautoriseerd?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Beveiligde instellingen schrijven (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku-dienst';

  @override
  String get accessPrivilegeRoot => 'Root-toegang';

  @override
  String get accessPrivilegeOverlay => 'Weergeven over andere apps';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Systeeminstellingen wijzigen';

  @override
  String get accessPrivilegeNotifications => 'Meldingen';

  @override
  String get accessPrivilegeBatteryOptimization => 'Batterijoptimalisatie';

  @override
  String get accessStatusGranted => 'Verleend';

  @override
  String get accessStatusMissing => 'Ontbreekt';

  @override
  String get accessStatusNotRunning => 'Niet actief';

  @override
  String get accessStatusRequired => 'Vereist';

  @override
  String get accessAdbInstruction =>
      'Voer de ADB-opdracht uit vanaf een computer als Shizuku niet beschikbaar is.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Overslaan';

  @override
  String get onboardingBack => 'Terug';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get onboardingGetStarted => 'Aan de slag';

  @override
  String get onboardingWelcomeTitle => 'Welkom bij MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Optimaliseer je Android-schermweergave voor elke externe monitor. Stel de gewenste resolutie en schaling in, houd je startscherm geordend en forceer liggende breedbeeldweergave — allemaal vanuit één compacte app.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Voorinstellingen voor resolutie en UI-schaling';

  @override
  String get onboardingWelcomeBullet2 =>
      'Veilige modus voor MIUI/HyperOS-launchers';

  @override
  String get onboardingWelcomeBullet3 =>
      'Kleuren die passen bij je achtergrond';

  @override
  String get onboardingProblemTitle => 'De beperkingen van Android';

  @override
  String get onboardingProblemBody =>
      'Wanneer je het scherm van je telefoon spiegelt naar een monitor, kiest Android zelf de resolutie, dichtheid en rotatie — en normale apps kunnen dit niet aanpassen.';

  @override
  String get onboardingProblemBullet1 =>
      'Het wijzigen van de schermdichtheid op Xiaomi MIUI/HyperOS kan startschermiconen over meerdere pagina\'s verspreiden.';

  @override
  String get onboardingProblemBullet2 =>
      'Geen ingebouwde optie om zwarte balken te verwijderen of een breedbeeldformaat te kiezen.';

  @override
  String get onboardingWhyTitle => 'Waarom Shizuku of Root?';

  @override
  String get onboardingWhyBody =>
      'De aanpassingen die MoniTune uitvoert vereisen de machtiging WRITE_SECURE_SETTINGS, die Android alleen toekent aan bevoorrechte apps.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku voert opdrachten uit met de rechten verleend via draadloos debuggen — geen root nodig.';

  @override
  String get onboardingWhyBullet2 =>
      'Als je telefoon al geroot is, kan MoniTune direct gebruikmaken van root-toegang.';

  @override
  String get onboardingWhyBullet3 =>
      'Volledig transparant: MoniTune gebruikt deze toegang uitsluitend om schermgrootte, dichtheid en rotatie aan te passen.';

  @override
  String get onboardingPathsTitle => 'Kies je installatiemethode';

  @override
  String get onboardingPathsBody =>
      'Beide methoden ontgrendelen exact dezelfde functies.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (geen root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Aanbevolen voor de meeste telefoons. Vereist eenmalige configuratie via draadloos debuggen.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Als je toestel al geroot is, herkent MoniTune dit automatisch.';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku instellen';

  @override
  String get onboardingShizukuStepsBody =>
      'Installeer Shizuku en start het eenmalig op. MoniTune begeleidt je bij de verdere stappen.';

  @override
  String get onboardingShizukuStep1 =>
      'Installeer Shizuku vanaf de officiële website of via GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Open Shizuku en start het via Draadloos debuggen (Android 11+) of ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Keer terug naar MoniTune en tik op \"Autoriseren via Shizuku\".';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku-handleiding openen';

  @override
  String get onboardingOneTimeTitle => 'Eenmalige configuratie';

  @override
  String get onboardingOneTimeBody =>
      'Zolang Shizuku (of root) beschikbaar is, kan MoniTune zichzelf permanent de machtiging WRITE_SECURE_SETTINGS toekennen.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Eén keer toestaan — daarna werkt MoniTune zonder Shizuku, zonder ADB en zonder wifi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'De machtiging blijft behouden na het opnieuw opstarten van je telefoon.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku hoeft alleen op dat specifieke moment actief te zijn.';

  @override
  String get onboardingSafetyTitle => 'Ingebouwde veiligheid';

  @override
  String get onboardingSafetyBody =>
      'Het aanpassen van schermformaten kan een scherm tijdelijk onleesbaar maken; daarom bewaakt MoniTune je instellingen.';

  @override
  String get onboardingSafetyBullet1 =>
      'De testmodus herstelt automatisch na 15 seconden tenzij je op \"Instellingen behouden\" tikt.';

  @override
  String get onboardingSafetyBullet2 =>
      'Het scherm uitschakelen herstelt de standaardresolutie van je telefoon onmiddellijk.';

  @override
  String get onboardingSafetyBullet3 =>
      'De veilige modus slaat dichtheidswijzigingen over zodat MIUI/HyperOS-pictogrammen blijven staan.';

  @override
  String get onboardingReadyTitle => 'Je bent klaar voor gebruik';

  @override
  String get onboardingReadyBody =>
      'Configureer hierna je speciale rechten en de twee speciale machtigingen. Kies daarna je gewenste resolutie en schaling en test deze veilig met de 15-seconden herstelbeveiliging.';

  @override
  String get onboardingReadyBullet1 =>
      'Automatisch toepassen: past je profiel toe zodra een monitor wordt aangesloten en herstelt bij loskoppelen.';

  @override
  String get onboardingReadyBullet2 =>
      'Liggend forceren overschrijft de rotatie van elke app — inclusief de HyperOS-launcher (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Op Android 12+ kan MoniTune kleuren afstemmen op je achtergrond (Material You).';

  @override
  String get onboardingReadyButton => 'Toegang nu instellen';

  @override
  String infoVersion(String version) {
    return 'Versie $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versie $version · build $buildNumber';
  }

  @override
  String get infoChecking => 'Controleren…';

  @override
  String get infoCheckingForUpdates => 'Controleren op updates…';

  @override
  String get infoCheckForUpdates => 'Controleren op updates';

  @override
  String get infoDistributedVia => 'Gedistribueerd via GitHub Releases';

  @override
  String get infoMitLicense => 'MIT-licentie · open source beschikbaar';

  @override
  String get infoPrivacyNotice =>
      'Er verlaat geen data dit apparaat, behalve bij het controleren op updates';

  @override
  String get infoOpenReleasePage => 'Versiepagina openen';

  @override
  String get infoOpenReleases => 'GitHub Releases openen';

  @override
  String get infoNoBrowser => 'Geen webbrowser beschikbaar.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version is beschikbaar.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nieuwe versie $version beschikbaar';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Je gebruikt de nieuwste versie ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'App is up-to-date';

  @override
  String get infoUpdateFailed => 'Updatecontrole mislukt';

  @override
  String get infoRateLimit =>
      'GitHub limiteert op dit moment verzoeken vanaf dit netwerk. Probeer het over een paar minuten opnieuw.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub antwoordde met statuscode $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Onverwacht antwoord van GitHub.';

  @override
  String get infoNoRelease => 'GitHub meldde geen uitgave.';

  @override
  String get infoTimeout => 'Time-out bij verbinding met GitHub.';

  @override
  String get infoNoNetwork => 'Geen netwerkverbinding.';

  @override
  String get infoGenericError => 'Kon niet controleren op updates.';

  @override
  String get safetyEmergencyRevertHint =>
      'Schakel het scherm uit (aan/uit-knop) om direct te annuleren en te herstellen';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Wordt automatisch hersteld over $seconds s tenzij bevestigd';
  }
}
