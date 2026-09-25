import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:monitune/screens/access_screen.dart';
import 'package:monitune/screens/display_screen.dart';
import 'package:monitune/screens/home_screen.dart';
import 'package:monitune/screens/onboarding/onboarding_flow.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/theme/monitune_theme.dart';

/// Smoke tests: every screen must build and animate without throwing. These
/// catch theme/motion mistakes (for example reading an inherited widget during
/// initState) that only show up at runtime.
void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  Widget wrap(Widget child, {Color seed = MoniTuneTheme.fallbackSeed}) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: MaterialApp(
        theme: MoniTuneTheme.build(seed: seed),
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

  testWidgets('the version footer opens the app info sheet', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen()));
    await settle(tester);
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('MoniTune 1.0.0 · MIT licensed'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    await settle(tester);
    await tester.tap(find.text('MoniTune 1.0.0 · MIT licensed'));
    await settle(tester);
    expect(tester.takeException(), isNull);
    expect(find.text('Check for updates'), findsOneWidget);
    expect(find.textContaining('Distributed via GitHub Releases'), findsOneWidget);
  });

  testWidgets('a wallpaper-like seed re-themes without errors', (tester) async {
    await tester.pumpWidget(wrap(const HomeScreen(), seed: const Color(0xFFD8A2C8)));
    await settle(tester);
    expect(tester.takeException(), isNull);
  });
}
