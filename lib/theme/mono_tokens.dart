import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

/// Design tokens derived from the active Material 3 [ColorScheme].
///
/// Everything MoniTune draws — surfaces, text, accents, gradients and the type
/// scale — is resolved from here, so following Material You (or a custom accent)
/// restyles the whole app. Registered as a [ThemeExtension], which means the
/// tokens animate between old and new schemes when the accent changes.
@immutable
class MonoTokens extends ThemeExtension<MonoTokens> {
  const MonoTokens({
    required this.surface,
    required this.surfaceHigh,
    required this.surfaceBorder,
    required this.surfaceAccent,
    required this.textPrimary,
    required this.textSecondary,
    required this.textMuted,
    required this.textDim,
    required this.primary,
    required this.accent,
    required this.success,
    required this.warning,
    required this.danger,
    required this.primaryGradient,
    required this.backgroundGradient,
    required this.headingXl,
    required this.headingLg,
    required this.headingMd,
    required this.headingSm,
    required this.bodyLg,
    required this.bodyMd,
    required this.bodySm,
    required this.label,
    required this.mono,
  });

  /// Builds the token set from a scheme. Semantic hues (success/warning) are
  /// harmonized toward the scheme's primary so they never clash with a
  /// wallpaper-derived palette.
  factory MonoTokens.from(ColorScheme scheme) {
    final muted = Color.lerp(scheme.onSurfaceVariant, scheme.outline, 0.45)!;
    final dim = Color.lerp(scheme.onSurfaceVariant, scheme.outline, 0.8)!;
    return MonoTokens(
      surface: scheme.surfaceContainerLow,
      surfaceHigh: scheme.surfaceContainerHigh,
      surfaceBorder: scheme.outlineVariant,
      surfaceAccent: scheme.surfaceContainerHighest,
      textPrimary: scheme.onSurface,
      textSecondary: scheme.onSurfaceVariant,
      textMuted: muted,
      textDim: dim,
      primary: scheme.primary,
      accent: scheme.tertiary,
      success: const Color(0xFF2ECC71).harmonizeWith(scheme.primary),
      warning: const Color(0xFFF59E0B).harmonizeWith(scheme.primary),
      danger: scheme.error,
      primaryGradient: LinearGradient(
        colors: [
          scheme.primary,
          Color.lerp(scheme.primary, scheme.tertiary, 0.65)!,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      backgroundGradient: LinearGradient(
        colors: [
          scheme.surface,
          Color.lerp(scheme.surface, scheme.primary, 0.07)!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      headingXl: TextStyle(
        fontFamily: 'Inter',
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: scheme.onSurface,
        letterSpacing: -0.5,
      ),
      headingLg: TextStyle(
        fontFamily: 'Inter',
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: scheme.onSurface,
        letterSpacing: -0.3,
      ),
      headingMd: TextStyle(
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: scheme.onSurface,
      ),
      headingSm: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: scheme.onSurface,
      ),
      bodyLg: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: scheme.onSurfaceVariant,
        height: 1.6,
      ),
      bodyMd: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: scheme.onSurfaceVariant,
        height: 1.5,
      ),
      bodySm: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: muted,
      ),
      label: TextStyle(
        fontFamily: 'Inter',
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: muted,
        letterSpacing: 1.2,
      ),
      mono: TextStyle(
        fontFamily: 'JetBrainsMono',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: scheme.onSurface,
      ),
    );
  }

  // ── Surfaces ──
  final Color surface;
  final Color surfaceHigh;
  final Color surfaceBorder;
  final Color surfaceAccent;

  // ── Text ──
  final Color textPrimary;
  final Color textSecondary;
  final Color textMuted;
  final Color textDim;

  // ── Accents ──
  final Color primary;
  final Color accent;
  final Color success;
  final Color warning;
  final Color danger;

  // ── Gradients ──
  final LinearGradient primaryGradient;
  final LinearGradient backgroundGradient;

