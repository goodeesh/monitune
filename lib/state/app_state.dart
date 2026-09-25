import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:monitune/services/platform_bridge.dart';
import 'package:monitune/services/wallpaper_palette.dart';
import 'package:monitune/theme/monitune_theme.dart';

/// Central state for MoniTune. Display configuration and appearance only.
class AppState extends ChangeNotifier {
  SharedPreferences? _prefs;

  AppState() {
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      _onboardingComplete = _prefs?.getBool('onboarding_complete') ?? false;
      _targetResolution = _prefs?.getString('display_target_resolution') ?? '1080p';
      _customWidth = _prefs?.getInt('display_custom_width') ?? 1920;
      _customHeight = _prefs?.getInt('display_custom_height') ?? 1080;
      _uiScalePercent = _prefs?.getInt('display_ui_scale') ?? 100;
      _forceLandscape = _prefs?.getBool('display_force_landscape') ?? true;
      _launcherSafeDisplay = _prefs?.getBool('display_launcher_safe') ?? false;
      _autoResetOnExit = _prefs?.getBool('display_auto_reset_on_exit') ?? true;
      _autoApplyOnExternalDisplay = _prefs?.getBool('auto_apply_external') ?? false;
      _autoResetOnDisconnect = _prefs?.getBool('auto_reset_on_disconnect') ?? true;
      final savedSeed = _prefs?.getInt('appearance_seed');
      if (savedSeed != null) _accentSeed = Color(savedSeed);
      _useWallpaper = _prefs?.getBool('appearance_wallpaper') ?? false;
      _contrastBoost = _prefs?.getBool('appearance_contrast') ?? false;
      final savedVariant = _prefs?.getString('appearance_palette');
      if (savedVariant != null) {
        for (final variant in MoniTuneTheme.paletteVariants) {
          if (variant.name == savedVariant) {
            _paletteVariant = variant;
            break;
          }
        }
      }
      notifyListeners();
    } catch (_) {}
  }

  // ── Onboarding ──
  bool _onboardingComplete = false;
  bool get onboardingComplete => _onboardingComplete;

  Future<void> completeOnboarding() async {
    _onboardingComplete = true;
    await _prefs?.setBool('onboarding_complete', true);
    notifyListeners();
  }

  // ── Device Info ──
  Map<String, dynamic> _deviceInfo = {};
  Map<String, dynamic> get deviceInfo => _deviceInfo;
  bool get isMiuiLauncher => _deviceInfo['isMiuiLauncher'] == true;
  String get deviceLabel {
    final brand = _deviceInfo['brand']?.toString() ?? '';
    final model = _deviceInfo['model']?.toString() ?? 'Android device';
    return brand.isEmpty ? model : '$brand $model';
  }

  // ── Privilege / Display status ──
  Map<String, dynamic> _status = {};
  Map<String, dynamic> get status => _status;
  bool get isShizukuAvailable => _status['isShizukuAvailable'] == true;
  bool get isShizukuGranted => _status['isShizukuGranted'] == true;
  bool get hasRoot => _status['hasRoot'] == true;
  bool get hasWriteSecureSettings => _status['hasWriteSecureSettings'] == true;
  bool get isCustomDisplayActive => _status['isCustomActive'] == true;
  bool get isPpkHardened => _status['ppkHardened'] == true;
  bool get hasAnyAccess => hasWriteSecureSettings || isShizukuGranted || hasRoot;
  int get nativeWidth => (_deviceInfo['nativeWidth'] as num?)?.toInt() ?? (_status['width'] as num?)?.toInt() ?? 1920;
  int get nativeHeight => (_deviceInfo['nativeHeight'] as num?)?.toInt() ?? (_status['height'] as num?)?.toInt() ?? 1080;

  // ── Display settings ──
  String _targetResolution = '1080p';
  int _customWidth = 1920;
  int _customHeight = 1080;
  int _uiScalePercent = 100;
  bool _forceLandscape = true;
  bool _launcherSafeDisplay = false;
  bool _autoResetOnExit = true;
  bool _isTestingResolution = false;

  String get targetResolution => _targetResolution;
  int get customWidth => _customWidth;
  int get customHeight => _customHeight;
  int get uiScalePercent => _uiScalePercent;
  bool get forceLandscape => _forceLandscape;
  bool get launcherSafeDisplay => _launcherSafeDisplay;
  bool get autoResetOnExit => _autoResetOnExit;
  bool get isTestingResolution => _isTestingResolution;

  // ── Auto-apply on external display ──
  bool _autoApplyOnExternalDisplay = false;
  bool _autoResetOnDisconnect = true;
  bool _isAutoWatchRunning = false;
  String? _externalDisplayName;
  int _testSecondsRemaining = 0;
  Timer? _testCountdownTimer;

  bool get autoApplyOnExternalDisplay => _autoApplyOnExternalDisplay;
  bool get autoResetOnDisconnect => _autoResetOnDisconnect;
  bool get isAutoWatchRunning => _isAutoWatchRunning;
  String? get externalDisplayName => _externalDisplayName;
  int get testSecondsRemaining => _testSecondsRemaining;
  bool get isOrientationOverrideActive => _status['isOrientationOverrideActive'] == true;

  // ── Appearance (Material You / accent) ──
  Color _accentSeed = MoniTuneTheme.fallbackSeed;
  bool _useWallpaper = false;
  bool _contrastBoost = false;
  DynamicSchemeVariant _paletteVariant = DynamicSchemeVariant.vibrant;
  Color? _wallpaperSeed;
  bool _wallpaperChecked = false;

  /// The manually chosen accent (also the fallback when no wallpaper palette).
  Color get accentSeed => _accentSeed;

  /// Whether the Android wallpaper palette drives the colours.
  bool get useWallpaper => _useWallpaper;

  /// Raised contrast for very bright wallpaper palettes, or for a big monitor.
  bool get contrastBoost => _contrastBoost;

  /// Which Material 3 scheme variant builds the palette.
  DynamicSchemeVariant get paletteVariant => _paletteVariant;

  /// The last wallpaper seed read from the OS; `null` if unavailable.
  Color? get wallpaperSeed => _wallpaperSeed;

  /// False until the first wallpaper lookup has completed, so the UI can tell
  /// "unavailable" from "not checked yet".
  bool get wallpaperSupported => _wallpaperSeed != null;

  bool get wallpaperChecked => _wallpaperChecked;

  /// M3 `contrastLevel` for the current preference.
  double get contrastLevel => _contrastBoost ? 0.4 : 0.0;

  /// The seed the theme is built from.
  Color get activeSeed => _useWallpaper && _wallpaperSeed != null ? _wallpaperSeed! : _accentSeed;

  /// True when the active colours come from the wallpaper rather than the picker.
  bool get usingWallpaperColors => _useWallpaper && _wallpaperSeed != null;

  Future<void> setAccentSeed(Color color) async {
    if (_accentSeed == color) return;
    _accentSeed = color;
    await _prefs?.setInt('appearance_seed', color.toARGB32());
    notifyListeners();
  }

  Future<void> setUseWallpaper(bool value) async {
    if (_useWallpaper == value) return;
    _useWallpaper = value;
    await _prefs?.setBool('appearance_wallpaper', value);
    if (value) await refreshWallpaperSeed();
    notifyListeners();
  }

  Future<void> setContrastBoost(bool value) async {
    if (_contrastBoost == value) return;
    _contrastBoost = value;
    await _prefs?.setBool('appearance_contrast', value);
    notifyListeners();
  }

  Future<void> setPaletteVariant(DynamicSchemeVariant value) async {
    if (_paletteVariant == value) return;
    _paletteVariant = value;
    await _prefs?.setString('appearance_palette', value.name);
    notifyListeners();
  }

  /// Re-reads the OS palette. Called on launch, when the user enables the
  /// toggle, and whenever the app returns to the foreground (the wallpaper may
  /// have changed while it was away).
  Future<void> refreshWallpaperSeed() async {
    try {
      final seed = await WallpaperPalette.seedColor();
      if (_disposed) return;
      _wallpaperSeed = seed;
      _wallpaperChecked = true;
      notifyListeners();
    } catch (_) {}
  }

  bool _disposed = false;

  @override
  void dispose() {
    _disposed = true;
    _testCountdownTimer?.cancel();
    super.dispose();
  }

  int get calculatedDpi => ((160.0 * (_uiScalePercent / 100.0)).toInt()).clamp(72, 640);

  (int, int) get effectiveResolution {
    switch (_targetResolution) {
      case '720p':
        return (1280, 720);
      case '1080p':
        return (1920, 1080);
      case '1440p':
        return (2560, 1440);
      case '4K':
        return (3840, 2160);
      case 'ultrawide':
        return (2560, 1080);
      case 'custom':
        return (_customWidth, _customHeight);
      case 'native':
      default:
        return (nativeWidth, nativeHeight);
    }
  }

  // ── Error ──
  String? _errorMessage;
  String? get errorMessage => _errorMessage;
  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  // ── Initialization ──
  Future<void> initialize() async {
    MonitunePlatform.onShizukuPermissionResult = (_) => refreshStatus();
    MonitunePlatform.onDisplayCountdownTimeout = () async {
      _isTestingResolution = false;
      // The auto-revert also releases the landscape lock.
      await MonitunePlatform.stopOrientationOverlay();
      await refreshStatus();
      notifyListeners();
    };

    await refreshStatus();
    await loadDeviceInfo();
    await refreshBatteryOptimization();
    await refreshAutoWatchStatus();
    await refreshWallpaperSeed();
  }

  Future<void> refreshStatus() async {
    try {
      _status = await MonitunePlatform.getDisplayStatus();
      _externalDisplayName = await MonitunePlatform.getExternalDisplayName();
      notifyListeners();
    } catch (_) {}
  }

  Future<void> loadDeviceInfo() async {
    try {
      _deviceInfo = await MonitunePlatform.getDeviceInfo();
      notifyListeners();
    } catch (_) {}
  }

  // ── Setters ──
  void setTargetResolution(String resolution, {int? width, int? height}) {
    _targetResolution = resolution;
    _prefs?.setString('display_target_resolution', resolution);
    if (width != null) {
      _customWidth = width;
      _prefs?.setInt('display_custom_width', width);
    }
    if (height != null) {
      _customHeight = height;
      _prefs?.setInt('display_custom_height', height);
    }
    notifyListeners();
  }

  void setUiScalePercent(int scale) {
    _uiScalePercent = scale;
    _prefs?.setInt('display_ui_scale', scale);
    notifyListeners();
  }

  void setForceLandscape(bool enabled) {
    _forceLandscape = enabled;
    _prefs?.setBool('display_force_landscape', enabled);
    notifyListeners();
  }

  void setLauncherSafeDisplay(bool enabled) {
    _launcherSafeDisplay = enabled;
    _prefs?.setBool('display_launcher_safe', enabled);
    notifyListeners();
  }

  void setAutoResetOnExit(bool enabled) {
    _autoResetOnExit = enabled;
    _prefs?.setBool('display_auto_reset_on_exit', enabled);
    notifyListeners();
  }

  // ── Auto-apply on external display ──

  Future<void> setAutoApplyOnExternalDisplay(bool enabled) async {
    _autoApplyOnExternalDisplay = enabled;
    await _prefs?.setBool('auto_apply_external', enabled);
    notifyListeners();
    if (enabled) {
      await _startWatch();
    } else {
      await MonitunePlatform.stopExternalDisplayWatch();
      _isAutoWatchRunning = false;
      notifyListeners();
    }
  }

  Future<void> setAutoResetOnDisconnect(bool enabled) async {
    _autoResetOnDisconnect = enabled;
    await _prefs?.setBool('auto_reset_on_disconnect', enabled);
    notifyListeners();
    if (_isAutoWatchRunning) await _updateWatch();
  }

  Future<void> _startWatch() async {
    final (width, height) = effectiveResolution;
    final ok = await MonitunePlatform.startExternalDisplayWatch(
      width: width,
      height: height,
      scalePercent: _uiScalePercent,
      forceLandscape: _forceLandscape,
      applyDensity: !_launcherSafeDisplay,
      autoReset: _autoResetOnDisconnect,
    );
    _isAutoWatchRunning = ok && await MonitunePlatform.isExternalDisplayWatchRunning();
    notifyListeners();
  }

  Future<void> _updateWatch() async {
    final (width, height) = effectiveResolution;
    await MonitunePlatform.updateExternalDisplayWatch(
      width: width,
      height: height,
      scalePercent: _uiScalePercent,
      forceLandscape: _forceLandscape,
      applyDensity: !_launcherSafeDisplay,
      autoReset: _autoResetOnDisconnect,
    );
    _isAutoWatchRunning = await MonitunePlatform.isExternalDisplayWatchRunning();
    notifyListeners();
  }

  Future<void> refreshAutoWatchStatus() async {
    try {
      _isAutoWatchRunning = await MonitunePlatform.isExternalDisplayWatchRunning();
      _externalDisplayName = await MonitunePlatform.getExternalDisplayName();
      notifyListeners();
    } catch (_) {}
  }

  // ── Privileged actions ──
  Future<bool> requestShizukuPermission() async {
    final ok = await MonitunePlatform.requestShizukuPermission();
    await refreshStatus();
    return ok;
  }

  /// Grants a permanent WRITE_SECURE_SETTINGS permission via Shizuku/root, so
  /// display switching works without Shizuku afterwards.
  Future<bool> selfGrantWriteSecureSettings() async {
    final result = await MonitunePlatform.selfGrantWriteSecureSettings();
    await refreshStatus();
    return result['granted'] == true;
  }

  Future<bool> hardenPhantomProcessKiller() async {
    final ok = await MonitunePlatform.hardenPhantomProcessKiller();
    await refreshStatus();
    return ok;
  }

  // ── Display actions ──
  Future<bool> testDisplayProfile({int countdownSeconds = 15}) async {
    final (width, height) = effectiveResolution;
    _isTestingResolution = true;
    _testSecondsRemaining = countdownSeconds;
    notifyListeners();

    final applied = await MonitunePlatform.applyDisplayProfile(
      width: width,
      height: height,
      scalePercent: _uiScalePercent,
      forceLandscape: _forceLandscape,
      applyDensity: !_launcherSafeDisplay,
    );

    if (applied) {
      // Landscape is part of applying the profile, not the toggle.
      if (_forceLandscape) {
        await MonitunePlatform.startOrientationOverlay();
      }
      await MonitunePlatform.startCountdownSafety(seconds: countdownSeconds);
      _startTestCountdown(countdownSeconds);
    } else {
      _isTestingResolution = false;
      _testSecondsRemaining = 0;
    }
    if (_autoApplyOnExternalDisplay && _isAutoWatchRunning) {
      await _updateWatch();
    }
    await refreshStatus();
    notifyListeners();
    return applied;
  }

  void _startTestCountdown(int seconds) {
    _testCountdownTimer?.cancel();
    _testCountdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_testSecondsRemaining > 1) {
        _testSecondsRemaining -= 1;
        notifyListeners();
      } else {
        _testCountdownTimer?.cancel();
        _testCountdownTimer = null;
        _testSecondsRemaining = 0;
        _isTestingResolution = false;
        notifyListeners();
      }
    });
  }

  void _stopTestCountdown() {
    _testCountdownTimer?.cancel();
    _testCountdownTimer = null;
    _testSecondsRemaining = 0;
  }

  Future<void> confirmDisplayProfile() async {
    _isTestingResolution = false;
    _stopTestCountdown();
    await MonitunePlatform.confirmDisplayProfile();
    await refreshStatus();
    notifyListeners();
  }

  Future<void> resetDisplayToNative() async {
    _isTestingResolution = false;
    _stopTestCountdown();
    await MonitunePlatform.stopOrientationOverlay();
    await MonitunePlatform.resetDisplay();
    await refreshStatus();
    notifyListeners();
  }

  /// Applies (or releases) the system-wide landscape override immediately.
  /// The mechanism is an invisible overlay window (needs "Display over other
  /// apps") plus persisted rotation settings (needs "Modify system settings");
  /// the Shizuku shell levers are applied as a harmless bonus.
  Future<OrientationLockResult> setOrientationLock(bool landscape) async {
    if (landscape && !canForceLandscape) {
      return const OrientationLockResult(
        status: 'needs_permissions',
        applied: 0,
        total: 0,
        verified: '',
      );
    }

    if (landscape) {
      await MonitunePlatform.startOrientationOverlay();
      await MonitunePlatform.setOrientationLock(landscape: true);
    } else {
      await MonitunePlatform.stopOrientationOverlay();
      await MonitunePlatform.setOrientationLock(landscape: false);
    }
    await refreshStatus();

    final running = await MonitunePlatform.isOrientationOverlayRunning();
    final ok = landscape ? running : !running;
    return OrientationLockResult(
      status: ok ? 'ok' : 'failed',
      applied: ok ? 1 : 0,
      total: 1,
      verified: running ? 'overlay' : '',
    );
  }

  Future<void> requestOverlayPermission() async {
    await MonitunePlatform.requestOverlayPermission();
  }

  Future<void> requestWriteSettingsPermission() async {
    await MonitunePlatform.requestWriteSettingsPermission();
  }

  Future<void> requestNotificationPermission() async {
    await MonitunePlatform.requestNotificationPermission();
    await refreshStatus();
  }

  /// True when Shizuku (running + authorized) or root can run shell commands.
  bool get hasPrivilegedShell => _status['hasPrivilegedShell'] == true;

  /// True when "Display over other apps" is granted (required for the overlay).
  bool get hasOverlayPermission => _status['hasOverlayPermission'] == true;

  /// True when "Modify system settings" is granted.
  bool get hasWriteSettingsPermission => _status['hasWriteSettingsPermission'] == true;

  /// True when POST_NOTIFICATIONS is granted.
  bool get hasNotificationPermission => _status['hasNotificationPermission'] != false;

  /// Force Landscape requires both special permissions.
  bool get canForceLandscape => hasOverlayPermission && hasWriteSettingsPermission;

  /// True while the invisible landscape overlay is active.
  bool get isOrientationOverlayRunning => _status['orientationOverlayRunning'] == true;

  // ── Battery optimization ──
  bool _isBatteryOptimized = true;
  bool get isBatteryOptimized => _isBatteryOptimized;

  Future<void> refreshBatteryOptimization() async {
    try {
      _isBatteryOptimized = await MonitunePlatform.isBatteryOptimized();
      notifyListeners();
    } catch (_) {}
  }

  Future<void> requestBatteryOptimization() async {
    await MonitunePlatform.requestBatteryOptimization();
    await Future.delayed(const Duration(seconds: 1));
    await refreshBatteryOptimization();
  }
}

/// Structured result of applying/releasing the landscape orientation override.
class OrientationLockResult {
  final String status;
  final int applied;
  final int total;
  final String verified;

  const OrientationLockResult({
    required this.status,
    required this.applied,
    required this.total,
    required this.verified,
  });

  bool get ok => status == 'ok';
  bool get needsPermissions => status == 'needs_permissions';

  String get summary {
    switch (status) {
      case 'ok':
        return 'Landscape lock active. The home screen and recents should stay '
            'landscape while it is on.';
      case 'needs_permissions':
        return 'Force Landscape needs both "Display over other apps" and '
            '"Modify system settings" for MoniTune. Grant them, then try again.';
      default:
        return 'The landscape lock could not be applied.';
    }
  }
}
