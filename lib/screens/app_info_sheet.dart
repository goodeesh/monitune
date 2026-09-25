import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:monitune/services/update_checker.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';

/// Version, distribution channel and the manual update check.
class AppInfoSheet extends StatefulWidget {
  const AppInfoSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (_) => const AppInfoSheet(),
    );
  }

  @override
  State<AppInfoSheet> createState() => _AppInfoSheetState();
}

class _AppInfoSheetState extends State<AppInfoSheet> {
  static const String _releasesUrl = 'https://github.com/goodeesh/monitune/releases';

  String _version = '…';
  String _buildNumber = '';
  bool _checking = false;
  UpdateOutcome? _outcome;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final info = await PackageInfo.fromPlatform();
      if (!mounted) return;
      setState(() {
        _version = info.version;
        _buildNumber = info.buildNumber;
      });
    } catch (_) {
      if (mounted) setState(() => _version = 'unknown');
    }
  }

  Future<void> _check() async {
    setState(() {
      _checking = true;
      _outcome = null;
    });
    final outcome = await UpdateChecker.check(_version);
    if (!mounted) return;
    setState(() {
      _checking = false;
      _outcome = outcome;
    });
  }

  Future<void> _open(String url) async {
    final messenger = ScaffoldMessenger.of(context);
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      messenger.showSnackBar(const SnackBar(content: Text('No browser available.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final scheme = Theme.of(context).colorScheme;
    final outcome = _outcome;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: tokens.primaryGradient,
                    borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
                  ),
                  child: const Icon(Icons.monitor_rounded, color: Colors.white, size: 24),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MoniTune', style: tokens.headingSm),
                      const SizedBox(height: 2),
                      Text(
                        _buildNumber.isEmpty
                            ? 'Version $_version'
                            : 'Version $_version · build $_buildNumber',
                        style: tokens.bodySm,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: SpringPress(
                child: FilledButton.icon(
                  icon: _checking
                      ? MorphingLoader(size: 18, color: scheme.onPrimary)
                      : const Icon(Icons.system_update_alt_rounded, size: 18),
                  label: Text(_checking ? 'Checking…' : 'Check for updates'),
                  onPressed: _checking ? null : _check,
                ),
              ),
            ),
            if (outcome != null) ...[
              const SizedBox(height: 14),
              _ResultCard(outcome: outcome, onDownload: _open),
            ],
            const SizedBox(height: 16),
            Divider(color: tokens.surfaceBorder),
            const SizedBox(height: 10),
            _row(
              context,
              icon: Icons.inventory_2_outlined,
              label: 'Distributed via GitHub Releases',
              onTap: () => _open(_releasesUrl),
            ),
            _row(
              context,
              icon: Icons.balance_rounded,
              label: 'MIT licensed · source available',
              onTap: () => _open('https://github.com/goodeesh/monitune'),
            ),
            _row(
              context,
              icon: Icons.wifi_off_rounded,
              label: 'Nothing leaves this device unless you check for updates',
              onTap: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback? onTap,
  }) {
    final tokens = context.tokens;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: Icon(icon, size: 20, color: tokens.textMuted),
      title: Text(label, style: tokens.bodySm.copyWith(color: tokens.textPrimary)),
      trailing: onTap == null
          ? null
          : Icon(Icons.open_in_new_rounded, size: 16, color: tokens.textDim),
      onTap: onTap,
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({required this.outcome, required this.onDownload});

  final UpdateOutcome outcome;
  final void Function(String url) onDownload;

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final available = outcome.status == UpdateStatus.available;
    final color = switch (outcome.status) {
      UpdateStatus.available => tokens.primary,
      UpdateStatus.upToDate => tokens.success,
      UpdateStatus.failed => tokens.warning,
    };
    final icon = switch (outcome.status) {
      UpdateStatus.available => Icons.download_rounded,
      UpdateStatus.upToDate => Icons.check_circle_rounded,
      UpdateStatus.failed => Icons.info_outline_rounded,
    };

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.10),
        borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: color, size: 20),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  outcome.message ?? '',
                  style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
                ),
              ),
            ],
          ),
          if (available && outcome.url != null) ...[
            const SizedBox(height: 12),
            SpringPress(
              child: SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  icon: const Icon(Icons.open_in_new_rounded, size: 18),
                  label: const Text('Open release page'),
                  onPressed: () => onDownload(outcome.url!),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