  // ── Type scale ──
  final TextStyle headingXl;
  final TextStyle headingLg;
  final TextStyle headingMd;
  final TextStyle headingSm;
  final TextStyle bodyLg;
  final TextStyle bodyMd;
  final TextStyle bodySm;
  final TextStyle label;
  final TextStyle mono;

  /// The tokens registered on the active theme. Falls back to the ambient
  /// scheme so a missing extension can never crash a build.
  static MonoTokens of(BuildContext context) {
    final theme = Theme.of(context);
    return theme.extension<MonoTokens>() ?? MonoTokens.from(theme.colorScheme);
  }

  @override
  MonoTokens copyWith({
    Color? surface,
    Color? surfaceHigh,
    Color? surfaceBorder,
    Color? surfaceAccent,
    Color? textPrimary,
    Color? textSecondary,
    Color? textMuted,
    Color? textDim,
    Color? primary,
    Color? accent,
    Color? success,
    Color? warning,
    Color? danger,
    LinearGradient? primaryGradient,
    LinearGradient? backgroundGradient,
    TextStyle? headingXl,
    TextStyle? headingLg,
    TextStyle? headingMd,
    TextStyle? headingSm,
    TextStyle? bodyLg,
    TextStyle? bodyMd,
    TextStyle? bodySm,
    TextStyle? label,
    TextStyle? mono,
  }) {
    return MonoTokens(
      surface: surface ?? this.surface,
      surfaceHigh: surfaceHigh ?? this.surfaceHigh,
      surfaceBorder: surfaceBorder ?? this.surfaceBorder,
      surfaceAccent: surfaceAccent ?? this.surfaceAccent,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textMuted: textMuted ?? this.textMuted,
      textDim: textDim ?? this.textDim,
      primary: primary ?? this.primary,
      accent: accent ?? this.accent,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      headingXl: headingXl ?? this.headingXl,
      headingLg: headingLg ?? this.headingLg,
      headingMd: headingMd ?? this.headingMd,
      headingSm: headingSm ?? this.headingSm,
      bodyLg: bodyLg ?? this.bodyLg,
      bodyMd: bodyMd ?? this.bodyMd,
      bodySm: bodySm ?? this.bodySm,
      label: label ?? this.label,
      mono: mono ?? this.mono,
    );
  }

  @override
  MonoTokens lerp(covariant MonoTokens? other, double t) {
    if (other == null) return this;
    Color c(Color a, Color b) => Color.lerp(a, b, t)!;
    TextStyle s(TextStyle a, TextStyle b) => TextStyle.lerp(a, b, t)!;
    return MonoTokens(
      surface: c(surface, other.surface),
      surfaceHigh: c(surfaceHigh, other.surfaceHigh),
      surfaceBorder: c(surfaceBorder, other.surfaceBorder),
      surfaceAccent: c(surfaceAccent, other.surfaceAccent),
      textPrimary: c(textPrimary, other.textPrimary),
      textSecondary: c(textSecondary, other.textSecondary),
      textMuted: c(textMuted, other.textMuted),
      textDim: c(textDim, other.textDim),
      primary: c(primary, other.primary),
      accent: c(accent, other.accent),
      success: c(success, other.success),
      warning: c(warning, other.warning),
      danger: c(danger, other.danger),
      primaryGradient: LinearGradient.lerp(
        primaryGradient,
        other.primaryGradient,
        t,
      )!,
      backgroundGradient: LinearGradient.lerp(
        backgroundGradient,
        other.backgroundGradient,
        t,
      )!,
      headingXl: s(headingXl, other.headingXl),
      headingLg: s(headingLg, other.headingLg),
      headingMd: s(headingMd, other.headingMd),
      headingSm: s(headingSm, other.headingSm),
      bodyLg: s(bodyLg, other.bodyLg),
      bodyMd: s(bodyMd, other.bodyMd),
      bodySm: s(bodySm, other.bodySm),
      label: s(label, other.label),
      mono: s(mono, other.mono),
    );
  }
}

/// Sugar so widgets read `context.tokens.primary`.
extension MonoTokensContext on BuildContext {
  MonoTokens get tokens => MonoTokens.of(this);
}
