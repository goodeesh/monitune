import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:monitune/screens/access_screen.dart';
import 'package:monitune/screens/display_screen.dart';
import 'package:monitune/screens/home_screen.dart';
import 'package:monitune/screens/onboarding/onboarding_flow.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/version.dart';
import 'package:monitune/theme/monitune_theme.dart';
import 'package:monitune/l10n/l10n.dart';
import 'package:monitune/l10n/app_localizations_pt.dart';
import 'package:monitune/l10n/app_localizations_zh.dart';
import 'package:monitune/main.dart';

/// Smoke tests: every screen must build and animate without throwing. These
/// catch theme/motion mistakes (for example reading an inherited widget during
/// initState) that only show up at runtime.
void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      const MethodChannel('com.goodeesh.monitune/core'),
      (call) async => true,
    );
  });

  test('AppState updates locale and persists to SharedPreferences', () async {
    SharedPreferences.setMockInitialValues({});
    final state = AppState();
    await state.initialize();
    expect(state.appLocale, isNull); // Default system locale

    await state.setLanguage('pt');
    expect(state.appLocale, const Locale('pt'));
    expect(state.selectedLanguageCode, 'pt');

    final state2 = AppState();
    await state2.initialize();
    expect(state2.appLocale, const Locale('pt'));
    expect(state2.selectedLanguageCode, 'pt');

    await state.setLanguage('pt_BR');
    expect(state.appLocale, const Locale('pt', 'BR'));
    expect(state.selectedLanguageCode, 'pt_BR');

    await state.setLanguage('pt-BR');
    expect(state.appLocale, const Locale('pt', 'BR'));
    expect(state.selectedLanguageCode, 'pt-BR');

    await state.setLanguage(null);
    expect(state.appLocale, isNull);
    expect(state.selectedLanguageCode, isNull);

    final state3 = AppState();
    await state3.initialize();
    expect(state3.appLocale, isNull);
    expect(state3.selectedLanguageCode, isNull);
  });

  test('AppState resolves zh_TW to AppLocalizationsZhHant and pt_BR to AppLocalizationsPtBr', () async {
    final state = AppState();
    await state.setLanguage('zh_TW');
    expect(
      state.appLocale,
      const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    );
    final zhLoc = lookupAppLocalizations(state.appLocale!);
    expect(zhLoc, isA<AppLocalizationsZhHant>());

    await state.setLanguage('pt_BR');
    expect(state.appLocale, const Locale('pt', 'BR'));
    final ptLoc = lookupAppLocalizations(state.appLocale!);
    expect(ptLoc, isA<AppLocalizationsPtBr>());
  });

  test('resolveAppLocale and basicLocaleListResolution resolve pt_BR to Locale pt, BR', () {
    final basicResolved = basicLocaleListResolution(
      [const Locale('pt', 'BR')],
      AppLocalizations.supportedLocales,
    );
    expect(basicResolved, const Locale('pt', 'BR'));

    final resolved = resolveAppLocale(
      [const Locale('pt', 'BR')],
      AppLocalizations.supportedLocales,
    );
    expect(resolved, const Locale('pt', 'BR'));

    final resolvedZhHant = resolveAppLocale(
      [const Locale('zh', 'TW')],
      AppLocalizations.supportedLocales,
    );
    expect(
      resolvedZhHant,
      const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    );

    // Multi-preference priority ordering
    final resolvedEnPriority = resolveAppLocale(
      [const Locale('en', 'US'), const Locale('zh', 'TW')],
      AppLocalizations.supportedLocales,
    );
    expect(resolvedEnPriority, const Locale('en'));

    final resolvedZhPriority = resolveAppLocale(
      [const Locale('zh', 'TW'), const Locale('en', 'US')],
      AppLocalizations.supportedLocales,
    );
    expect(
      resolvedZhPriority,
      const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    );
  });

  Widget wrap(Widget child, {Color seed = MoniTuneTheme.fallbackSeed, AppState? state}) {
    final appState = state ?? AppState();
    return ChangeNotifierProvider<AppState>.value(
      value: appState,
      child: MaterialApp(
        theme: MoniTuneTheme.build(seed: seed),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: child,
      ),
    );
  }

  Future<void> settle(WidgetTester tester) async {
    await tester.pump();
    // Past the longest reveal (620ms), the spring settles and any delayed
    // reveal timers, so nothing is left pending at teardown.
    await tester.pump(const Duration(milliseconds: 2000));
  }

  testWidgets('home builds and shows its primary actions', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Apply Test Profile'), findsOneWidget);
    expect(find.text('Reset Display to Phone Default'), findsOneWidget);
  });

  testWidgets('display builds with resolution, scaling and appearance', (tester) async {
    await tester.pumpWidget(wrap(const DisplayScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('TARGET RESOLUTION'), findsOneWidget);

    // The appearance section is below the fold, so scroll to it.
    await tester.scrollUntilVisible(find.text('APPEARANCE'), 240);
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Palette'), findsOneWidget);
    expect(find.text('Contrast'), findsOneWidget);
  });

  testWidgets('access builds', (tester) async {
    await tester.pumpWidget(wrap(const AccessScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('PRIVILEGED ACCESS'), findsOneWidget);
  });

  testWidgets('onboarding builds and advances', (tester) async {
    await tester.pumpWidget(wrap(const OnboardingFlow()));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Welcome to MoniTune'), findsOneWidget);

    await tester.tap(find.text('Next'));
    await settle(tester);
    expect(tester.takeException(), isNull);
  });

  testWidgets('the version row opens the app info sheet', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);

    // The entry point must be discoverable: a full-width row with normal
    // contrast that literally says what it does.
    await tester.scrollUntilVisible(
      find.text('MoniTune ${AppVersion.current}'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('MoniTune ${AppVersion.current}'), findsOneWidget);
    expect(find.text('Check for updates · MIT licensed'), findsOneWidget);

    await tester.tap(find.text('MoniTune ${AppVersion.current}'));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Check for updates'), findsOneWidget);
    expect(find.textContaining('Distributed via GitHub Releases'), findsOneWidget);
  });

  testWidgets('the app bar has an update shortcut', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.byIcon(Icons.system_update_alt_rounded), findsOneWidget);

    await tester.tap(find.byIcon(Icons.system_update_alt_rounded));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Check for updates'), findsOneWidget);
  });

  testWidgets('a wallpaper-like seed re-themes without errors', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen(), seed: const Color(0xFFD8A2C8)));
    await settle(tester);
    expect(tester.takeException(), isNull);
  });

  testWidgets('display screen renders language selector and changes language', (tester) async {
    final state = AppState();
    await tester.pumpWidget(wrap(const DisplayScreen(), state: state));
    await settle(tester);

    await tester.scrollUntilVisible(find.text('Language'), 300);
    await settle(tester);
    expect(find.text('Language'), findsOneWidget);

    await tester.tap(find.text('Language'));
    await settle(tester);

    expect(find.text('System default'), findsWidgets);
    expect(find.text('English'), findsOneWidget);
    expect(find.text('Português (Brasil)'), findsOneWidget);

    await tester.tap(find.text('Português (Brasil)'));
    await settle(tester);

    expect(state.selectedLanguageCode, 'pt_BR');
  });

  testWidgets('home screen renders blackout sub-switch only when auto-apply is on', (tester) async {
    final state = AppState();
    SharedPreferences.setMockInitialValues({'auto_apply_external': false});
    await state.init();

    await tester.pumpWidget(wrap(const HomeScreen(), state: state));
    await settle(tester);

    // With auto-apply OFF, blackout switch should not be visible
    expect(find.text('Blackout phone screen'), findsNothing);

    // Turn auto-apply ON
    await state.setAutoApplyOnExternalDisplay(true);
    await settle(tester);

    expect(find.text('Blackout phone screen'), findsOneWidget);
    expect(state.blackoutOnConnect, isFalse);

    // Tapping the sub-switch toggles blackoutOnConnect
    await tester.tap(find.text('Blackout phone screen'));
    await settle(tester);
    expect(state.blackoutOnConnect, isTrue);

    // Turning auto-apply back OFF hides the sub-switch
    await state.setAutoApplyOnExternalDisplay(false);
    await settle(tester);
    expect(find.text('Blackout phone screen'), findsNothing);
  });
}

