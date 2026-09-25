import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';
import 'package:monitune/screens/access_screen.dart';

/// First-run wizard explaining what MoniTune does, why it needs Shizuku/root,
/// and the one-time permanent-access model.
class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _controller = PageController();
  int _index = 0;

  static const int _pageCount = 8;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _next() {
    if (_index >= _pageCount - 1) {
      context.read<AppState>().completeOnboarding();
      return;
    }
    _controller.nextPage(
      duration: const Duration(milliseconds: 520),
      curve: MonoMotion.reducedMotion(context)
          ? Curves.easeOut
          : MonoMotion.curve(MonoMotion.gentle),
    );
  }

  void _back() {
    if (_index == 0) return;
    _controller.previousPage(
      duration: const Duration(milliseconds: 480),
      curve: MonoMotion.reducedMotion(context)
          ? Curves.easeOut
          : MonoMotion.curve(MonoMotion.gentle),
    );
  }

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final tokens = context.tokens;
    final isLast = _index == _pageCount - 1;
    return Scaffold(
      backgroundColor: tokens.surface,
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: tokens.backgroundGradient),
        child: SafeArea(
          child: Column(
            children: [
              // Top bar: skip
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => context.read<AppState>().completeOnboarding(),
                      child: Text('Skip', style: tokens.bodyMd),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: (i) => setState(() => _index = i),
                  children: [
                    _welcome(),
                    _problem(),
                    _why(),
                    _paths(),
                    _shizukuSteps(),
                    _oneTime(),
                    _safety(),
                    _ready(),
                  ],
                ),
              ),
              // Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_pageCount, (i) {
                  final active = i == _index;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 320),
                    curve: MonoMotion.curveFor(context, MonoMotion.snappy),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: active ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: active ? tokens.primary : tokens.surfaceBorder,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 20),
              // Nav buttons
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Row(
                  children: [
                    if (_index > 0) ...[
                      Expanded(
                        child: SpringPress(
                          child: OutlinedButton(
                            onPressed: _back,
                            child: const Text('Back'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                    Expanded(
                      flex: 2,
                      child: SpringPress(
                        child: FilledButton(
                          onPressed: _next,
                          child: Text(isLast ? 'Get Started' : 'Next'),
                        ),
                      ),
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

  // ── Page scaffold ──
  Widget _page({
    required IconData icon,
    required String title,
    required String body,
    List<Widget> extra = const [],
  }) {
    final tokens = context.tokens;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          SpringReveal(
            lift: 0,
            beginScale: 0.6,
            child: Container(
              width: 76,
              height: 76,
              decoration: BoxDecoration(
                gradient: tokens.primaryGradient,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: tokens.primary.withValues(alpha: 0.35),
                    blurRadius: 26,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 36),
            ),
          ),
          const SizedBox(height: 28),
          SpringReveal(
            delay: const Duration(milliseconds: 90),
            lift: 16,
            child: Text(title, style: tokens.headingXl),
          ),
          const SizedBox(height: 16),
          SpringReveal(
            delay: const Duration(milliseconds: 170),
            lift: 12,
            child: Text(body, style: tokens.bodyLg),
          ),
          const SizedBox(height: 26),
          ...extra,
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _bullet(IconData icon, String text, {Color? color}) {
    final tokens = context.tokens;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: (color ?? tokens.primary).withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, size: 17, color: color ?? tokens.primary),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: tokens.bodyMd.copyWith(color: tokens.textPrimary))),
        ],
      ),
    );
  }

  // ── Pages ──
  Widget _welcome() => _page(
        icon: Icons.monitor_rounded,
        title: 'Welcome to MoniTune',
        body:
            'Tune your Android display for any external monitor. Set the resolution '
            'and scale you want, keep your home screen tidy, and force widescreen '
            'landscape — all from one small app.',
        extra: [
          _bullet(Icons.aspect_ratio_rounded, 'Resolution & UI scale presets'),
          _bullet(Icons.home_work_rounded, 'MIUI/HyperOS launcher-safe mode'),
          _bullet(Icons.palette_rounded, 'Colours that follow your wallpaper'),
        ],
      );

  Widget _problem() => _page(
        icon: Icons.lock_outline_rounded,
        title: 'Android locks this down',
        body:
            'When you mirror your phone to a monitor, Android picks the resolution, '
            'density and rotation for you — and normal apps are not allowed to change them.',
        extra: [
          _bullet(
            Icons.warning_amber_rounded,
            'Changing density on Xiaomi MIUI/HyperOS can scatter your home-screen icons onto other pages.',
            color: context.tokens.warning,
          ),
          _bullet(Icons.crop_free_rounded, 'No built-in way to remove black bars or pick a widescreen size.'),
        ],
      );

  Widget _why() => _page(
        icon: Icons.admin_panel_settings_rounded,
        title: 'Why Shizuku or root?',
        body:
            'The operations MoniTune performs need a permission called '
            'WRITE_SECURE_SETTINGS, which Android only grants to privileged apps.',
        extra: [
          _bullet(
            Icons.terminal_rounded,
            'Shizuku runs a shell with the privileges you grant over wireless debugging — no root needed.',
          ),
          _bullet(Icons.security_rounded, 'If your phone is rooted, MoniTune can use root directly instead.'),
          _bullet(
            Icons.info_outline_rounded,
            'Nothing is hidden: MoniTune only uses this access to change display size, density and rotation.',
          ),
        ],
      );

  Widget _paths() => _page(
        icon: Icons.alt_route_rounded,
        title: 'Pick your path',
        body: 'Either path unlocks the same features.',
        extra: [
          _pathCard(
            icon: Icons.terminal_rounded,
            title: 'Shizuku (no root)',
            subtitle: 'Recommended for most phones. Requires one-time setup with wireless debugging.',
            color: context.tokens.primary,
          ),
          const SizedBox(height: 12),
          _pathCard(
            icon: Icons.security_rounded,
            title: 'Root (Magisk / KernelSU)',
            subtitle: 'If your device is already rooted, MoniTune detects it automatically.',
            color: context.tokens.accent,
          ),
        ],
      );

  Widget _pathCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    final tokens = context.tokens;
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: tokens.surface,
        borderRadius: BorderRadius.circular(MoniTuneTheme.radiusLg),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: tokens.headingSm),
                const SizedBox(height: 4),
                Text(subtitle, style: tokens.bodySm),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _shizukuSteps() => _page(
        icon: Icons.download_rounded,
        title: 'Setting up Shizuku',
        body: 'Install Shizuku, then start it once. MoniTune will guide you from there.',
        extra: [
          _step('1', 'Install Shizuku from the official site or GitHub Releases.'),
          _step('2', 'Open Shizuku and start it via Wireless debugging (Android 11+) or ADB.'),
          _step('3', 'Return to MoniTune and tap "Authorize with Shizuku".'),
          const SizedBox(height: 8),
          SpringPress(
            child: OutlinedButton.icon(
              onPressed: () => _open('https://shizuku.rikka.app/guide/setup/'),
              icon: const Icon(Icons.open_in_new_rounded, size: 18),
              label: const Text('Open Shizuku setup guide'),
            ),
          ),
        ],
      );

  Widget _step(String n, String text) {
    final tokens = context.tokens;
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 28,
            height: 28,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: tokens.primary.withValues(alpha: 0.16),
              shape: BoxShape.circle,
            ),
            child: Text(n, style: tokens.bodyMd.copyWith(color: tokens.primary)),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: tokens.bodyMd.copyWith(color: tokens.textPrimary))),
        ],
      ),
    );
  }

  Widget _oneTime() => _page(
        icon: Icons.lock_open_rounded,
        title: 'One-time setup',
        body:
            'While Shizuku (or root) is available, MoniTune can grant itself a '
            'permanent WRITE_SECURE_SETTINGS permission.',
        extra: [
          _bullet(
            Icons.check_circle_rounded,
            'Grant it once — afterwards MoniTune works with no Shizuku, no ADB and no Wi-Fi.',
            color: context.tokens.success,
          ),
          _bullet(Icons.restart_alt_rounded, 'The grant survives reboots.'),
          _bullet(Icons.timer_rounded, 'Shizuku only needs to be running for that single moment.'),
        ],
      );

  Widget _safety() => _page(
        icon: Icons.health_and_safety_rounded,
        title: 'Built-in safety',
        body: 'Changing display size can leave a screen unreadable, so MoniTune protects you.',
        extra: [
          _bullet(
            Icons.timer_outlined,
            'Test mode auto-reverts after 15 seconds unless you tap "Keep Settings".',
          ),
          _bullet(
            Icons.power_settings_new_rounded,
            'Turning the screen off restores your native resolution automatically.',
          ),
          _bullet(
            Icons.home_work_rounded,
            'Launcher-safe mode skips density changes so MIUI/HyperOS icons stay put.',
          ),
        ],
      );

  Widget _ready() => _page(
        icon: Icons.rocket_launch_rounded,
        title: 'You are ready',
        body:
            'Set up your privileged access and the two special permissions next. '
            'Then choose your resolution and scale, and test with the 15-second '
            'safety revert before keeping your settings.',
        extra: [
          _bullet(
            Icons.sync_rounded,
            'Auto-apply: apply your profile the moment a monitor connects, and reset when it unplugs.',
          ),
          _bullet(
            Icons.crop_landscape_rounded,
            'Force Landscape overrides every app\'s orientation — including the HyperOS launcher (Android 12+).',
          ),
          _bullet(
            Icons.palette_rounded,
            'On Android 12+, MoniTune can take its colours from your wallpaper (Material You).',
          ),
          const SizedBox(height: 16),
          SpringPress(
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.verified_user_rounded, size: 18),
                label: const Text('Set up access now'),
                onPressed: () {
                  final state = context.read<AppState>();
                  state.completeOnboarding();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const AccessScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      );
}
