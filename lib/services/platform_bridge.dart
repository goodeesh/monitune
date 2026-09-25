import 'package:flutter/services.dart';

/// Platform channel bridge to the native Kotlin layer.
class MonitunePlatform {
  static const _channel = MethodChannel('com.goodeesh.monitune/core');

  static Function(bool granted)? onShizukuPermissionResult;
  static Function()? onDisplayCountdownTimeout;

  static void init() {
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'onShizukuPermissionResult':
          onShizukuPermissionResult?.call(call.arguments as bool? ?? false);
          break;
        case 'onDisplayCountdownTimeout':
          onDisplayCountdownTimeout?.call();
          break;
      }
    });
  }

  static Future<Map<String, dynamic>> getDisplayStatus() async {
    final result = await _channel.invokeMethod('getDisplayStatus');
    return Map<String, dynamic>.from(result ?? {});
  }

  static Future<Map<String, dynamic>> getDeviceInfo() async {
    final result = await _channel.invokeMethod('getDeviceInfo');
    return Map<String, dynamic>.from(result ?? {});
  }

  static Future<bool> requestShizukuPermission() async {
    final result = await _channel.invokeMethod('requestShizukuPermission');
    return result as bool? ?? false;
  }

  static Future<Map<String, dynamic>> selfGrantWriteSecureSettings() async {
    final result = await _channel.invokeMethod('selfGrantWriteSecureSettings');
    return Map<String, dynamic>.from(result ?? {});
  }

  static Future<bool> hardenPhantomProcessKiller() async {
    final result = await _channel.invokeMethod('hardenPhantomProcessKiller');
    return result as bool? ?? false;
  }

  static Future<bool> applyDisplayProfile({
    required int width,
    required int height,
    required int scalePercent,
    bool forceLandscape = true,
    bool applyDensity = true,
  }) async {
    final result = await _channel.invokeMethod<bool>('applyDisplayProfile', {
      'width': width,
      'height': height,
      'scalePercent': scalePercent,
      'forceLandscape': forceLandscape,
      'applyDensity': applyDensity,
    });
    return result ?? false;
  }

  static Future<bool> resetDisplay() async {
    final result = await _channel.invokeMethod<bool>('resetDisplay');
    return result ?? false;
  }

  static Future<bool> startCountdownSafety({int seconds = 15}) async {
    final result = await _channel.invokeMethod<bool>('startCountdownSafety', {
      'seconds': seconds,
    });
    return result ?? false;
  }

  static Future<bool> confirmDisplayProfile() async {
    final result = await _channel.invokeMethod<bool>('confirmDisplayProfile');
    return result ?? false;
  }

  /// Forces/releases landscape even for apps that request portrait (Android 12+).
  /// Returns a structured result: {status, applied, total, verified, results[]}.
  static Future<Map<String, dynamic>> setOrientationLock({required bool landscape}) async {
    final result = await _channel.invokeMethod('setOrientationLock', {
      'landscape': landscape,
    });
    return Map<String, dynamic>.from(result ?? {});
  }

  /// True when Shizuku (running + authorized) or root can run shell commands.
  static Future<bool> hasPrivilegedShell() async {
    final result = await _channel.invokeMethod<bool>('hasPrivilegedShell');
    return result ?? false;
  }

  /// Whether "Display over other apps" is granted (required for the overlay
  /// that forces landscape).
  static Future<bool> hasOverlayPermission() async {
    final result = await _channel.invokeMethod<bool>('hasOverlayPermission');
    return result ?? false;
  }

  /// Opens the system screen to grant "Display over other apps".
  static Future<void> requestOverlayPermission() async {
    await _channel.invokeMethod('requestOverlayPermission');
  }

  /// Whether "Modify system settings" (WRITE_SETTINGS) is granted.
  static Future<bool> hasWriteSettingsPermission() async {
    final result = await _channel.invokeMethod<bool>('hasWriteSettingsPermission');
    return result ?? false;
  }

  /// Opens the system screen to grant "Modify system settings".
  static Future<void> requestWriteSettingsPermission() async {
    await _channel.invokeMethod('requestWriteSettingsPermission');
  }

  /// Whether POST_NOTIFICATIONS is granted (needed for the auto-apply watcher).
  static Future<bool> hasNotificationPermission() async {
    final result = await _channel.invokeMethod<bool>('hasNotificationPermission');
    return result ?? true;
  }

  static Future<void> requestNotificationPermission() async {
    await _channel.invokeMethod('requestNotificationPermission');
  }

  /// Starts/stops the invisible overlay window that forces landscape.
  static Future<bool> startOrientationOverlay() async {
    final result = await _channel.invokeMethod<bool>('startOrientationOverlay');
    return result ?? false;
  }

  static Future<bool> stopOrientationOverlay() async {
    final result = await _channel.invokeMethod<bool>('stopOrientationOverlay');
    return result ?? false;
  }

  static Future<bool> isOrientationOverlayRunning() async {
    final result = await _channel.invokeMethod<bool>('isOrientationOverlayRunning');
    return result ?? false;
  }

  /// Starts the background watcher that auto-applies the profile when an
  /// external display connects.
  static Future<bool> startExternalDisplayWatch({
    required int width,
    required int height,
    required int scalePercent,
    required bool forceLandscape,
    required bool applyDensity,
    required bool autoReset,
  }) async {
    final result = await _channel.invokeMethod<bool>('startExternalDisplayWatch', {
      'width': width,
      'height': height,
      'scalePercent': scalePercent,
      'forceLandscape': forceLandscape,
      'applyDensity': applyDensity,
      'autoReset': autoReset,
    });
    return result ?? false;
  }

  static Future<bool> updateExternalDisplayWatch({
    required int width,
    required int height,
    required int scalePercent,
    required bool forceLandscape,
    required bool applyDensity,
    required bool autoReset,
  }) async {
    final result = await _channel.invokeMethod<bool>('updateExternalDisplayWatch', {
      'width': width,
      'height': height,
      'scalePercent': scalePercent,
      'forceLandscape': forceLandscape,
      'applyDensity': applyDensity,
      'autoReset': autoReset,
    });
    return result ?? false;
  }

  static Future<bool> stopExternalDisplayWatch() async {
    final result = await _channel.invokeMethod<bool>('stopExternalDisplayWatch');
    return result ?? false;
  }

  static Future<bool> isExternalDisplayWatchRunning() async {
    final result = await _channel.invokeMethod<bool>('isExternalDisplayWatchRunning');
    return result ?? false;
  }

  static Future<String?> getExternalDisplayName() async {
    return _channel.invokeMethod<String>('getExternalDisplayName');
  }

  static Future<bool> isBatteryOptimized() async {
    final result = await _channel.invokeMethod('isBatteryOptimized');
    return result as bool? ?? true;
  }

  static Future<void> requestBatteryOptimization() async {
    await _channel.invokeMethod('requestBatteryOptimization');
  }
}
