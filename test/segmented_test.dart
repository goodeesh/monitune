import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/monitune_theme.dart';

/// Regression tests for the segmented selector: every option must render at the
/// same size, at rest and while the selection pill is morphing.
void main() {
  Widget wrap(Widget child) => MaterialApp(
        theme: MoniTuneTheme.build(seed: MoniTuneTheme.fallbackSeed),
        home: Scaffold(
          body: Center(child: SizedBox(width: 340, child: child)),
        ),
      );

  Future<void> pumpControl(WidgetTester tester) async {
    await tester.pumpWidget(
      wrap(
        MorphingSegmented<String>(
          value: 'Bold',
          items: const ['Bold', 'Exact', 'Expressive'],
          labelBuilder: (v) => v,
          onChanged: (_) {},
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 900));
  }

  testWidgets('all labels render at the same size', (tester) async {
    await pumpControl(tester);

    final heights = <double>{};
    final widths = <double>{};
    for (final label in ['Bold', 'Exact', 'Expressive']) {
      final size = tester.getSize(find.text(label));
      heights.add(size.height);
      widths.add(size.width);
    }
    expect(heights.length, 1, reason: 'label heights differ: $heights');
    // "Expressive" is much longer than "Bold": if it were being squeezed to
    // fit it would render smaller, which is what this guards against.
    expect(widths.length, 3, reason: 'labels were scaled to a uniform width');

    final fontSizes = tester
        .widgetList<Text>(find.byType(Text))
        .map((t) => t.style?.fontSize)
        .toSet();
    expect(fontSizes.length, 1);
  });

  testWidgets('labels keep their size while the pill is morphing', (tester) async {
    await pumpControl(tester);
    final before = tester.getSize(find.text('Exact')).height;

    await tester.tapAt(tester.getCenter(find.text('Exact')));
    // One frame in: the spring is mid-flight, which is when labels used to
    // appear shrunken.
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 60));

    expect(tester.getSize(find.text('Exact')).height, closeTo(before, 0.01));
    expect(tester.getSize(find.text('Bold')).height, closeTo(before, 0.01));

    final scales = tester
        .widgetList<ScaleTransition>(
          find.descendant(
            of: find.byType(MorphingSegmented<String>),
            matching: find.byType(ScaleTransition),
          ),
        )
        .map((t) => t.scale.value)
        .where((v) => v < 0.999)
        .toList();
    expect(scales, isEmpty, reason: 'labels were scaled during the morph');

    await tester.pump(const Duration(milliseconds: 1200));
    expect(tester.takeException(), isNull);
  });

  testWidgets('the selection pill sits inside the track', (tester) async {
    await pumpControl(tester);
    final control = tester.getRect(find.byType(MorphingSegmented<String>));

    // The pill is the only fully-opaque filled box inside the control.
    final pill = find.descendant(
      of: find.byType(MorphingSegmented<String>),
      matching: find.byWidgetPredicate(
        (w) => w is DecoratedBox &&
            w.decoration is BoxDecoration &&
            (w.decoration as BoxDecoration).color ==
                MoniTuneTheme.build(seed: MoniTuneTheme.fallbackSeed).colorScheme.primary,
      ),
    );
    expect(pill, findsOneWidget);
    final rect = tester.getRect(pill);

    expect(rect.top, greaterThan(control.top));
    expect(rect.bottom, lessThan(control.bottom));
    expect(rect.left, greaterThanOrEqualTo(control.left));
    expect(rect.right, lessThanOrEqualTo(control.right));
  });
}
