import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/theme/mono_motion.dart';
import 'package:monitune/theme/mono_tokens.dart';
import 'package:monitune/theme/monitune_theme.dart';
import 'package:monitune/widgets/ui.dart';
import 'package:monitune/screens/access_screen.dart';

/// Display configuration: resolution, scaling, appearance and behaviour.
class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  late TextEditingController _widthController;
  late TextEditingController _heightController;

  final List<Map<String, dynamic>> _resolutionPresets = [
    {'id': '1080p', 'label': '1080p Full HD (1920 × 1080)'},
    {'id': '1440p', 'label': '1440p 2K (2560 × 1440)'},
    {'id': '4K', 'label': '4K Ultra HD (3840 × 2160)'},
    {'id': '720p', 'label': '720p HD (1280 × 720)'},
    {'id': 'ultrawide', 'label': 'Ultrawide 21:9 (2560 × 1080)'},
    {'id': 'native', 'label': 'Native Phone Display'},
    {'id': 'custom', 'label': 'Custom Resolution…'},
  ];

  final List<int> _scalePresets = [75, 100, 125, 150, 175, 200];

  @override
  void initState() {
    super.initState();
    final state = context.read<AppState>();
    _widthController = TextEditingController(text: state.customWidth.toString());
    _heightController = TextEditingController(text: state.customHeight.toString());
  }

  @override
  void dispose() {
    _widthController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final tokens = context.tokens;

    return Scaffold(
      backgroundColor: tokens.surface,
      appBar: AppBar(
        title: Text('Display', style: tokens.headingMd),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: tokens.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
            children: [
              _currentDisplay(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, 'Target resolution'),
              const SizedBox(height: 10),
              _resolutionCard(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, 'Desktop UI scaling'),
              const SizedBox(height: 10),
              _scalingCard(context, state),
              if (state.isMiuiLauncher) ...[
                const SizedBox(height: 12),
                _miuiCard(context),
              ],
              const SizedBox(height: 24),
              sectionTitle(context, 'Behaviour'),
              const SizedBox(height: 10),
              _behaviourCard(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, 'Appearance'),
              const SizedBox(height: 10),
              _appearanceCard(context, state),
            ],
          ),
        ),
      ),
    );
  }

  Widget _currentDisplay(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final w = state.status['width'] ?? '—';
    final h = state.status['height'] ?? '—';
    final dpi = state.status['densityDpi'] ?? '—';
    final rotation = _rotationLabel((state.status['rotation'] as num?)?.toInt() ?? 0);
    return card(
      context,
      child: Column(
        children: [
          _diagRow(context, 'Resolution', '$w × $h'),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, 'Density', '$dpi DPI'),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, 'Rotation', rotation),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, 'External display', state.externalDisplayName ?? 'None connected'),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, 'Custom profile', state.isCustomDisplayActive ? 'Active' : 'Not applied'),
        ],
      ),
    );
  }

  String _rotationLabel(int rotation) {
    switch (rotation) {
      case 1:
        return 'Landscape (90°)';
      case 2:
        return 'Portrait (180°)';
      case 3:
        return 'Landscape (270°)';
      default:
        return 'Portrait (0°)';
    }
  }

  Widget _diagRow(BuildContext context, String label, String value) {
    final tokens = context.tokens;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: tokens.bodyMd),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: tokens.bodyMd.copyWith(
              color: tokens.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _resolutionCard(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final effective = state.effectiveResolution;
    return card(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            initialValue: state.targetResolution,
            isExpanded: true,
            decoration: const InputDecoration(),
            items: _resolutionPresets
                .map((p) => DropdownMenuItem<String>(
                      value: p['id'] as String,
                      child: Text(
                        p['label'] as String,
                        style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ))
                .toList(),
            onChanged: (val) {
              if (val != null) state.setTargetResolution(val);
            },
          ),
          if (state.targetResolution == 'custom') ...[
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _widthController,
                    keyboardType: TextInputType.number,
                    style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
                    decoration: const InputDecoration(labelText: 'Width (px)'),
                    onChanged: (v) {
                      final parsed = int.tryParse(v);
                      if (parsed != null && parsed > 300) {
                        state.setTargetResolution('custom', width: parsed);
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('×', style: tokens.bodyLg.copyWith(color: tokens.textMuted)),
                ),
                Expanded(
                  child: TextField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
                    decoration: const InputDecoration(labelText: 'Height (px)'),
                    onChanged: (v) {
                      final parsed = int.tryParse(v);
                      if (parsed != null && parsed > 300) {
                        state.setTargetResolution('custom', height: parsed);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 14),
          Text(
            'Target canvas: ${effective.$1} × ${effective.$2} pixels',
            style: tokens.bodySm.copyWith(color: tokens.primary),
          ),
        ],
      ),
    );
  }

  Widget _scalingCard(BuildContext context, AppState state) {
    final tokens = context.tokens;
    return card(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  '${state.uiScalePercent}% Scale Factor',
                  style: tokens.headingSm,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: tokens.primary.withValues(alpha: 0.16),
                  borderRadius: BorderRadius.circular(MoniTuneTheme.radiusSm),
                ),
                child: Text(
                  '${state.calculatedDpi} DPI',
                  style: tokens.bodySm.copyWith(
                    color: tokens.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          MorphingSegmented<int>(
            value: state.uiScalePercent,
            items: _scalePresets,
            labelBuilder: (scale) => '$scale%',
            onChanged: state.setUiScalePercent,
          ),
          const SizedBox(height: 12),
          Text(
            '100% gives native PC density without enlarging mobile widgets.',
            style: tokens.bodySm,
          ),
          Divider(color: tokens.surfaceBorder, height: 26),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Keep Android UI Density (Launcher-Safe)',
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              'Applies the resolution but leaves Android density untouched, so '
              'MIUI/HyperOS home-screen icons stay put.',
              style: tokens.bodySm,
            ),
            value: state.launcherSafeDisplay,
            onChanged: state.setLauncherSafeDisplay,
          ),
        ],
      ),
    );
  }

  Widget _miuiCard(BuildContext context) {
    final tokens = context.tokens;
    return card(
      context,
      borderColor: tokens.warning,
      borderWidth: 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.home_work_rounded, color: tokens.warning, size: 22),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  'HyperOS / MIUI Launcher Detected',
                  style: tokens.bodyMd.copyWith(
                    fontWeight: FontWeight.w600,
                    color: tokens.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Changing Android density can rearrange your home-screen icons and '
            'scatter apps onto other pages. Turn on "Keep Android UI Density" '
            'above to prevent this — the desktop resolution and mirroring are unaffected.',
            style: tokens.bodySm.copyWith(color: tokens.textPrimary),
          ),
          const SizedBox(height: 8),
          Text(
            'Tip: also enable Settings → Home screen → "Lock Home Screen Layout".',
            style: tokens.bodySm,
          ),
        ],
      ),
    );
  }

  Widget _behaviourCard(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final landscapeReady = state.canForceLandscape;
    return card(
      context,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('Force Landscape', style: tokens.bodyMd.copyWith(color: tokens.textPrimary)),
            subtitle: Text(
              state.forceLandscape
                  ? 'Enabled — applied when you tap Apply Test Profile (Home).'
                  : 'Toggle it from the Home screen. Requires both landscape permissions.',
              style: tokens.bodySm,
            ),
            trailing: Icon(
              landscapeReady ? Icons.check_circle_rounded : Icons.info_outline_rounded,
              color: landscapeReady ? tokens.success : tokens.warning,
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const AccessScreen()),
            ),
          ),
          Divider(color: tokens.surfaceBorder),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Auto-Reset Resolution on Exit',
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              'Returns your phone to its native resolution when you are done.',
              style: tokens.bodySm,
            ),
            value: state.autoResetOnExit,
            onChanged: state.setAutoResetOnExit,
          ),
        ],
      ),
    );
  }

  Widget _appearanceCard(BuildContext context, AppState state) {
    final tokens = context.tokens;
    final wallpaperAvailable = state.wallpaperSupported;
    return card(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 42,
                height: 42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: tokens.primaryGradient,
                  borderRadius: BorderRadius.circular(MoniTuneTheme.radiusMd),
                ),
                child: const Icon(Icons.palette_rounded, color: Colors.white, size: 22),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Material You colours',
                      style: tokens.bodyMd.copyWith(
                        color: tokens.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      state.usingWallpaperColors
                          ? 'Following your wallpaper palette'
                          : 'Using your chosen accent',
                      style: tokens.bodySm,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Divider(color: tokens.surfaceBorder, height: 1),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Use wallpaper colours',
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              !state.wallpaperChecked
                  ? 'Checking what your Android version supports…'
                  : wallpaperAvailable
                      ? 'Applies the Material 3 expressive palette built from your wallpaper.'
                      : 'Needs Android 12 or newer. Pick an accent below instead.',
              style: tokens.bodySm,
            ),
            value: state.useWallpaper && wallpaperAvailable,
            onChanged: wallpaperAvailable
                ? (v) => state.setUseWallpaper(v)
                : (_) => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Wallpaper colours need Android 12 or newer.'),
                      ),
                    ),
          ),
          const SizedBox(height: 4),
          Text('Accent', style: tokens.label),
          const SizedBox(height: 10),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: MoniTuneTheme.accentPresets.map((color) {
              final selected = !state.usingWallpaperColors && state.accentSeed == color;
              return Semantics(
                button: true,
                selected: selected,
                label: 'Accent colour',
                child: GestureDetector(
                  onTap: () => state.setAccentSeed(color),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 320),
                    curve: MonoMotion.curveFor(context, MonoMotion.snappy),
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: selected ? tokens.textPrimary : Colors.transparent,
                        width: 3,
                      ),
                      boxShadow: selected
                          ? [
                              BoxShadow(
                                color: color.withValues(alpha: 0.45),
                                blurRadius: 14,
                                spreadRadius: 1,
                              ),
                            ]
                          : null,
                    ),
                    child: selected
                        ? Icon(Icons.check_rounded, color: Colors.white.withValues(alpha: 0.95))
                        : null,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 18),
          Divider(color: tokens.surfaceBorder, height: 1),
          const SizedBox(height: 12),
          Text('Palette', style: tokens.label),
          const SizedBox(height: 10),
          MorphingSegmented<DynamicSchemeVariant>(
            value: state.paletteVariant,
            items: MoniTuneTheme.paletteVariants,
            labelBuilder: MoniTuneTheme.paletteLabel,
            onChanged: state.setPaletteVariant,
          ),
          const SizedBox(height: 10),
          Text(
            'Bold keeps the accent colour vivid, Exact matches it closely, and '
            'Expressive lets Material 3 remix the hues for a more surprising look.',
            style: tokens.bodySm,
          ),
          const SizedBox(height: 18),
          Divider(color: tokens.surfaceBorder, height: 1),
          const SizedBox(height: 12),
          Text('Contrast', style: tokens.label),
          const SizedBox(height: 10),
          MorphingSegmented<bool>(
            value: state.contrastBoost,
            items: const [false, true],
            labelBuilder: (boost) => boost ? 'Boosted' : 'Standard',
            onChanged: state.setContrastBoost,
          ),
          const SizedBox(height: 10),
          Text(
            'Boosted raises text and surface contrast — useful with very bright '
            'wallpaper palettes, or on a large monitor across the room.',
            style: tokens.bodySm,
          ),
        ],
      ),
    );
  }
}
