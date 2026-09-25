import 'package:flutter/material.dart';

import 'mono_motion.dart';
import 'mono_tokens.dart';

/// Builds the MoniTune [ThemeData] from a single seed colour.
///
/// The palette is generated with Material 3's *expressive* scheme variant, so
/// the accent, surfaces, text and gradients are all tonal derivatives of the
/// seed — which may come from the user's wallpaper (Material You) or from the
/// in-app accent picker.
class MoniTuneTheme {
  MoniTuneTheme._();

  // ── Shapes ──
  static const double radiusSm = 10.0;
  static const double radiusMd = 14.0;
  static const double radiusLg = 20.0;
  static const double radiusXl = 28.0;

  /// MoniTune's own blue, used when nothing else is selected.
  static const Color fallbackSeed = Color(0xFF3B82F6);

  /// Accent swatches offered in the in-app appearance picker.
  static const List<Color> accentPresets = [
    Color(0xFF3B82F6), // MoniTune blue
    Color(0xFF22D3EE), // cyan
    Color(0xFF10B981), // emerald
    Color(0xFF8B5CF6), // violet
    Color(0xFFEC4899), // magenta
    Color(0xFFF97316), // orange
    Color(0xFFEF4444), // red
    Color(0xFF14B8A6), // teal
  ];

  /// The Material 3 expressive scheme for [seed].
  static ColorScheme schemeFor({
    required Color seed,
    Brightness brightness = Brightness.dark,
    double contrastLevel = 0,
    DynamicSchemeVariant variant = DynamicSchemeVariant.vibrant,
  }) {
    return ColorScheme.fromSeed(
      seedColor: seed,
      brightness: brightness,
      contrastLevel: contrastLevel,
      dynamicSchemeVariant: variant,
    );
  }

  /// The palette styles offered in the appearance picker.
  ///
  /// [DynamicSchemeVariant.expressive] deliberately rotates hues for surprise
  /// (a blue seed can come out green), so it is offered rather than imposed;
  /// [DynamicSchemeVariant.vibrant] is the default because it keeps the seed
  /// hue while staying saturated.
  static const List<DynamicSchemeVariant> paletteVariants = [
    DynamicSchemeVariant.vibrant,
    DynamicSchemeVariant.fidelity,
    DynamicSchemeVariant.expressive,
  ];

  static String paletteLabel(DynamicSchemeVariant variant) => switch (variant) {
        DynamicSchemeVariant.vibrant => 'Bold',
        DynamicSchemeVariant.fidelity => 'Exact',
        DynamicSchemeVariant.expressive => 'Expressive',
        _ => variant.name,
      };

  /// Full app theme for [seed].
  static ThemeData build({
    required Color seed,
    Brightness brightness = Brightness.dark,
    double contrastLevel = 0,
    DynamicSchemeVariant variant = DynamicSchemeVariant.vibrant,
  }) {
    final scheme = schemeFor(
      seed: seed,
      brightness: brightness,
      contrastLevel: contrastLevel,
      variant: variant,
    );
    final tokens = MonoTokens.from(scheme);
    final base = ThemeData(
      colorScheme: scheme,
      brightness: brightness,
      scaffoldBackgroundColor: scheme.surface,
      splashFactory: InkSparkle.splashFactory,
      textTheme: _textTheme(scheme),
      extensions: <ThemeExtension<dynamic>>[tokens],
      visualDensity: VisualDensity.standard,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: MonoPageTransitionsBuilder(),
          TargetPlatform.linux: MonoPageTransitionsBuilder(),
        },
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleTextStyle: tokens.headingMd,
        iconTheme: IconThemeData(color: tokens.textPrimary),
      ),
      dividerTheme: DividerThemeData(
        color: tokens.surfaceBorder,
        thickness: 1,
        space: 1,
      ),
      iconTheme: IconThemeData(color: tokens.textSecondary),
      listTileTheme: ListTileThemeData(
        iconColor: tokens.textSecondary,
        titleTextStyle: tokens.bodyMd.copyWith(
          color: tokens.textPrimary,
          fontWeight: FontWeight.w500,
        ),
        subtitleTextStyle: tokens.bodySm,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? scheme.onPrimary
              : tokens.textMuted,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? scheme.primary
              : tokens.surfaceAccent,
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? Colors.transparent
              : tokens.surfaceBorder,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          elevation: 0,
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: _buttonText,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: _buttonText,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: scheme.primary,
          side: BorderSide(color: tokens.surfaceBorder, width: 1.5),
          minimumSize: const Size(0, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: const StadiumBorder(),
          textStyle: _buttonText,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.primary,
          textStyle: _buttonText,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: tokens.surfaceHigh,
        hintStyle: tokens.bodyMd.copyWith(color: tokens.textMuted),
        labelStyle: tokens.bodySm,
        floatingLabelStyle: tokens.bodySm.copyWith(color: scheme.primary),
        prefixIconColor: tokens.textMuted,
        suffixIconColor: tokens.textMuted,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMd),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMd),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMd),
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: tokens.surfaceHigh,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusXl),
        ),
        titleTextStyle: tokens.headingSm,
        contentTextStyle: tokens.bodyMd,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: tokens.surfaceAccent,
        contentTextStyle: tokens.bodyMd.copyWith(color: tokens.textPrimary),
        actionTextColor: scheme.primary,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: tokens.surfaceHigh,
        surfaceTintColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(radiusXl)),
        ),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: tokens.surfaceAccent,
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        textStyle: tokens.bodySm.copyWith(color: tokens.textPrimary),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: scheme.primary,
        linearTrackColor: tokens.surfaceAccent,
        circularTrackColor: tokens.surfaceAccent,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: scheme.primary,
        inactiveTrackColor: tokens.surfaceAccent,
        thumbColor: scheme.primary,
        trackHeight: 6,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 18),
      ),
    );

    return base;
  }

  static final TextStyle _buttonText = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextTheme _textTheme(ColorScheme scheme) {
    final onSurface = scheme.onSurface;
    final onVariant = scheme.onSurfaceVariant;
    TextStyle style(
      double size,
      FontWeight weight,
      Color color, {
      double? height,
      double? spacing,
    }) => TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
      letterSpacing: spacing,
    );
    return TextTheme(
      displayLarge: style(32, FontWeight.w800, onSurface, spacing: -0.5),
      headlineLarge: style(24, FontWeight.w700, onSurface, spacing: -0.3),
      headlineMedium: style(20, FontWeight.w600, onSurface),
      titleLarge: style(16, FontWeight.w600, onSurface),
      titleMedium: style(14, FontWeight.w500, onSurface),
      bodyLarge: style(16, FontWeight.w400, onVariant, height: 1.6),
      bodyMedium: style(14, FontWeight.w400, onVariant, height: 1.5),
      bodySmall: style(12, FontWeight.w400, onVariant),
      labelLarge: style(14, FontWeight.w600, onSurface),
      labelMedium: style(12, FontWeight.w600, onSurface),
      labelSmall: style(11, FontWeight.w600, onVariant, spacing: 1.2),
    );
  }
}
