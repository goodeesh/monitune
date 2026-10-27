import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:monitune/l10n/l10n.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/version.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';
import 'package:monitune/widgets/ui.dart';
import 'package:monitune/screens/app_info_sheet.dart';
import 'package:monitune/screens/display_screen.dart';
import 'package:monitune/screens/access_screen.dart';

/// Root screen: status, primary actions, quick settings and navigation tiles.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final tokens = context.tokens;

    return Scaffold(
      backgroundColor: tokens.surface,
      appBar: AppBar(
        title: Text(context.l10n.appTitle, style: tokens.headingMd),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: IconButton(
              tooltip: context.l10n.homeCheckForUpdatesTooltip(AppVersion.current),
              icon: Badge(
                isLabelVisible: state.hasKnownUpdate,
                smallSize: 8,
                backgroundColor: tokens.accent,
                child: const Icon(Icons.system_update_alt_rounded),
              ),
              onPressed: () => AppInfoSheet.show(context),
            ),
          ),
        ],
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: tokens.backgroundGradient),
        child: SafeArea(
          child: Stack(
            children: [
              RefreshIndicator(
                onRefresh: state.refreshStatus,
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 40),
                  children: [
                    SpringReveal(child: _hero(context, state)),
                    const SizedBox(height: 20),
                    _primaryActions(context, state),
                    const SizedBox(height: 24),
                    sectionTitle(context, context.l10n.homeSectionQuickSettings),
                    const SizedBox(height: 10),
                    _quickSettings(context, state),
                    const SizedBox(height: 24),
                    sectionTitle(context, context.l10n.homeSectionConfigure),
                    const SizedBox(height: 10),
                    navTile(
                      context,
                      icon: Icons.aspect_ratio_rounded,
                      title: context.l10n.homeNavDisplayTitle,
                      subtitle: context.l10n.homeNavDisplaySubtitle,
                      builder: (_) => const DisplayScreen(),
                    ),
                    navTile(
                      context,
                      icon: Icons.verified_user_rounded,
                      title: context.l10n.homeNavAccessTitle,
                      subtitle: context.l10n.homeNavAccessSubtitle,
                      builder: (_) => const AccessScreen(),
                    ),
                    const SizedBox(height: 16),
                    _versionRow(context, state),
                  ],
                ),
              ),
              if (state.isTestingResolution)
                Positioned(left: 0, right: 0, bottom: 0, child: _testOverlay(context, state)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hero(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final hasAccess = state.hasAnyAccess;
    final label = state.hasWriteSecureSettings
        ? context.l10n.homeStatusPermanentAccessActive
        : state.hasAnyAccess
            ? context.l10n.homeStatusPrivilegedAccessReady
            : context.l10n.homeStatusSetupRequired;
    final dot = hasAccess ? tokens.success : tokens.warning;

    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: tokens.primaryGradient,
        borderRadius: BorderRadius.circular(MoniTuneTheme.radiusXl),
        boxShadow: [
          BoxShadow(
            color: tokens.primary.withValues(alpha: 0.30),
            blurRadius: 30,
            spreadRadius: 1,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 46,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.18),
                  borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
                ),
                child: const Icon(Icons.monitor_rounded, color: Colors.white, size: 26),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Text(
                  context.l10n.homeHeroTitle,
                  style: tokens.headingSm.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            state.deviceLabel,
            style: tokens.bodyMd.copyWith(color: Colors.white.withValues(alpha: 0.85)),
          ),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.22),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SpringSwitcher(
                  child: Icon(
                    hasAccess ? Icons.check_circle_rounded : Icons.info_outline_rounded,
                    key: ValueKey(label),
                    color: dot,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 8),
                SpringSwitcher(
                  child: Text(
                    label,
                    key: ValueKey(label),
                    style: tokens.bodySm.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _primaryActions(BuildContext context, AppState state) {
    return Column(
      children: [
        SpringPress(
          child: SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              icon: const Icon(Icons.play_circle_outline_rounded),
              label: Text(
                context.l10n.homeApplyTestProfile,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                final messenger = ScaffoldMessenger.of(context);
                final l10n = context.l10n;
                final ok = await state.testDisplayProfile();
                if (!ok && context.mounted) {
                  messenger.showSnackBar(
                    SnackBar(content: Text(l10n.homeApplyFailed)),
                  );
                }
              },
            ),
          ),
        ),
        const SizedBox(height: 12),
        SpringPress(
          child: SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: const Icon(Icons.restart_alt_rounded),
              label: Text(context.l10n.homeResetDisplayToNative),
              onPressed: () => state.resetDisplayToNative(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _quickSettings(BuildContext context, AppState state) {
    final tokens = context.tokens;
    return card(
      context,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Column(
        children: [
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              context.l10n.homeForceLandscapeTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              context.l10n.homeForceLandscapeSubtitle,
              style: tokens.bodySm,
            ),
            value: state.forceLandscape,
            onChanged: (v) async {
              if (v && !state.canForceLandscape) {
                _showForceLandscapePermissions(context, state);
                return;
              }
              state.setForceLandscape(v);
              if (!v) await state.setOrientationLock(false);
            },
          ),
          Divider(color: tokens.surfaceBorder),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              context.l10n.homeAutoApplyTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              state.autoApplyOnExternalDisplay
                  ? context.l10n.homeAutoApplyWatching
                  : context.l10n.homeAutoApplyDescription,
              style: tokens.bodySm,
            ),
            value: state.autoApplyOnExternalDisplay,
            onChanged: (v) => state.setAutoApplyOnExternalDisplay(v),
          ),
          if (state.autoApplyOnExternalDisplay) ...[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  context.l10n.homeAutoApplyBlackoutTitle,
                  style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
                ),
                subtitle: Text(
                  context.l10n.homeAutoApplyBlackoutSubtitle,
                  style: tokens.bodySm,
                ),
                value: state.blackoutOnConnect,
                onChanged: (v) => state.setBlackoutOnConnect(v),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _showForceLandscapePermissions(BuildContext context, AppState state) {
    final tokens = context.tokens;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(context.l10n.homePermissionsRequiredDialogTitle),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.homePermissionsRequiredDialogMessage,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            const SizedBox(height: 12),
            if (!state.hasOverlayPermission)
              Text(
                context.l10n.homePermissionDisplayOverApps,
                style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
              ),
            if (!state.hasWriteSettingsPermission)
              Text(
                context.l10n.homePermissionModifySettings,
                style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
              ),
          ],
        ),
        actions: [
          if (!state.hasOverlayPermission)
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                state.requestOverlayPermission();
              },
              child: Text(context.l10n.homeGrantOverlay),
            ),
          if (!state.hasWriteSettingsPermission)
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
                state.requestWriteSettingsPermission();
              },
              child: Text(context.l10n.homeGrantSettings),
            ),
          TextButton(onPressed: () => Navigator.pop(ctx), child: Text(context.l10n.commonClose)),
        ],
      ),
    );
  }

  /// Version + update entry point. Deliberately a full-width, normal-contrast
  /// row: a dim caption at the bottom of the page reads as a label, not
  /// something you can tap.
  Widget _versionRow(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final subtitle = state.knownUpdateVersion == null
        ? context.l10n.homeVersionCheckForUpdates
        : context.l10n.homeVersionUpdateAvailable(state.knownUpdateVersion!);
    final radius = BorderRadius.circular(MoniTuneTheme.radiusLg);

    return SpringPress(
      child: Material(
        color: tokens.surface,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          onTap: () => AppInfoSheet.show(context),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              borderRadius: radius,
              border: Border.all(
                color: state.hasKnownUpdate ? tokens.accent : tokens.surfaceBorder,
                width: state.hasKnownUpdate ? 1.5 : 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 38,
                  height: 38,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: tokens.primaryGradient,
                    borderRadius: BorderRadius.circular(MoniTuneTheme.radiusSm),
                  ),
                  child: const Icon(Icons.monitor_rounded, color: Colors.white, size: 20),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.l10n.appTitle} ${AppVersion.current}',
                        style: tokens.bodyMd.copyWith(
                          color: tokens.textPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: tokens.bodySm.copyWith(
                          color: state.hasKnownUpdate ? tokens.accent : tokens.textMuted,
                          fontWeight: state.hasKnownUpdate ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right_rounded),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _testOverlay(BuildContext context, AppState state) {
    final tokens = context.tokens;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: tokens.surfaceHigh,
          borderRadius: BorderRadius.circular(MoniTuneTheme.radiusLg),
          border: Border.all(color: tokens.warning, width: 1.5),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 24,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.timer_outlined, color: tokens.warning),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    context.l10n.homeTestRevertingBanner(state.testSecondsRemaining),
                    style: tokens.bodyMd.copyWith(
                      color: tokens.textPrimary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: tokens.success,
                      foregroundColor: tokens.surface,
                    ),
                    onPressed: () => state.confirmDisplayProfile(),
                    child: Text(context.l10n.homeKeepSettings),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: tokens.danger,
                      side: BorderSide(color: tokens.danger),
                    ),
                    onPressed: () => state.resetDisplayToNative(),
                    child: Text(context.l10n.homeRevertNow),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
