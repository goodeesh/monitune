// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonDone => 'Done';

  @override
  String get commonSave => 'Save';

  @override
  String get commonClose => 'Close';

  @override
  String get commonRevert => 'Revert';

  @override
  String get commonReset => 'Reset';

  @override
  String get commonLearnMore => 'Learn more';

  @override
  String get commonBack => 'Back';

  @override
  String get commonContinue => 'Continue';

  @override
  String get commonApply => 'Apply';

  @override
  String get commonGrant => 'Grant';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Failed';

  @override
  String get commonEnabled => 'Enabled';

  @override
  String get commonDisabled => 'Disabled';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · check for updates';
  }

  @override
  String get homeHeroTitle => 'Tune your display for any monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Permanent access active';

  @override
  String get homeStatusPrivilegedAccessReady => 'Privileged access ready';

  @override
  String get homeStatusSetupRequired => 'Setup required';

  @override
  String get homeApplyTestProfile => 'Apply Test Profile';

  @override
  String get homeApplyFailed =>
      'Failed to apply. Check your privileged access.';

  @override
  String get homeResetDisplayToNative => 'Reset Display to Phone Default';

  @override
  String get homeSectionQuickSettings => 'Quick settings';

  @override
  String get homeSectionConfigure => 'Configure';

  @override
  String get homeNavDisplayTitle => 'Display';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolution, scale, appearance and launcher-safe mode';

  @override
  String get homeNavAccessTitle => 'Access & Permissions';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, permanent access and special permissions';

  @override
  String get homeForceLandscapeTitle => 'Force Landscape (Mirroring Lock)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Forces landscape over apps that lock portrait (including the HyperOS launcher). Applied when you tap Apply Test Profile.';

  @override
  String get homeAutoApplyTitle => 'Auto-apply when a monitor connects';

  @override
  String get homeAutoApplyWatching =>
      'Watching for external displays in the background.';

  @override
  String get homeAutoApplyDescription =>
      'Apply your profile automatically when an external display connects.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Dim phone screen';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Dims phone display to minimum on connect';

  @override
  String get homePermissionsRequiredDialogTitle => 'Permissions required';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Force Landscape can only be enabled once both special permissions are granted:';

  @override
  String get homePermissionDisplayOverApps => '• Display over other apps';

  @override
  String get homePermissionModifySettings => '• Modify system settings';

  @override
  String get homeGrantOverlay => 'Grant overlay';

  @override
  String get homeGrantSettings => 'Grant settings';

  @override
  String get homeVersionCheckForUpdates => 'Check for updates · MIT licensed';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Update $version available';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Test profile active — reverting in ${seconds}s';
  }

  @override
  String get homeKeepSettings => 'Keep Settings';

  @override
  String get homeRevertNow => 'Revert Now';

  @override
  String get homeStatusConnected => 'External display connected';

  @override
  String get homeStatusNotDetected => 'No external display detected';

  @override
  String get homeStatusDisconnected => 'Disconnected';

  @override
  String get homeWatcherActive => 'Monitor watcher active';

  @override
  String get homeWatcherStopped => 'Monitor watcher stopped';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Auto-apply profile on connection';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Test Profile (15s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Auto-reverting in ${seconds}s unless confirmed';
  }

  @override
  String get homeScreenOffHint =>
      'Turn screen off (Power button) to instantly cancel & revert';

  @override
  String get homeOrientationLockActiveSummary =>
      'Landscape lock active. The home screen and recents should stay landscape while it is on.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Force Landscape needs both \"Display over other apps\" and \"Modify system settings\" for MoniTune. Grant them, then try again.';

  @override
  String get homeOrientationLockFailedSummary =>
      'The landscape lock could not be applied.';

  @override
  String get displayTitle => 'Display';

  @override
  String get displaySectionTargetResolution => 'Target resolution';

  @override
  String get displaySectionDesktopUiScaling => 'Desktop UI scaling';

  @override
  String get displaySectionBehaviour => 'Behaviour';

  @override
  String get displaySectionAppearance => 'Appearance';

  @override
  String get displaySectionLanguage => 'Language';

  @override
  String get displaySectionPresets => 'Display Presets';

  @override
  String get displaySectionCustomResolution => 'Custom Resolution';

  @override
  String get displaySectionUiScaling => 'UI Scaling';

  @override
  String get displaySectionLauncherOrientation => 'Launcher & Orientation';

  @override
  String get displayDiagResolution => 'Resolution';

  @override
  String get displayDiagDensity => 'Density';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotation';

  @override
  String get displayDiagExternalDisplay => 'External display';

  @override
  String get displayDiagNoneConnected => 'None connected';

  @override
  String get displayDiagCustomProfile => 'Custom profile';

  @override
  String get displayDiagActive => 'Active';

  @override
  String get displayDiagNotApplied => 'Not applied';

  @override
  String get displayRotationLandscape90 => 'Landscape (90°)';

  @override
  String get displayRotationPortrait180 => 'Portrait (180°)';

  @override
  String get displayRotationLandscape270 => 'Landscape (270°)';

  @override
  String get displayRotationPortrait0 => 'Portrait (0°)';

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
  String get displayPresetNative => 'Native Phone Display';

  @override
  String get displayPresetNativeShort => 'Native';

  @override
  String get displayPresetCustom => 'Custom Resolution…';

  @override
  String get displayPresetCustomShort => 'Custom';

  @override
  String get displayWidthPx => 'Width (px)';

  @override
  String get displayHeightPx => 'Height (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Target canvas: $width × $height pixels';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% Scale Factor';
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
      '100% gives native PC density without enlarging mobile widgets.';

  @override
  String get displayKeepUiDensityTitle =>
      'Keep Android UI Density (Launcher-Safe)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Applies the resolution but leaves Android density untouched, so MIUI/HyperOS home-screen icons stay put.';

  @override
  String get displayLauncherSafeMode => 'Launcher-safe mode';

  @override
  String get displayLauncherSafeModeDesc =>
      'Keep MIUI/HyperOS launcher icon grid intact';

  @override
  String get displayForceLandscape => 'Force Landscape';

  @override
  String get displayForceLandscapeDesc =>
      'Prevent launcher from rotating back to portrait';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI Launcher Detected';

  @override
  String get displayMiuiDetectedMessage =>
      'Changing Android density can rearrange your home-screen icons and scatter apps onto other pages. Turn on \"Keep Android UI Density\" above to prevent this — the desktop resolution and mirroring are unaffected.';

  @override
  String get displayMiuiDetectedTip =>
      'Tip: also enable Settings → Home screen → \"Lock Home Screen Layout\".';

  @override
  String get displayForceLandscapeTitle => 'Force Landscape';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Enabled — applied when you tap Apply Test Profile (Home).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Toggle it from the Home screen. Requires both landscape permissions.';

  @override
  String get displayAutoResetOnExitTitle => 'Auto-Reset Resolution on Exit';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Returns your phone to its native resolution when you are done.';

  @override
  String get displayMaterialYouTitle => 'Material You colours';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Following your wallpaper palette';

  @override
  String get displayMaterialYouUsingChosenAccent => 'Using your chosen accent';

  @override
  String get displayUseWallpaperTitle => 'Use wallpaper colours';

  @override
  String get displayUseWallpaperChecking =>
      'Checking what your Android version supports…';

  @override
  String get displayUseWallpaperSupported =>
      'Applies the Material 3 expressive palette built from your wallpaper.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Needs Android 12 or newer. Pick an accent below instead.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Wallpaper colours need Android 12 or newer.';

  @override
  String get displayAccent => 'Accent';

  @override
  String get displayAccentColorSemantics => 'Accent colour';

  @override
  String get displayPalette => 'Palette';

  @override
  String get displayPaletteVibrant => 'Bold';

  @override
  String get displayPaletteFidelity => 'Exact';

  @override
  String get displayPaletteExpressive => 'Expressive';

  @override
  String get displayPaletteTonalSpot => 'Tonal spot';

  @override
  String get displayPaletteNeutral => 'Neutral';

  @override
  String get displayPaletteContent => 'Content';

  @override
  String get displayPaletteDescription =>
      'Bold keeps the accent colour vivid, Exact matches it closely, and Expressive lets Material 3 remix the hues for a more surprising look.';

  @override
  String get displayContrast => 'Contrast';

  @override
  String get displayContrastBoost => 'Contrast Boost';

  @override
  String get displayContrastBoosted => 'Boosted';

  @override
  String get displayContrastStandard => 'Standard';

  @override
  String get displayContrastDescription =>
      'Boosted raises text and surface contrast — useful with very bright wallpaper palettes, or on a large monitor across the room.';

  @override
  String get displayLanguage => 'Language';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'System default ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'System default';

  @override
  String get accessTitle => 'Access & Permissions';

  @override
  String get accessSectionPrivileged => 'Privileged access';

  @override
  String get accessSectionSpecial => 'Special permissions';

  @override
  String get accessSectionBackground => 'Background';

  @override
  String get accessForceLandscapeHint => 'Force Landscape needs both of these.';

  @override
  String get accessPermDisplayOverApps => 'Display over other apps';

  @override
  String get accessPermModifySettings => 'Modify system settings';

  @override
  String get accessPermBatteryOptimization => 'Battery optimization exemption';

  @override
  String get accessPermNotifications => 'Notifications (auto-apply watcher)';

  @override
  String get accessPermanentTitle => 'Permanent Access Active';

  @override
  String get accessPermanentSubtitle => 'Works with no Shizuku, ADB or Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Shizuku Privileged Access Active';

  @override
  String get accessShizukuActiveSubtitle =>
      'Grant permanent access once to run without Shizuku afterwards.';

  @override
  String get accessRootActiveTitle => 'Root (su) Access Available';

  @override
  String get accessRootActiveSubtitle =>
      'Display changes will be executed via root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku Detected — Permission Required';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Authorize once, then grant permanent access.';

  @override
  String get accessNoAccessTitle => 'No Privileged Access';

  @override
  String get accessNoAccessSubtitle =>
      'Start Shizuku via wireless debugging, or use root, to enable changes.';

  @override
  String get accessAuthorizeShizuku => 'Authorize with Shizuku';

  @override
  String get accessShizukuRequested => 'Shizuku permission requested.';

  @override
  String get accessGrantPermanent =>
      'Grant Permanent Access (no Shizuku afterwards)';

  @override
  String get accessPermanentGranted => 'Permanent display access granted!';

  @override
  String get accessPermanentFailed =>
      'Grant failed. Is Shizuku running and authorized?';

  @override
  String get accessPrivilegeWriteSecureSettings => 'Write Secure Settings';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku Service';

  @override
  String get accessPrivilegeRoot => 'Root Privilege';

  @override
  String get accessPrivilegeOverlay => 'Display Over Other Apps';

  @override
  String get accessPrivilegeModifySystemSettings => 'Modify System Settings';

  @override
  String get accessPrivilegeNotifications => 'Notifications';

  @override
  String get accessPrivilegeBatteryOptimization => 'Battery Optimization';

  @override
  String get accessStatusGranted => 'Granted';

  @override
  String get accessStatusMissing => 'Missing';

  @override
  String get accessStatusNotRunning => 'Not running';

  @override
  String get accessStatusRequired => 'Required';

  @override
  String get accessAdbInstruction =>
      'Run the ADB command from a computer if Shizuku is not available.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingBack => 'Back';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get onboardingWelcomeTitle => 'Welcome to MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Tune your Android display for any external monitor. Set the resolution and scale you want, keep your home screen tidy, and force widescreen landscape — all from one small app.';

  @override
  String get onboardingWelcomeBullet1 => 'Resolution & UI scale presets';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI/HyperOS launcher-safe mode';

  @override
  String get onboardingWelcomeBullet3 => 'Colours that follow your wallpaper';

  @override
  String get onboardingProblemTitle => 'Android locks this down';

  @override
  String get onboardingProblemBody =>
      'When you mirror your phone to a monitor, Android picks the resolution, density and rotation for you — and normal apps are not allowed to change them.';

  @override
  String get onboardingProblemBullet1 =>
      'Changing density on Xiaomi MIUI/HyperOS can scatter your home-screen icons onto other pages.';

  @override
  String get onboardingProblemBullet2 =>
      'No built-in way to remove black bars or pick a widescreen size.';

  @override
  String get onboardingWhyTitle => 'Why Shizuku or root?';

  @override
  String get onboardingWhyBody =>
      'The operations MoniTune performs need a permission called WRITE_SECURE_SETTINGS, which Android only grants to privileged apps.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku runs a shell with the privileges you grant over wireless debugging — no root needed.';

  @override
  String get onboardingWhyBullet2 =>
      'If your phone is rooted, MoniTune can use root directly instead.';

  @override
  String get onboardingWhyBullet3 =>
      'Nothing is hidden: MoniTune only uses this access to change display size, density and rotation.';

  @override
  String get onboardingPathsTitle => 'Pick your path';

  @override
  String get onboardingPathsBody => 'Either path unlocks the same features.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (no root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Recommended for most phones. Requires one-time setup with wireless debugging.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'If your device is already rooted, MoniTune detects it automatically.';

  @override
  String get onboardingShizukuStepsTitle => 'Setting up Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Install Shizuku, then start it once. MoniTune will guide you from there.';

  @override
  String get onboardingShizukuStep1 =>
      'Install Shizuku from the official site or GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Open Shizuku and start it via Wireless debugging (Android 11+) or ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Return to MoniTune and tap \"Authorize with Shizuku\".';

  @override
  String get onboardingShizukuGuideButton => 'Open Shizuku setup guide';

  @override
  String get onboardingOneTimeTitle => 'One-time setup';

  @override
  String get onboardingOneTimeBody =>
      'While Shizuku (or root) is available, MoniTune can grant itself a permanent WRITE_SECURE_SETTINGS permission.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Grant it once — afterwards MoniTune works with no Shizuku, no ADB and no Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 => 'The grant survives reboots.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku only needs to be running for that single moment.';

  @override
  String get onboardingSafetyTitle => 'Built-in safety';

  @override
  String get onboardingSafetyBody =>
      'Changing display size can leave a screen unreadable, so MoniTune protects you.';

  @override
  String get onboardingSafetyBullet1 =>
      'Test mode auto-reverts after 15 seconds unless you tap \"Keep Settings\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Turning the screen off restores your native resolution automatically.';

  @override
  String get onboardingSafetyBullet3 =>
      'Launcher-safe mode skips density changes so MIUI/HyperOS icons stay put.';

  @override
  String get onboardingReadyTitle => 'You are ready';

  @override
  String get onboardingReadyBody =>
      'Set up your privileged access and the two special permissions next. Then choose your resolution and scale, and test with the 15-second safety revert before keeping your settings.';

  @override
  String get onboardingReadyBullet1 =>
      'Auto-apply: apply your profile the moment a monitor connects, and reset when it unplugs.';

  @override
  String get onboardingReadyBullet2 =>
      'Force Landscape overrides every app\'s orientation — including the HyperOS launcher (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'On Android 12+, MoniTune can take its colours from your wallpaper (Material You).';

  @override
  String get onboardingReadyButton => 'Set up access now';

  @override
  String infoVersion(String version) {
    return 'Version $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Version $version · build $buildNumber';
  }

  @override
  String get infoChecking => 'Checking…';

  @override
  String get infoCheckingForUpdates => 'Checking for updates…';

  @override
  String get infoCheckForUpdates => 'Check for updates';

  @override
  String get infoDistributedVia => 'Distributed via GitHub Releases';

  @override
  String get infoMitLicense => 'MIT licensed · source available';

  @override
  String get infoPrivacyNotice =>
      'Nothing leaves this device unless you check for updates';

  @override
  String get infoOpenReleasePage => 'Open release page';

  @override
  String get infoOpenReleases => 'Open GitHub Releases';

  @override
  String get infoNoBrowser => 'No browser available.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version is available.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'New version $version available';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'You are on the latest version ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'You\'re up to date';

  @override
  String get infoUpdateFailed => 'Update check failed';

  @override
  String get infoRateLimit =>
      'GitHub is rate-limiting this network right now. Try again in a few minutes.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub replied with status $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Unexpected response from GitHub.';

  @override
  String get infoNoRelease => 'GitHub did not report a release.';

  @override
  String get infoTimeout => 'GitHub did not respond in time.';

  @override
  String get infoNoNetwork => 'No network connection.';

  @override
  String get infoGenericError => 'Could not check for updates.';

  @override
  String get safetyEmergencyRevertHint =>
      'Turn screen off (Power button) to instantly cancel & revert';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Auto-reverting in ${seconds}s unless confirmed';
  }
}
