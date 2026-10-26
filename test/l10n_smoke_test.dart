import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:monitune/l10n/l10n.dart';
import 'package:monitune/screens/access_screen.dart';
import 'package:monitune/screens/app_info_sheet.dart';
import 'package:monitune/screens/display_screen.dart';
import 'package:monitune/screens/home_screen.dart';
import 'package:monitune/screens/onboarding/onboarding_flow.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/theme/monitune_theme.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
    PackageInfo.setMockInitialValues(
      appName: 'MoniTune',
      packageName: 'com.monitune.monitune',
      version: '0.9.1',
      buildNumber: '1',
      buildSignature: '',
    );
  });

  final testLocales = <String, Locale>{
    'English': const Locale('en'),
    'Brazilian Portuguese': const Locale('pt', 'BR'),
    'Simplified Chinese': const Locale('zh'),
    'Traditional Chinese': const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    'German': const Locale('de'),
    'Arabic': const Locale('ar'),
    'Japanese': const Locale('ja'),
    'Russian': const Locale('ru'),
  };

  Widget wrap(
    Widget child, {
    required Locale locale,
    AppState? state,
    Color seed = MoniTuneTheme.fallbackSeed,
  }) {
    final appState = state ?? AppState();
    return ChangeNotifierProvider<AppState>.value(
      value: appState,
      child: MaterialApp(
        theme: MoniTuneTheme.build(seed: seed),
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: child,
      ),
    );
  }

  Future<void> settle(WidgetTester tester) async {
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 2000));
  }

  group('Multi-Locale Primary Screens Rendering', () {
    for (final entry in testLocales.entries) {
      final name = entry.key;
      final locale = entry.value;

      testWidgets('HomeScreen renders in $name ($locale)', (tester) async {
        final loc = lookupAppLocalizations(locale);
        await tester.pumpWidget(wrap(const HomeScreen(), locale: locale));
        await settle(tester);

        expect(tester.takeException(), isNull);

        // Verify Directionality
        final expectedDirection =
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
        expect(
          Directionality.of(tester.element(find.byType(HomeScreen))),
          expectedDirection,
        );

        // Verify translated primary actions appear
        expect(find.text(loc.homeApplyTestProfile), findsOneWidget);
        expect(find.text(loc.homeResetDisplayToNative), findsOneWidget);
      });

      testWidgets('DisplayScreen renders in $name ($locale)', (tester) async {
        final loc = lookupAppLocalizations(locale);
        await tester.pumpWidget(wrap(const DisplayScreen(), locale: locale));
        await settle(tester);

        expect(tester.takeException(), isNull);

        final expectedDirection =
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
        expect(
          Directionality.of(tester.element(find.byType(DisplayScreen))),
          expectedDirection,
        );

        // Verify screen title and section header exist
        expect(find.text(loc.displayTitle), findsOneWidget);
        expect(find.text(loc.displaySectionTargetResolution.toUpperCase()), findsOneWidget);
      });

      testWidgets('AccessScreen renders in $name ($locale)', (tester) async {
        final loc = lookupAppLocalizations(locale);
        await tester.pumpWidget(wrap(const AccessScreen(), locale: locale));
        await settle(tester);

        expect(tester.takeException(), isNull);

        final expectedDirection =
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
        expect(
          Directionality.of(tester.element(find.byType(AccessScreen))),
          expectedDirection,
        );

        // Verify screen title exists
        expect(find.text(loc.accessTitle), findsOneWidget);
      });

      testWidgets('OnboardingFlow renders in $name ($locale)', (tester) async {
        final loc = lookupAppLocalizations(locale);
        await tester.pumpWidget(wrap(const OnboardingFlow(), locale: locale));
        await settle(tester);

        expect(tester.takeException(), isNull);

        final expectedDirection =
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
        expect(
          Directionality.of(tester.element(find.byType(OnboardingFlow))),
          expectedDirection,
        );

        // Verify welcome text and next button
        expect(find.text(loc.onboardingWelcomeTitle), findsOneWidget);
        expect(find.text(loc.onboardingNext), findsOneWidget);

        // Verify advancing slides does not crash
        await tester.tap(find.text(loc.onboardingNext));
        await settle(tester);
        expect(tester.takeException(), isNull);
      });

      testWidgets('AppInfoSheet renders in $name ($locale)', (tester) async {
        final loc = lookupAppLocalizations(locale);
        await tester.pumpWidget(
          wrap(
            const Scaffold(body: SingleChildScrollView(child: AppInfoSheet())),
            locale: locale,
          ),
        );
        await settle(tester);

        expect(tester.takeException(), isNull);

        final expectedDirection =
            locale.languageCode == 'ar' ? TextDirection.rtl : TextDirection.ltr;
        expect(
          Directionality.of(tester.element(find.byType(AppInfoSheet))),
          expectedDirection,
        );

        // Verify key translated items
        expect(find.text(loc.infoCheckForUpdates), findsOneWidget);
        expect(find.text(loc.infoDistributedVia), findsOneWidget);
      });
    }
  });

  group('Specific Key Locale Translation Verifications', () {
    testWidgets('Arabic layout direction is RTL and uses Arabic translations', (tester) async {
      const arLocale = Locale('ar');
      final loc = lookupAppLocalizations(arLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: arLocale));
      await settle(tester);

      expect(Directionality.of(tester.element(find.byType(HomeScreen))), TextDirection.rtl);
      expect(loc.homeApplyTestProfile, 'تطبيق ملف تجريبي');
      expect(find.text('تطبيق ملف تجريبي'), findsOneWidget);
    });

    testWidgets('Brazilian Portuguese uses Portuguese translations', (tester) async {
      const ptLocale = Locale('pt', 'BR');
      final loc = lookupAppLocalizations(ptLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: ptLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, 'Aplicar perfil de teste');
      expect(find.text('Aplicar perfil de teste'), findsOneWidget);
      expect(find.text('Redefinir tela para o padrão do celular'), findsOneWidget);
    });

    testWidgets('Simplified Chinese uses Simplified Chinese translations', (tester) async {
      const zhLocale = Locale('zh');
      final loc = lookupAppLocalizations(zhLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: zhLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, '应用测试配置');
      expect(find.text('应用测试配置'), findsOneWidget);
      expect(find.text('将显示重置为手机默认'), findsOneWidget);
    });

    testWidgets('Traditional Chinese uses Traditional Chinese translations', (tester) async {
      const zhHantLocale = Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant');
      final loc = lookupAppLocalizations(zhHantLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: zhHantLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, '套用測試設定檔');
      expect(find.text('套用測試設定檔'), findsOneWidget);
      expect(find.text('將顯示重設為手機預設值'), findsOneWidget);
    });

    testWidgets('German uses German compound translations without layout overflows', (tester) async {
      const deLocale = Locale('de');
      final loc = lookupAppLocalizations(deLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: deLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, 'Testprofil anwenden');
      expect(find.text('Testprofil anwenden'), findsOneWidget);
      expect(find.text('Display auf Telefonstandard zurücksetzen'), findsOneWidget);
    });

    testWidgets('Japanese uses Japanese translations', (tester) async {
      const jaLocale = Locale('ja');
      final loc = lookupAppLocalizations(jaLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: jaLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, 'テストプロファイルを適用');
      expect(find.text('テストプロファイルを適用'), findsOneWidget);
      expect(find.text('画面をスマートフォンの標準設定にリセット'), findsOneWidget);
    });

    testWidgets('Russian uses Russian Cyrillic translations', (tester) async {
      const ruLocale = Locale('ru');
      final loc = lookupAppLocalizations(ruLocale);

      await tester.pumpWidget(wrap(const HomeScreen(), locale: ruLocale));
      await settle(tester);

      expect(loc.homeApplyTestProfile, 'Применить тестовый профиль');
      expect(find.text('Применить тестовый профиль'), findsOneWidget);
      expect(find.text('Сбросить экран к стандартному для телефона'), findsOneWidget);
    });
  });

  group('DisplayScreen Language Picker Dialog', () {
    testWidgets('renders all language choices with native autonyms', (tester) async {
      tester.view.physicalSize = const Size(800, 1600);
      tester.view.devicePixelRatio = 1.0;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      final state = AppState();
      await tester.pumpWidget(wrap(const DisplayScreen(), locale: const Locale('en'), state: state));
      await settle(tester);

      // Scroll to language selector tile
      await tester.scrollUntilVisible(find.text('Language'), 300);
      await settle(tester);
      expect(find.text('Language'), findsOneWidget);

      await tester.tap(find.text('Language'));
      await settle(tester);

      // Verify representative language names are rendered
      expect(find.text('System default'), findsWidgets);
      expect(find.text('English'), findsOneWidget);
      expect(find.text('Português (Brasil)'), findsOneWidget);
      expect(find.text('简体中文'), findsOneWidget);

      // Scroll inside bottom sheet to check remaining items
      final sheetList = find.byType(Scrollable).last;
      await tester.scrollUntilVisible(find.text('繁體中文'), 150, scrollable: sheetList);
      await settle(tester);
      expect(find.text('繁體中文'), findsOneWidget);

      await tester.scrollUntilVisible(find.text('العربية'), 150, scrollable: sheetList);
      await settle(tester);
      expect(find.text('العربية'), findsOneWidget);

      // Select Arabic
      await tester.tap(find.text('العربية'));
      await settle(tester);

      expect(state.selectedLanguageCode, 'ar');
    });
  });
}
