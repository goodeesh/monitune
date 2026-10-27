import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/services/platform_bridge.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/version.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('blackoutOnConnect defaults to false and persists when toggled', () async {
    SharedPreferences.setMockInitialValues({});
    final state = AppState();
    await state.init();

    expect(state.blackoutOnConnect, isFalse);

    await state.setBlackoutOnConnect(true);
    expect(state.blackoutOnConnect, isTrue);

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_blackout_external'), isTrue);
  });

  test('disabling autoApplyOnExternalDisplay deactivates blackoutOnConnect', () async {
    SharedPreferences.setMockInitialValues({
      'auto_apply_external': true,
      'auto_blackout_external': true,
    });
    final state = AppState();
    await state.init();

    expect(state.autoApplyOnExternalDisplay, isTrue);
    expect(state.blackoutOnConnect, isTrue);

    await state.setAutoApplyOnExternalDisplay(false);
    expect(state.autoApplyOnExternalDisplay, isFalse);
    expect(state.blackoutOnConnect, isFalse);

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_blackout_external'), isFalse);
  });

  test('blackoutOnConnect resets to false if autoApplyOnExternalDisplay is false on init', () async {
    SharedPreferences.setMockInitialValues({
      'auto_apply_external': false,
      'auto_blackout_external': true,
    });
    final state = AppState();
    await state.init();

    expect(state.autoApplyOnExternalDisplay, isFalse);
    expect(state.blackoutOnConnect, isFalse);
  });

  test('AppState.init memoizes its Future', () {
    SharedPreferences.setMockInitialValues({});
    final state = AppState();
    final f1 = state.init();
    final f2 = state.init();
    expect(identical(f1, f2), isTrue);
  });

  test('startExternalDisplayWatch forwards blackoutPhone in method call arguments', () async {
    Map<String, dynamic>? capturedArgs;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('com.goodeesh.monitune/core'),
      (call) async {
        if (call.method == 'startExternalDisplayWatch') {
          capturedArgs = Map<String, dynamic>.from(call.arguments as Map);
        }
        return true;
      },
    );

    await MonitunePlatform.startExternalDisplayWatch(
      width: 1920,
      height: 1080,
      scalePercent: 100,
      forceLandscape: true,
      applyDensity: true,
      autoReset: true,
      blackoutPhone: true,
    );

    expect(capturedArgs, isNotNull);
    expect(capturedArgs!['blackoutPhone'], isTrue);
  });

  test('initialize revives auto watch if autoApplyOnExternalDisplay was enabled but watch was not running', () async {
    SharedPreferences.setMockInitialValues({
      'auto_apply_external': true,
      'auto_blackout_external': true,
    });
    bool watchStarted = false;
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('com.goodeesh.monitune/core'),
      (call) async {
        switch (call.method) {
          case 'isExternalDisplayWatchRunning':
            return false;
          case 'startExternalDisplayWatch':
            watchStarted = true;
            return true;
          case 'getDisplayStatus':
            return <String, dynamic>{};
          case 'isBatteryOptimized':
            return false;
          default:
            return null;
        }
      },
    );

    final state = AppState();
    await state.initialize();

    expect(state.autoApplyOnExternalDisplay, isTrue);
    expect(watchStarted, isTrue);
  });

  test('persisted update notifications are cleared if current app version is >= known update version', () async {
    SharedPreferences.setMockInitialValues({
      'update_checked_version': '1.1.0',
      'update_known_version': AppVersion.current,
      'update_known_url': 'https://github.com/goodeesh/monitune/releases/tag/v1.2.1',
    });
    final state = AppState();
    await state.init();

    expect(state.hasKnownUpdate, isFalse);
    expect(state.knownUpdateVersion, isNull);
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.containsKey('update_known_version'), isFalse);
  });
}
