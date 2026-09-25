import 'package:flutter/material.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';

/// Small shared building blocks for the MoniTune screens. All colours come from
/// the active [MonoTokens], so they follow Material You or the chosen accent.

Widget sectionTitle(BuildContext context, String title) =>
    Text(title.toUpperCase(), style: context.tokens.label);

Widget card(
  BuildContext context, {
  required Widget child,
  EdgeInsets? padding,
  Color? borderColor,
  double borderWidth = 1,
}) {
  final tokens = context.tokens;
  // A Material (not a Container) so ListTile/Switch ink effects land on it.
  return Material(
    color: tokens.surface,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(MoniTuneTheme.radiusLg),
      side: BorderSide(color: borderColor ?? tokens.surfaceBorder, width: borderWidth),
    ),
    child: Padding(
      padding: padding ?? const EdgeInsets.all(18),
      child: child,
    ),
  );
}

Widget navTile(
  BuildContext context, {
  required IconData icon,
  required String title,
  String? subtitle,
  required WidgetBuilder builder,
}) {
  final tokens = context.tokens;
  final radius = BorderRadius.circular(MoniTuneTheme.radiusLg);
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: SpringPress(
      child: Material(
        color: tokens.surface,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: builder)),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: radius,
              border: Border.all(color: tokens.surfaceBorder),
            ),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: tokens.surfaceHigh,
                    borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
                  ),
                  child: Icon(icon, color: tokens.primary, size: 22),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: tokens.headingSm.copyWith(fontWeight: FontWeight.w600),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 2),
                        Text(subtitle, style: tokens.bodySm),
                      ],
                    ],
                  ),
                ),
                Icon(Icons.chevron_right_rounded, color: tokens.textDim),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget permRow(
  BuildContext context, {
  required String label,
  required bool ok,
  required Future<void> Function() onGrant,
}) {
  final tokens = context.tokens;
  return Padding(
    padding: const EdgeInsets.only(bottom: 2),
    child: Row(
      children: [
        Icon(
          ok ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
          size: 18,
          color: ok ? tokens.success : tokens.warning,
        ),
        const SizedBox(width: 10),
        Expanded(child: Text(label, style: tokens.bodyMd.copyWith(color: tokens.textPrimary))),
        if (!ok)
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              shape: const StadiumBorder(),
            ),
            onPressed: onGrant,
            child: const Text('Grant'),
          ),
      ],
    ),
  );
}
