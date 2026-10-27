import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/state/app_state.dart';
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
  });
}
