import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:monitune/l10n/l10n.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/widgets/ui.dart';

/// Central place for the privileged access and special permissions MoniTune uses.
class AccessScreen extends StatefulWidget {
  const AccessScreen({super.key});

  @override
  State<AccessScreen> createState() => _AccessScreenState();
}

class _AccessScreenState extends State<AccessScreen> {
  bool _grantingWss = false;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final tokens = context.tokens;

    return Scaffold(
      backgroundColor: tokens.surface,
      appBar: AppBar(
        title: Text(context.l10n.accessTitle, style: tokens.headingMd),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: tokens.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
            children: [
              sectionTitle(context, context.l10n.accessSectionPrivileged),
              const SizedBox(height: 10),
              _shizukuCard(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.accessSectionSpecial),
              const SizedBox(height: 10),
              card(
                context,
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(context.l10n.accessForceLandscapeHint, style: tokens.bodySm),
                    const SizedBox(height: 10),
                    permRow(
                      context,
                      label: context.l10n.accessPermDisplayOverApps,
                      ok: state.hasOverlayPermission,
                      onGrant: state.requestOverlayPermission,
                    ),
                    permRow(
                      context,
                      label: context.l10n.accessPermModifySettings,
                      ok: state.hasWriteSettingsPermission,
                      onGrant: state.requestWriteSettingsPermission,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.accessSectionBackground),
              const SizedBox(height: 10),
              card(
                context,
                padding: const EdgeInsets.fromLTRB(18, 16, 18, 12),
                child: Column(
                  children: [
                    permRow(
                      context,
                      label: context.l10n.accessPermBatteryOptimization,
                      ok: !state.isBatteryOptimized,
                      onGrant: state.requestBatteryOptimization,
                    ),
                    permRow(
                      context,
                      label: context.l10n.accessPermNotifications,
                      ok: state.hasNotificationPermission,
                      onGrant: state.requestNotificationPermission,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _shizukuCard(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final hasWss = state.hasWriteSecureSettings;
    final isGranted = state.isShizukuGranted;
    final isAvailable = state.isShizukuAvailable;
    final hasRoot = state.hasRoot;

    final Color statusColor;
    final String title;
    final String subtitle;
    final IconData icon;

    if (hasWss) {
      statusColor = tokens.success;
      title = context.l10n.accessPermanentTitle;
      subtitle = context.l10n.accessPermanentSubtitle;
      icon = Icons.lock_open_rounded;
    } else if (isGranted) {
      statusColor = tokens.success;
      title = context.l10n.accessShizukuActiveTitle;
      subtitle = context.l10n.accessShizukuActiveSubtitle;
      icon = Icons.check_circle_rounded;
    } else if (hasRoot) {
      statusColor = tokens.success;
      title = context.l10n.accessRootActiveTitle;
      subtitle = context.l10n.accessRootActiveSubtitle;
      icon = Icons.security_rounded;
    } else if (isAvailable) {
      statusColor = tokens.warning;
      title = context.l10n.accessShizukuRequiredTitle;
      subtitle = context.l10n.accessShizukuRequiredSubtitle;
      icon = Icons.vpn_key_rounded;
    } else {
      statusColor = tokens.textMuted;
      title = context.l10n.accessNoAccessTitle;
      subtitle = context.l10n.accessNoAccessSubtitle;
      icon = Icons.info_outline_rounded;
    }

    return card(
      context,
      borderColor: statusColor.withValues(alpha: 0.35),
      borderWidth: 1.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.14),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: statusColor, size: 24),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: tokens.bodyMd.copyWith(
                        fontWeight: FontWeight.w600,
                        color: statusColor,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(subtitle, style: tokens.bodySm),
                  ],
                ),
              ),
            ],
          ),
          if (isAvailable && !isGranted && !hasRoot) ...[
            const SizedBox(height: 16),
            SpringPress(
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.verified_user_rounded, size: 18),
                  label: Text(context.l10n.accessAuthorizeShizuku),
                  onPressed: () async {
                    await state.requestShizukuPermission();
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(context.l10n.accessShizukuRequested)),
                    );
                  },
                ),
              ),
            ),
          ],
          if (!hasWss && (isGranted || hasRoot)) ...[
            const SizedBox(height: 16),
            SpringPress(
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: _grantingWss
                      ? MorphingLoader(
                          size: 18,
                          color: Theme.of(context).colorScheme.onPrimary,
                        )
                      : const Icon(Icons.lock_outline_rounded, size: 18),
                  label: Text(context.l10n.accessGrantPermanent),
                  onPressed: _grantingWss
                      ? null
                      : () async {
                          final messenger = ScaffoldMessenger.of(context);
                          final l10n = context.l10n;
                          setState(() => _grantingWss = true);
                          final ok = await state.selfGrantWriteSecureSettings();
                          if (!mounted) return;
                          setState(() => _grantingWss = false);
                          messenger.showSnackBar(
                            SnackBar(
                              content: Text(ok
                                  ? l10n.accessPermanentGranted
                                  : l10n.accessPermanentFailed),
                            ),
                          );
                        },
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
