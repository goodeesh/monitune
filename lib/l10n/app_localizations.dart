import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// The title of the application
  ///
  /// In en, this message translates to:
  /// **'MoniTune'**
  String get appTitle;

  /// Standard cancel button text
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// Standard done button text
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// Standard save button text
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// Standard close button text
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// Standard revert button text
  ///
  /// In en, this message translates to:
  /// **'Revert'**
  String get commonRevert;

  /// Standard reset button text
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get commonReset;

  /// Standard learn more action link
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get commonLearnMore;

  /// Standard back navigation button text
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// Standard continue button text
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// Standard apply button text
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get commonApply;

  /// Standard grant permission button text
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get commonGrant;

  /// Standard OK button text
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get commonOk;

  /// Generic failure label
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get commonFailed;

  /// Generic enabled state label
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get commonEnabled;

  /// Generic disabled state label
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get commonDisabled;

  /// Tooltip shown on the update action button in the Home app bar
  ///
  /// In en, this message translates to:
  /// **'MoniTune {version} · check for updates'**
  String homeCheckForUpdatesTooltip(String version);

  /// Hero banner header on the home screen
  ///
  /// In en, this message translates to:
  /// **'Tune your display for any monitor'**
  String get homeHeroTitle;

  /// Pill indicator text when WRITE_SECURE_SETTINGS has been permanently granted
  ///
  /// In en, this message translates to:
  /// **'Permanent access active'**
  String get homeStatusPermanentAccessActive;

  /// Pill indicator text when Shizuku or root is available but permanent grant is not yet set
  ///
  /// In en, this message translates to:
  /// **'Privileged access ready'**
  String get homeStatusPrivilegedAccessReady;

  /// Pill indicator text when privileged access has not yet been set up
  ///
  /// In en, this message translates to:
  /// **'Setup required'**
  String get homeStatusSetupRequired;

  /// Primary action button to temporarily apply the configured display profile for 15 seconds
  ///
  /// In en, this message translates to:
  /// **'Apply Test Profile'**
  String get homeApplyTestProfile;

  /// Error snackbar shown when applying the display profile fails
  ///
  /// In en, this message translates to:
  /// **'Failed to apply. Check your privileged access.'**
  String get homeApplyFailed;

  /// Secondary action button restoring screen resolution and density to native defaults
  ///
  /// In en, this message translates to:
  /// **'Reset Display to Phone Default'**
  String get homeResetDisplayToNative;

  /// Section title for quick toggle settings on the home screen
  ///
  /// In en, this message translates to:
  /// **'Quick settings'**
  String get homeSectionQuickSettings;

  /// Section title for configuration navigation tiles on the home screen
  ///
  /// In en, this message translates to:
  /// **'Configure'**
  String get homeSectionConfigure;

  /// Title of the navigation tile leading to the display settings screen
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get homeNavDisplayTitle;

  /// Subtitle of the display settings navigation tile
  ///
  /// In en, this message translates to:
  /// **'Resolution, scale, appearance and launcher-safe mode'**
  String get homeNavDisplaySubtitle;

  /// Title of the navigation tile leading to the access & permissions screen
  ///
  /// In en, this message translates to:
  /// **'Access & Permissions'**
  String get homeNavAccessTitle;

  /// Subtitle of the access & permissions navigation tile
  ///
  /// In en, this message translates to:
  /// **'Shizuku, permanent access and special permissions'**
  String get homeNavAccessSubtitle;

  /// Title for the Force Landscape toggle on the home screen
  ///
  /// In en, this message translates to:
  /// **'Force Landscape (Mirroring Lock)'**
  String get homeForceLandscapeTitle;

  /// Subtitle explaining how Force Landscape works
  ///
  /// In en, this message translates to:
  /// **'Forces landscape over apps that lock portrait (including the HyperOS launcher). Applied when you tap Apply Test Profile.'**
  String get homeForceLandscapeSubtitle;

  /// Title for the auto-apply monitor connection toggle
  ///
  /// In en, this message translates to:
  /// **'Auto-apply when a monitor connects'**
  String get homeAutoApplyTitle;

  /// Subtitle status when the background display watcher is active
  ///
  /// In en, this message translates to:
  /// **'Watching for external displays in the background.'**
  String get homeAutoApplyWatching;

  /// Subtitle description when the background display watcher is disabled
  ///
  /// In en, this message translates to:
  /// **'Apply your profile automatically when an external display connects.'**
  String get homeAutoApplyDescription;

  /// Title for the dialog warning that Force Landscape needs special permissions
  ///
  /// In en, this message translates to:
  /// **'Permissions required'**
  String get homePermissionsRequiredDialogTitle;

  /// Body message listing required permissions for Force Landscape
  ///
  /// In en, this message translates to:
  /// **'Force Landscape can only be enabled once both special permissions are granted:'**
  String get homePermissionsRequiredDialogMessage;

  /// Bullet item for the overlay permission
  ///
  /// In en, this message translates to:
  /// **'• Display over other apps'**
  String get homePermissionDisplayOverApps;

  /// Bullet item for the write system settings permission
  ///
  /// In en, this message translates to:
  /// **'• Modify system settings'**
  String get homePermissionModifySettings;

  /// Dialog button to trigger the overlay permission grant flow
  ///
  /// In en, this message translates to:
  /// **'Grant overlay'**
  String get homeGrantOverlay;

  /// Dialog button to trigger the write system settings grant flow
  ///
  /// In en, this message translates to:
  /// **'Grant settings'**
  String get homeGrantSettings;

  /// Default subtitle on the version row on the home screen
  ///
  /// In en, this message translates to:
  /// **'Check for updates · MIT licensed'**
  String get homeVersionCheckForUpdates;

  /// Subtitle on the version row when a newer version has been discovered
  ///
  /// In en, this message translates to:
  /// **'Update {version} available'**
  String homeVersionUpdateAvailable(String version);

  /// Countdown banner message during resolution test
  ///
  /// In en, this message translates to:
  /// **'Test profile active — reverting in {seconds}s'**
  String homeTestRevertingBanner(int seconds);

  /// Button to confirm and keep the tested display resolution
  ///
  /// In en, this message translates to:
  /// **'Keep Settings'**
  String get homeKeepSettings;

  /// Button to immediately cancel test and revert to previous resolution
  ///
  /// In en, this message translates to:
  /// **'Revert Now'**
  String get homeRevertNow;

  /// Status text when an external display cable or wireless sink is detected
  ///
  /// In en, this message translates to:
  /// **'External display connected'**
  String get homeStatusConnected;

  /// Status text when no secondary display is attached
  ///
  /// In en, this message translates to:
  /// **'No external display detected'**
  String get homeStatusNotDetected;

  /// Short status indicator for disconnected monitor
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get homeStatusDisconnected;

  /// Status label indicating the background display connection watcher service is running
  ///
  /// In en, this message translates to:
  /// **'Monitor watcher active'**
  String get homeWatcherActive;

  /// Status label indicating the background display connection watcher service is idle
  ///
  /// In en, this message translates to:
  /// **'Monitor watcher stopped'**
  String get homeWatcherStopped;

  /// Setting title for automatically applying the saved profile upon connecting a monitor
  ///
  /// In en, this message translates to:
  /// **'Auto-apply profile on connection'**
  String get homeAutoApplyProfileOnConnection;

  /// Summary label of an active display profile configuration
  ///
  /// In en, this message translates to:
  /// **'{width}x{height} @ {scale}% ({dpi} DPI)'**
  String homeActiveProfileLabel(int width, int height, int scale, int dpi);

  /// Button label indicating a 15-second trial run of the selected display profile
  ///
  /// In en, this message translates to:
  /// **'Test Profile (15s)'**
  String get homeTestProfile15s;

  /// Safety countdown timer displayed during display profile test
  ///
  /// In en, this message translates to:
  /// **'Auto-reverting in {seconds}s unless confirmed'**
  String homeRevertCountdown(int seconds);

  /// Safety instruction reminding user that turning the screen off triggers an instant safety revert
  ///
  /// In en, this message translates to:
  /// **'Turn screen off (Power button) to instantly cancel & revert'**
  String get homeScreenOffHint;

  /// Summary status message when landscape lock was applied successfully
  ///
  /// In en, this message translates to:
  /// **'Landscape lock active. The home screen and recents should stay landscape while it is on.'**
  String get homeOrientationLockActiveSummary;

  /// Summary status message when landscape lock failed due to missing permissions
  ///
  /// In en, this message translates to:
  /// **'Force Landscape needs both \"Display over other apps\" and \"Modify system settings\" for MoniTune. Grant them, then try again.'**
  String get homeOrientationLockNeedsPermissionsSummary;

  /// Summary status message when landscape lock could not be engaged
  ///
  /// In en, this message translates to:
  /// **'The landscape lock could not be applied.'**
  String get homeOrientationLockFailedSummary;

  /// Title of the display settings screen
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get displayTitle;

  /// Section header for selecting target display resolution
  ///
  /// In en, this message translates to:
  /// **'Target resolution'**
  String get displaySectionTargetResolution;

  /// Section header for configuring UI scaling and density
  ///
  /// In en, this message translates to:
  /// **'Desktop UI scaling'**
  String get displaySectionDesktopUiScaling;

  /// Section header for display automation and persistence behaviours
  ///
  /// In en, this message translates to:
  /// **'Behaviour'**
  String get displaySectionBehaviour;

  /// Section header for app theme, accent colour, and palette
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get displaySectionAppearance;

  /// Section header for application language selection
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get displaySectionLanguage;

  /// Section header for resolution preset buttons
  ///
  /// In en, this message translates to:
  /// **'Display Presets'**
  String get displaySectionPresets;

  /// Section header for custom resolution width and height inputs
  ///
  /// In en, this message translates to:
  /// **'Custom Resolution'**
  String get displaySectionCustomResolution;

  /// Short section header for UI scaling
  ///
  /// In en, this message translates to:
  /// **'UI Scaling'**
  String get displaySectionUiScaling;

  /// Section header for launcher safety mode and orientation overrides
  ///
  /// In en, this message translates to:
  /// **'Launcher & Orientation'**
  String get displaySectionLauncherOrientation;

  /// Label for current resolution in diagnostic card
  ///
  /// In en, this message translates to:
  /// **'Resolution'**
  String get displayDiagResolution;

  /// Label for current screen density in diagnostic card
  ///
  /// In en, this message translates to:
  /// **'Density'**
  String get displayDiagDensity;

  /// Density value formatted with DPI unit
  ///
  /// In en, this message translates to:
  /// **'{dpi} DPI'**
  String displayDiagDensityValue(int dpi);

  /// Label for current display rotation in diagnostic card
  ///
  /// In en, this message translates to:
  /// **'Rotation'**
  String get displayDiagRotation;

  /// Label for external display connection state in diagnostic card
  ///
  /// In en, this message translates to:
  /// **'External display'**
  String get displayDiagExternalDisplay;

  /// Value indicating no external display is currently attached
  ///
  /// In en, this message translates to:
  /// **'None connected'**
  String get displayDiagNoneConnected;

  /// Label for custom display profile state in diagnostic card
  ///
  /// In en, this message translates to:
  /// **'Custom profile'**
  String get displayDiagCustomProfile;

  /// Status text indicating custom display profile is currently applied
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get displayDiagActive;

  /// Status text indicating default native display profile is currently applied
  ///
  /// In en, this message translates to:
  /// **'Not applied'**
  String get displayDiagNotApplied;

  /// Rotation label for 90-degree landscape orientation
  ///
  /// In en, this message translates to:
  /// **'Landscape (90°)'**
  String get displayRotationLandscape90;

  /// Rotation label for 180-degree upside-down portrait orientation
  ///
  /// In en, this message translates to:
  /// **'Portrait (180°)'**
  String get displayRotationPortrait180;

  /// Rotation label for 270-degree landscape orientation
  ///
  /// In en, this message translates to:
  /// **'Landscape (270°)'**
  String get displayRotationLandscape270;

  /// Rotation label for standard 0-degree upright portrait orientation
  ///
  /// In en, this message translates to:
  /// **'Portrait (0°)'**
  String get displayRotationPortrait0;

  /// Resolution preset option for 1080p 16:9 Full HD
  ///
  /// In en, this message translates to:
  /// **'1080p Full HD (1920 × 1080)'**
  String get displayPreset1080p;

  /// Resolution preset option for 1440p 16:9 2K QHD
  ///
  /// In en, this message translates to:
  /// **'1440p 2K (2560 × 1440)'**
  String get displayPreset1440p;

  /// Resolution preset option for 4K 16:9 UHD
  ///
  /// In en, this message translates to:
  /// **'4K Ultra HD (3840 × 2160)'**
  String get displayPreset4k;

  /// Resolution preset option for 720p 16:9 HD
  ///
  /// In en, this message translates to:
  /// **'720p HD (1280 × 720)'**
  String get displayPreset720p;

  /// Resolution preset option for 2560x1080 21:9 ultrawide
  ///
  /// In en, this message translates to:
  /// **'Ultrawide 21:9 (2560 × 1080)'**
  String get displayPresetUltrawide;

  /// Short preset label for 1080p 21:9 ultrawide
  ///
  /// In en, this message translates to:
  /// **'Ultrawide (1080p)'**
  String get displayPresetUltrawide1080p;

  /// Short preset label for 1440p 21:9 ultrawide (3440x1440)
  ///
  /// In en, this message translates to:
  /// **'Ultrawide (1440p)'**
  String get displayPresetUltrawide1440p;

  /// Short preset chip label for 1080p
  ///
  /// In en, this message translates to:
  /// **'1080p'**
  String get displayPreset1080pShort;

  /// Short preset chip label for 1440p
  ///
  /// In en, this message translates to:
  /// **'1440p'**
  String get displayPreset1440pShort;

  /// Short preset chip label for 4K
  ///
  /// In en, this message translates to:
  /// **'4K'**
  String get displayPreset4kShort;

  /// Resolution preset option to restore native hardware panel dimensions
  ///
  /// In en, this message translates to:
  /// **'Native Phone Display'**
  String get displayPresetNative;

  /// Short preset chip label for Native
  ///
  /// In en, this message translates to:
  /// **'Native'**
  String get displayPresetNativeShort;

  /// Resolution preset option to specify custom pixel width and height
  ///
  /// In en, this message translates to:
  /// **'Custom Resolution…'**
  String get displayPresetCustom;

  /// Short preset chip label for Custom
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get displayPresetCustomShort;

  /// Input field label for custom width in pixels
  ///
  /// In en, this message translates to:
  /// **'Width (px)'**
  String get displayWidthPx;

  /// Input field label for custom height in pixels
  ///
  /// In en, this message translates to:
  /// **'Height (px)'**
  String get displayHeightPx;

  /// Status text displaying calculated effective canvas dimensions
  ///
  /// In en, this message translates to:
  /// **'Target canvas: {width} × {height} pixels'**
  String displayTargetCanvas(int width, int height);

  /// Header showing currently selected UI scale factor percentage
  ///
  /// In en, this message translates to:
  /// **'{scale}% Scale Factor'**
  String displayScaleFactor(int scale);

  /// Scale percentage formatted with percent sign
  ///
  /// In en, this message translates to:
  /// **'{scale}%'**
  String displayScalePercent(int scale);

  /// Display density indicator in DPI
  ///
  /// In en, this message translates to:
  /// **'{dpi} DPI'**
  String displayDpiValue(int dpi);

  /// Live indicator showing both UI scale percentage and density in DPI
  ///
  /// In en, this message translates to:
  /// **'{scale}% ({dpi} DPI)'**
  String displayScaleDpiIndicator(int scale, int dpi);

  /// Help text explaining that 100% scaling provides desktop-like density
  ///
  /// In en, this message translates to:
  /// **'100% gives native PC density without enlarging mobile widgets.'**
  String get displayScaleNativeHint;

  /// Switch title for keeping default Android density to protect launcher grids
  ///
  /// In en, this message translates to:
  /// **'Keep Android UI Density (Launcher-Safe)'**
  String get displayKeepUiDensityTitle;

  /// Switch subtitle describing the launcher-safe density behavior
  ///
  /// In en, this message translates to:
  /// **'Applies the resolution but leaves Android density untouched, so MIUI/HyperOS home-screen icons stay put.'**
  String get displayKeepUiDensitySubtitle;

  /// Short toggle title for launcher-safe mode
  ///
  /// In en, this message translates to:
  /// **'Launcher-safe mode'**
  String get displayLauncherSafeMode;

  /// Short explanation for launcher-safe mode
  ///
  /// In en, this message translates to:
  /// **'Keep MIUI/HyperOS launcher icon grid intact'**
  String get displayLauncherSafeModeDesc;

  /// Short toggle title for Force Landscape
  ///
  /// In en, this message translates to:
  /// **'Force Landscape'**
  String get displayForceLandscape;

  /// Short explanation for Force Landscape
  ///
  /// In en, this message translates to:
  /// **'Prevent launcher from rotating back to portrait'**
  String get displayForceLandscapeDesc;

  /// Warning card header when Xiaomi HyperOS or MIUI launcher is detected
  ///
  /// In en, this message translates to:
  /// **'HyperOS / MIUI Launcher Detected'**
  String get displayMiuiDetectedTitle;

  /// Warning message explaining potential icon rearrangement on MIUI/HyperOS
  ///
  /// In en, this message translates to:
  /// **'Changing Android density can rearrange your home-screen icons and scatter apps onto other pages. Turn on \"Keep Android UI Density\" above to prevent this — the desktop resolution and mirroring are unaffected.'**
  String get displayMiuiDetectedMessage;

  /// Helpful recommendation to lock the home screen grid in system settings
  ///
  /// In en, this message translates to:
  /// **'Tip: also enable Settings → Home screen → \"Lock Home Screen Layout\".'**
  String get displayMiuiDetectedTip;

  /// Title for Force Landscape tile under Behaviour section
  ///
  /// In en, this message translates to:
  /// **'Force Landscape'**
  String get displayForceLandscapeTitle;

  /// Subtitle status when Force Landscape is enabled
  ///
  /// In en, this message translates to:
  /// **'Enabled — applied when you tap Apply Test Profile (Home).'**
  String get displayForceLandscapeSubtitleEnabled;

  /// Subtitle status when Force Landscape is disabled or missing permissions
  ///
  /// In en, this message translates to:
  /// **'Toggle it from the Home screen. Requires both landscape permissions.'**
  String get displayForceLandscapeSubtitleDisabled;

  /// Switch title for automatically reverting resolution upon app exit
  ///
  /// In en, this message translates to:
  /// **'Auto-Reset Resolution on Exit'**
  String get displayAutoResetOnExitTitle;

  /// Switch subtitle explaining automatic resolution reset on exit
  ///
  /// In en, this message translates to:
  /// **'Returns your phone to its native resolution when you are done.'**
  String get displayAutoResetOnExitSubtitle;

  /// Title for dynamic Material You color theming row
  ///
  /// In en, this message translates to:
  /// **'Material You colours'**
  String get displayMaterialYouTitle;

  /// Subtitle indicating that theme colors are derived dynamically from the device wallpaper
  ///
  /// In en, this message translates to:
  /// **'Following your wallpaper palette'**
  String get displayMaterialYouFollowingWallpaper;

  /// Subtitle indicating that theme colors are derived from a user-selected accent swatch
  ///
  /// In en, this message translates to:
  /// **'Using your chosen accent'**
  String get displayMaterialYouUsingChosenAccent;

  /// Switch title for enabling wallpaper-derived Material You colors
  ///
  /// In en, this message translates to:
  /// **'Use wallpaper colours'**
  String get displayUseWallpaperTitle;

  /// Subtitle shown while checking device dynamic color capability
  ///
  /// In en, this message translates to:
  /// **'Checking what your Android version supports…'**
  String get displayUseWallpaperChecking;

  /// Subtitle when wallpaper color extraction is supported by the device
  ///
  /// In en, this message translates to:
  /// **'Applies the Material 3 expressive palette built from your wallpaper.'**
  String get displayUseWallpaperSupported;

  /// Subtitle explaining that wallpaper colors require Android 12+
  ///
  /// In en, this message translates to:
  /// **'Needs Android 12 or newer. Pick an accent below instead.'**
  String get displayUseWallpaperNeedsAndroid12;

  /// Snackbar message shown when attempting to toggle wallpaper colors on unsupported Android versions
  ///
  /// In en, this message translates to:
  /// **'Wallpaper colours need Android 12 or newer.'**
  String get displayWallpaperAndroid12Required;

  /// Section subhead for selecting manual accent color
  ///
  /// In en, this message translates to:
  /// **'Accent'**
  String get displayAccent;

  /// Accessibility semantics label for accent color swatch button
  ///
  /// In en, this message translates to:
  /// **'Accent colour'**
  String get displayAccentColorSemantics;

  /// Section subhead for selecting Material 3 dynamic scheme variant
  ///
  /// In en, this message translates to:
  /// **'Palette'**
  String get displayPalette;

  /// Label for the vibrant Material 3 color scheme variant
  ///
  /// In en, this message translates to:
  /// **'Bold'**
  String get displayPaletteVibrant;

  /// Label for the fidelity Material 3 color scheme variant
  ///
  /// In en, this message translates to:
  /// **'Exact'**
  String get displayPaletteFidelity;

  /// Label for the expressive Material 3 color scheme variant
  ///
  /// In en, this message translates to:
  /// **'Expressive'**
  String get displayPaletteExpressive;

  /// Label for the tonal spot Material 3 scheme variant
  ///
  /// In en, this message translates to:
  /// **'Tonal spot'**
  String get displayPaletteTonalSpot;

  /// Label for the neutral Material 3 scheme variant
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get displayPaletteNeutral;

  /// Label for the content Material 3 scheme variant
  ///
  /// In en, this message translates to:
  /// **'Content'**
  String get displayPaletteContent;

  /// Explanatory text describing the difference between the palette variants
  ///
  /// In en, this message translates to:
  /// **'Bold keeps the accent colour vivid, Exact matches it closely, and Expressive lets Material 3 remix the hues for a more surprising look.'**
  String get displayPaletteDescription;

  /// Section subhead for contrast boost toggle
  ///
  /// In en, this message translates to:
  /// **'Contrast'**
  String get displayContrast;

  /// Label for the contrast boost feature
  ///
  /// In en, this message translates to:
  /// **'Contrast Boost'**
  String get displayContrastBoost;

  /// Segment option for higher contrast UI theme
  ///
  /// In en, this message translates to:
  /// **'Boosted'**
  String get displayContrastBoosted;

  /// Segment option for standard contrast UI theme
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get displayContrastStandard;

  /// Explanatory text describing the benefit of boosted contrast
  ///
  /// In en, this message translates to:
  /// **'Boosted raises text and surface contrast — useful with very bright wallpaper palettes, or on a large monitor across the room.'**
  String get displayContrastDescription;

  /// Settings tile label for opening the language selection sheet
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get displayLanguage;

  /// Language tile label when following system language, showing current detected locale name
  ///
  /// In en, this message translates to:
  /// **'System default ({language})'**
  String displayLanguageSystemDefault(String language);

  /// Option in language picker to automatically follow system language
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get displayLanguageSystemDefaultSimple;

  /// Screen title for Access & Permissions
  ///
  /// In en, this message translates to:
  /// **'Access & Permissions'**
  String get accessTitle;

  /// Section title for root, Shizuku, and WRITE_SECURE_SETTINGS access
  ///
  /// In en, this message translates to:
  /// **'Privileged access'**
  String get accessSectionPrivileged;

  /// Section title for system overlay and write settings permissions
  ///
  /// In en, this message translates to:
  /// **'Special permissions'**
  String get accessSectionSpecial;

  /// Section title for background execution and notification permissions
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get accessSectionBackground;

  /// Helpful caption explaining why both special permissions are required
  ///
  /// In en, this message translates to:
  /// **'Force Landscape needs both of these.'**
  String get accessForceLandscapeHint;

  /// Permission row title for the SYSTEM_ALERT_WINDOW permission
  ///
  /// In en, this message translates to:
  /// **'Display over other apps'**
  String get accessPermDisplayOverApps;

  /// Permission row title for the WRITE_SETTINGS permission
  ///
  /// In en, this message translates to:
  /// **'Modify system settings'**
  String get accessPermModifySettings;

  /// Permission row title for ignoring battery optimizations
  ///
  /// In en, this message translates to:
  /// **'Battery optimization exemption'**
  String get accessPermBatteryOptimization;

  /// Permission row title for posting foreground service notifications
  ///
  /// In en, this message translates to:
  /// **'Notifications (auto-apply watcher)'**
  String get accessPermNotifications;

  /// Card title when WRITE_SECURE_SETTINGS has been granted
  ///
  /// In en, this message translates to:
  /// **'Permanent Access Active'**
  String get accessPermanentTitle;

  /// Card subtitle when permanent access is active
  ///
  /// In en, this message translates to:
  /// **'Works with no Shizuku, ADB or Wi-Fi.'**
  String get accessPermanentSubtitle;

  /// Card title when Shizuku service is running and permission is granted
  ///
  /// In en, this message translates to:
  /// **'Shizuku Privileged Access Active'**
  String get accessShizukuActiveTitle;

  /// Card subtitle prompting to self-grant permanent access via Shizuku
  ///
  /// In en, this message translates to:
  /// **'Grant permanent access once to run without Shizuku afterwards.'**
  String get accessShizukuActiveSubtitle;

  /// Card title when root su binary is available
  ///
  /// In en, this message translates to:
  /// **'Root (su) Access Available'**
  String get accessRootActiveTitle;

  /// Card subtitle when using root access for display changes
  ///
  /// In en, this message translates to:
  /// **'Display changes will be executed via root.'**
  String get accessRootActiveSubtitle;

  /// Card title when Shizuku is running but not yet authorized for MoniTune
  ///
  /// In en, this message translates to:
  /// **'Shizuku Detected — Permission Required'**
  String get accessShizukuRequiredTitle;

  /// Card subtitle prompting to authorize Shizuku
  ///
  /// In en, this message translates to:
  /// **'Authorize once, then grant permanent access.'**
  String get accessShizukuRequiredSubtitle;

  /// Card title when neither permanent grant, Shizuku, nor root is available
  ///
  /// In en, this message translates to:
  /// **'No Privileged Access'**
  String get accessNoAccessTitle;

  /// Card subtitle guiding the user on how to obtain privileged access
  ///
  /// In en, this message translates to:
  /// **'Start Shizuku via wireless debugging, or use root, to enable changes.'**
  String get accessNoAccessSubtitle;

  /// Button to request Shizuku IPC authorization
  ///
  /// In en, this message translates to:
  /// **'Authorize with Shizuku'**
  String get accessAuthorizeShizuku;

  /// Snackbar confirming that Shizuku authorization dialog was prompted
  ///
  /// In en, this message translates to:
  /// **'Shizuku permission requested.'**
  String get accessShizukuRequested;

  /// Button executing self-grant of WRITE_SECURE_SETTINGS via Shizuku or root
  ///
  /// In en, this message translates to:
  /// **'Grant Permanent Access (no Shizuku afterwards)'**
  String get accessGrantPermanent;

  /// Snackbar confirming permanent access was successfully granted
  ///
  /// In en, this message translates to:
  /// **'Permanent display access granted!'**
  String get accessPermanentGranted;

  /// Snackbar error message when self-grant of WRITE_SECURE_SETTINGS fails
  ///
  /// In en, this message translates to:
  /// **'Grant failed. Is Shizuku running and authorized?'**
  String get accessPermanentFailed;

  /// Title of the Android WRITE_SECURE_SETTINGS privilege
  ///
  /// In en, this message translates to:
  /// **'Write Secure Settings'**
  String get accessPrivilegeWriteSecureSettings;

  /// Title of the Shizuku IPC background service privilege
  ///
  /// In en, this message translates to:
  /// **'Shizuku Service'**
  String get accessPrivilegeShizukuService;

  /// Title of the root superuser privilege
  ///
  /// In en, this message translates to:
  /// **'Root Privilege'**
  String get accessPrivilegeRoot;

  /// Title of the system alert window overlay privilege
  ///
  /// In en, this message translates to:
  /// **'Display Over Other Apps'**
  String get accessPrivilegeOverlay;

  /// Title of the write system settings privilege
  ///
  /// In en, this message translates to:
  /// **'Modify System Settings'**
  String get accessPrivilegeModifySystemSettings;

  /// Title of the post notifications privilege
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get accessPrivilegeNotifications;

  /// Title of the battery optimization exemption privilege
  ///
  /// In en, this message translates to:
  /// **'Battery Optimization'**
  String get accessPrivilegeBatteryOptimization;

  /// Status badge indicating a permission has been granted
  ///
  /// In en, this message translates to:
  /// **'Granted'**
  String get accessStatusGranted;

  /// Status badge indicating a required permission is not yet granted
  ///
  /// In en, this message translates to:
  /// **'Missing'**
  String get accessStatusMissing;

  /// Status badge indicating Shizuku service is installed but not running
  ///
  /// In en, this message translates to:
  /// **'Not running'**
  String get accessStatusNotRunning;

  /// Status badge indicating a permission is mandatory for functionality
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get accessStatusRequired;

  /// Instruction guiding user to grant permission via ADB command line
  ///
  /// In en, this message translates to:
  /// **'Run the ADB command from a computer if Shizuku is not available.'**
  String get accessAdbInstruction;

  /// The exact shell command used to grant WRITE_SECURE_SETTINGS via ADB
  ///
  /// In en, this message translates to:
  /// **'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS'**
  String get accessAdbGrantCommand;

  /// Action button in top bar to skip onboarding wizard
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// Navigation button to return to previous onboarding slide
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get onboardingBack;

  /// Navigation button to advance to next onboarding slide
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// Navigation button on final onboarding slide to finish and enter the app
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingGetStarted;

  /// Title of onboarding slide 1
  ///
  /// In en, this message translates to:
  /// **'Welcome to MoniTune'**
  String get onboardingWelcomeTitle;

  /// Body paragraph of onboarding slide 1
  ///
  /// In en, this message translates to:
  /// **'Tune your Android display for any external monitor. Set the resolution and scale you want, keep your home screen tidy, and force widescreen landscape — all from one small app.'**
  String get onboardingWelcomeBody;

  /// Bullet 1 of onboarding slide 1
  ///
  /// In en, this message translates to:
  /// **'Resolution & UI scale presets'**
  String get onboardingWelcomeBullet1;

  /// Bullet 2 of onboarding slide 1
  ///
  /// In en, this message translates to:
  /// **'MIUI/HyperOS launcher-safe mode'**
  String get onboardingWelcomeBullet2;

  /// Bullet 3 of onboarding slide 1
  ///
  /// In en, this message translates to:
  /// **'Colours that follow your wallpaper'**
  String get onboardingWelcomeBullet3;

  /// Title of onboarding slide 2
  ///
  /// In en, this message translates to:
  /// **'Android locks this down'**
  String get onboardingProblemTitle;

  /// Body paragraph of onboarding slide 2
  ///
  /// In en, this message translates to:
  /// **'When you mirror your phone to a monitor, Android picks the resolution, density and rotation for you — and normal apps are not allowed to change them.'**
  String get onboardingProblemBody;

  /// Bullet 1 of onboarding slide 2
  ///
  /// In en, this message translates to:
  /// **'Changing density on Xiaomi MIUI/HyperOS can scatter your home-screen icons onto other pages.'**
  String get onboardingProblemBullet1;

  /// Bullet 2 of onboarding slide 2
  ///
  /// In en, this message translates to:
  /// **'No built-in way to remove black bars or pick a widescreen size.'**
  String get onboardingProblemBullet2;

  /// Title of onboarding slide 3
  ///
  /// In en, this message translates to:
  /// **'Why Shizuku or root?'**
  String get onboardingWhyTitle;

  /// Body paragraph of onboarding slide 3
  ///
  /// In en, this message translates to:
  /// **'The operations MoniTune performs need a permission called WRITE_SECURE_SETTINGS, which Android only grants to privileged apps.'**
  String get onboardingWhyBody;

  /// Bullet 1 of onboarding slide 3
  ///
  /// In en, this message translates to:
  /// **'Shizuku runs a shell with the privileges you grant over wireless debugging — no root needed.'**
  String get onboardingWhyBullet1;

  /// Bullet 2 of onboarding slide 3
  ///
  /// In en, this message translates to:
  /// **'If your phone is rooted, MoniTune can use root directly instead.'**
  String get onboardingWhyBullet2;

  /// Bullet 3 of onboarding slide 3
  ///
  /// In en, this message translates to:
  /// **'Nothing is hidden: MoniTune only uses this access to change display size, density and rotation.'**
  String get onboardingWhyBullet3;

  /// Title of onboarding slide 4
  ///
  /// In en, this message translates to:
  /// **'Pick your path'**
  String get onboardingPathsTitle;

  /// Body paragraph of onboarding slide 4
  ///
  /// In en, this message translates to:
  /// **'Either path unlocks the same features.'**
  String get onboardingPathsBody;

  /// Card title for the Shizuku route on slide 4
  ///
  /// In en, this message translates to:
  /// **'Shizuku (no root)'**
  String get onboardingPathsShizukuTitle;

  /// Card description for the Shizuku route on slide 4
  ///
  /// In en, this message translates to:
  /// **'Recommended for most phones. Requires one-time setup with wireless debugging.'**
  String get onboardingPathsShizukuSubtitle;

  /// Card title for the root route on slide 4
  ///
  /// In en, this message translates to:
  /// **'Root (Magisk / KernelSU)'**
  String get onboardingPathsRootTitle;

  /// Card description for the root route on slide 4
  ///
  /// In en, this message translates to:
  /// **'If your device is already rooted, MoniTune detects it automatically.'**
  String get onboardingPathsRootSubtitle;

  /// Title of onboarding slide 5
  ///
  /// In en, this message translates to:
  /// **'Setting up Shizuku'**
  String get onboardingShizukuStepsTitle;

  /// Body paragraph of onboarding slide 5
  ///
  /// In en, this message translates to:
  /// **'Install Shizuku, then start it once. MoniTune will guide you from there.'**
  String get onboardingShizukuStepsBody;

  /// Step 1 instruction for Shizuku setup
  ///
  /// In en, this message translates to:
  /// **'Install Shizuku from the official site or GitHub Releases.'**
  String get onboardingShizukuStep1;

  /// Step 2 instruction for Shizuku setup
  ///
  /// In en, this message translates to:
  /// **'Open Shizuku and start it via Wireless debugging (Android 11+) or ADB.'**
  String get onboardingShizukuStep2;

  /// Step 3 instruction for Shizuku setup
  ///
  /// In en, this message translates to:
  /// **'Return to MoniTune and tap \"Authorize with Shizuku\".'**
  String get onboardingShizukuStep3;

  /// Button opening official Shizuku setup website
  ///
  /// In en, this message translates to:
  /// **'Open Shizuku setup guide'**
  String get onboardingShizukuGuideButton;

  /// Title of onboarding slide 6
  ///
  /// In en, this message translates to:
  /// **'One-time setup'**
  String get onboardingOneTimeTitle;

  /// Body paragraph of onboarding slide 6
  ///
  /// In en, this message translates to:
  /// **'While Shizuku (or root) is available, MoniTune can grant itself a permanent WRITE_SECURE_SETTINGS permission.'**
  String get onboardingOneTimeBody;

  /// Bullet 1 of onboarding slide 6
  ///
  /// In en, this message translates to:
  /// **'Grant it once — afterwards MoniTune works with no Shizuku, no ADB and no Wi-Fi.'**
  String get onboardingOneTimeBullet1;

  /// Bullet 2 of onboarding slide 6
  ///
  /// In en, this message translates to:
  /// **'The grant survives reboots.'**
  String get onboardingOneTimeBullet2;

  /// Bullet 3 of onboarding slide 6
  ///
  /// In en, this message translates to:
  /// **'Shizuku only needs to be running for that single moment.'**
  String get onboardingOneTimeBullet3;

  /// Title of onboarding slide 7
  ///
  /// In en, this message translates to:
  /// **'Built-in safety'**
  String get onboardingSafetyTitle;

  /// Body paragraph of onboarding slide 7
  ///
  /// In en, this message translates to:
  /// **'Changing display size can leave a screen unreadable, so MoniTune protects you.'**
  String get onboardingSafetyBody;

  /// Bullet 1 of onboarding slide 7
  ///
  /// In en, this message translates to:
  /// **'Test mode auto-reverts after 15 seconds unless you tap \"Keep Settings\".'**
  String get onboardingSafetyBullet1;

  /// Bullet 2 of onboarding slide 7
  ///
  /// In en, this message translates to:
  /// **'Turning the screen off restores your native resolution automatically.'**
  String get onboardingSafetyBullet2;

  /// Bullet 3 of onboarding slide 7
  ///
  /// In en, this message translates to:
  /// **'Launcher-safe mode skips density changes so MIUI/HyperOS icons stay put.'**
  String get onboardingSafetyBullet3;

  /// Title of onboarding slide 8
  ///
  /// In en, this message translates to:
  /// **'You are ready'**
  String get onboardingReadyTitle;

  /// Body paragraph of onboarding slide 8
  ///
  /// In en, this message translates to:
  /// **'Set up your privileged access and the two special permissions next. Then choose your resolution and scale, and test with the 15-second safety revert before keeping your settings.'**
  String get onboardingReadyBody;

  /// Bullet 1 of onboarding slide 8
  ///
  /// In en, this message translates to:
  /// **'Auto-apply: apply your profile the moment a monitor connects, and reset when it unplugs.'**
  String get onboardingReadyBullet1;

  /// Bullet 2 of onboarding slide 8
  ///
  /// In en, this message translates to:
  /// **'Force Landscape overrides every app\'s orientation — including the HyperOS launcher (Android 12+).'**
  String get onboardingReadyBullet2;

  /// Bullet 3 of onboarding slide 8
  ///
  /// In en, this message translates to:
  /// **'On Android 12+, MoniTune can take its colours from your wallpaper (Material You).'**
  String get onboardingReadyBullet3;

  /// Action button navigating directly to AccessScreen
  ///
  /// In en, this message translates to:
  /// **'Set up access now'**
  String get onboardingReadyButton;

  /// App version label without build number
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String infoVersion(String version);

  /// App version label with build number
  ///
  /// In en, this message translates to:
  /// **'Version {version} · build {buildNumber}'**
  String infoVersionWithBuild(String version, String buildNumber);

  /// Button label while update check is in progress
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get infoChecking;

  /// Status text while checking GitHub releases for updates
  ///
  /// In en, this message translates to:
  /// **'Checking for updates…'**
  String get infoCheckingForUpdates;

  /// Button label to manually check GitHub for app updates
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get infoCheckForUpdates;

  /// Link label pointing to project GitHub releases
  ///
  /// In en, this message translates to:
  /// **'Distributed via GitHub Releases'**
  String get infoDistributedVia;

  /// Link label pointing to open-source repository
  ///
  /// In en, this message translates to:
  /// **'MIT licensed · source available'**
  String get infoMitLicense;

  /// Privacy assurance notice row in info sheet
  ///
  /// In en, this message translates to:
  /// **'Nothing leaves this device unless you check for updates'**
  String get infoPrivacyNotice;

  /// Button opening the release URL in web browser
  ///
  /// In en, this message translates to:
  /// **'Open release page'**
  String get infoOpenReleasePage;

  /// Button or link to open GitHub releases list
  ///
  /// In en, this message translates to:
  /// **'Open GitHub Releases'**
  String get infoOpenReleases;

  /// Error snackbar shown when device has no browser app installed
  ///
  /// In en, this message translates to:
  /// **'No browser available.'**
  String get infoNoBrowser;

  /// Message shown when a newer release is found on GitHub
  ///
  /// In en, this message translates to:
  /// **'MoniTune {version} is available.'**
  String infoUpdateAvailable(String version);

  /// Short notification badge or card title when a new release is available
  ///
  /// In en, this message translates to:
  /// **'New version {version} available'**
  String infoNewVersionAvailable(String version);

  /// Message shown when the current app version is the latest available
  ///
  /// In en, this message translates to:
  /// **'You are on the latest version ({version}).'**
  String infoUpdateUpToDate(String version);

  /// Short message indicating current version is latest
  ///
  /// In en, this message translates to:
  /// **'You\'re up to date'**
  String get infoUpdateUpToDateShort;

  /// Short error heading when update check fails
  ///
  /// In en, this message translates to:
  /// **'Update check failed'**
  String get infoUpdateFailed;

  /// Error message when GitHub API returns HTTP 403 or 429 rate limit
  ///
  /// In en, this message translates to:
  /// **'GitHub is rate-limiting this network right now. Try again in a few minutes.'**
  String get infoRateLimit;

  /// Error message when GitHub API returns a non-200 HTTP status
  ///
  /// In en, this message translates to:
  /// **'GitHub replied with status {statusCode}.'**
  String infoStatusError(int statusCode);

  /// Error message when GitHub API returns non-JSON or invalid response
  ///
  /// In en, this message translates to:
  /// **'Unexpected response from GitHub.'**
  String get infoUnexpectedResponse;

  /// Error message when GitHub API repository has no releases published
  ///
  /// In en, this message translates to:
  /// **'GitHub did not report a release.'**
  String get infoNoRelease;

  /// Error message when GitHub API request times out
  ///
  /// In en, this message translates to:
  /// **'GitHub did not respond in time.'**
  String get infoTimeout;

  /// Error message when device has no internet connectivity
  ///
  /// In en, this message translates to:
  /// **'No network connection.'**
  String get infoNoNetwork;

  /// Generic catch-all error message when update check fails
  ///
  /// In en, this message translates to:
  /// **'Could not check for updates.'**
  String get infoGenericError;

  /// Emergency recovery instruction explaining how turning off the screen triggers instant display reset
  ///
  /// In en, this message translates to:
  /// **'Turn screen off (Power button) to instantly cancel & revert'**
  String get safetyEmergencyRevertHint;

  /// Warning message reminding user of impending automatic rollback
  ///
  /// In en, this message translates to:
  /// **'Auto-reverting in {seconds}s unless confirmed'**
  String safetyTestRevertCountdown(int seconds);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
