import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:monitune/l10n/l10n.dart';
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
                      child: Text(context.l10n.onboardingSkip, style: tokens.bodyMd),
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
                            child: Text(context.l10n.onboardingBack),
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
                          child: Text(isLast ? context.l10n.onboardingGetStarted : context.l10n.onboardingNext),
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
        title: context.l10n.onboardingWelcomeTitle,
        body: context.l10n.onboardingWelcomeBody,
        extra: [
          _bullet(Icons.aspect_ratio_rounded, context.l10n.onboardingWelcomeBullet1),
          _bullet(Icons.home_work_rounded, context.l10n.onboardingWelcomeBullet2),
          _bullet(Icons.palette_rounded, context.l10n.onboardingWelcomeBullet3),
        ],
      );

  Widget _problem() => _page(
        icon: Icons.lock_outline_rounded,
        title: context.l10n.onboardingProblemTitle,
        body: context.l10n.onboardingProblemBody,
        extra: [
          _bullet(
            Icons.warning_amber_rounded,
            context.l10n.onboardingProblemBullet1,
            color: context.tokens.warning,
          ),
          _bullet(Icons.crop_free_rounded, context.l10n.onboardingProblemBullet2),
        ],
      );

  Widget _why() => _page(
        icon: Icons.admin_panel_settings_rounded,
        title: context.l10n.onboardingWhyTitle,
        body: context.l10n.onboardingWhyBody,
        extra: [
          _bullet(
            Icons.terminal_rounded,
            context.l10n.onboardingWhyBullet1,
          ),
          _bullet(Icons.security_rounded, context.l10n.onboardingWhyBullet2),
          _bullet(
            Icons.info_outline_rounded,
            context.l10n.onboardingWhyBullet3,
          ),
        ],
      );

  Widget _paths() => _page(
        icon: Icons.alt_route_rounded,
        title: context.l10n.onboardingPathsTitle,
        body: context.l10n.onboardingPathsBody,
        extra: [
          _pathCard(
            icon: Icons.terminal_rounded,
            title: context.l10n.onboardingPathsShizukuTitle,
            subtitle: context.l10n.onboardingPathsShizukuSubtitle,
            color: context.tokens.primary,
          ),
          const SizedBox(height: 12),
          _pathCard(
            icon: Icons.security_rounded,
            title: context.l10n.onboardingPathsRootTitle,
            subtitle: context.l10n.onboardingPathsRootSubtitle,
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
        title: context.l10n.onboardingShizukuStepsTitle,
        body: context.l10n.onboardingShizukuStepsBody,
        extra: [
          _step('1', context.l10n.onboardingShizukuStep1),
          _step('2', context.l10n.onboardingShizukuStep2),
          _step('3', context.l10n.onboardingShizukuStep3),
          const SizedBox(height: 8),
          SpringPress(
            child: OutlinedButton.icon(
              onPressed: () => _open('https://shizuku.rikka.app/guide/setup/'),
              icon: const Icon(Icons.open_in_new_rounded, size: 18),
              label: Text(context.l10n.onboardingShizukuGuideButton),
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
        title: context.l10n.onboardingOneTimeTitle,
        body: context.l10n.onboardingOneTimeBody,
        extra: [
          _bullet(
            Icons.check_circle_rounded,
            context.l10n.onboardingOneTimeBullet1,
            color: context.tokens.success,
          ),
          _bullet(Icons.restart_alt_rounded, context.l10n.onboardingOneTimeBullet2),
          _bullet(Icons.timer_rounded, context.l10n.onboardingOneTimeBullet3),
        ],
      );

  Widget _safety() => _page(
        icon: Icons.health_and_safety_rounded,
        title: context.l10n.onboardingSafetyTitle,
        body: context.l10n.onboardingSafetyBody,
        extra: [
          _bullet(
            Icons.timer_outlined,
            context.l10n.onboardingSafetyBullet1,
          ),
          _bullet(
            Icons.power_settings_new_rounded,
            context.l10n.onboardingSafetyBullet2,
          ),
          _bullet(
            Icons.home_work_rounded,
            context.l10n.onboardingSafetyBullet3,
          ),
        ],
      );

  Widget _ready() => _page(
        icon: Icons.rocket_launch_rounded,
        title: context.l10n.onboardingReadyTitle,
        body: context.l10n.onboardingReadyBody,
        extra: [
          _bullet(
            Icons.sync_rounded,
            context.l10n.onboardingReadyBullet1,
          ),
          _bullet(
            Icons.crop_landscape_rounded,
            context.l10n.onboardingReadyBullet2,
          ),
          _bullet(
            Icons.palette_rounded,
            context.l10n.onboardingReadyBullet3,
          ),
          const SizedBox(height: 16),
          SpringPress(
            child: SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.verified_user_rounded, size: 18),
                label: Text(context.l10n.onboardingReadyButton),
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
