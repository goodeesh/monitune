import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/l10n/l10n.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';

void main() {
  test('builds a dark theme with tokens from the seed', () {
    final theme = MoniTuneTheme.build(seed: MoniTuneTheme.fallbackSeed);
    expect(theme.brightness, Brightness.dark);

    final tokens = theme.extension<MonoTokens>();
    expect(tokens, isNotNull);
    expect(tokens!.primary, theme.colorScheme.primary);
    expect(tokens.surface, theme.colorScheme.surfaceContainerLow);
    expect(tokens.textPrimary, theme.colorScheme.onSurface);
  });

  test('a different seed produces a different palette', () {
    final blue = MoniTuneTheme.build(seed: const Color(0xFF3B82F6));
    final orange = MoniTuneTheme.build(seed: const Color(0xFFF97316));
    expect(blue.colorScheme.primary, isNot(orange.colorScheme.primary));
  });

  test('the default palette keeps the accent hue and stays saturated', () {
    for (final seed in const [
      Color(0xFF3B82F6), // blue
      Color(0xFF10B981), // emerald
      Color(0xFFF97316), // orange
      Color(0xFFEC4899), // magenta
    ]) {
      final scheme = MoniTuneTheme.schemeFor(seed: seed);
      final seedHue = HSLColor.fromColor(seed).hue;
      final primaryHue = HSLColor.fromColor(scheme.primary).hue;
      var delta = (primaryHue - seedHue).abs();
      if (delta > 180) delta = 360 - delta;
      // The M3 "expressive" variant deliberately rotates hues (a blue seed comes
      // out green), so the default must be a hue-faithful variant.
      expect(delta, lessThan(20), reason: 'seed $seed became $primaryHue');
      expect(HSLColor.fromColor(scheme.primary).saturation, greaterThan(0.3));
    }
  });

  test('the expressive palette variant is offered as an option', () {
    expect(
      MoniTuneTheme.paletteVariants,
      contains(DynamicSchemeVariant.expressive),
    );
    expect(MoniTuneTheme.paletteLabel(DynamicSchemeVariant.expressive), 'Expressive');
  });

  testWidgets('AppLocalizations delegates load correctly for en', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: SizedBox(),
      ),
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('AppLocalizations extension context.l10n resolves correctly', (tester) async {
    late String title;
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(
          builder: (context) {
            title = context.l10n.appTitle;
            return const SizedBox();
          },
        ),
      ),
    );
    expect(tester.takeException(), isNull);
    expect(title, 'MoniTune');
  });
}
