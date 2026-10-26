import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:monitune/l10n/l10n.dart';
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

  static const List<String> _resolutionPresetIds = [
    '1080p',
    '1440p',
    '4K',
    '720p',
    'ultrawide',
    'native',
    'custom',
  ];

  static const List<int> _scalePresets = [75, 100, 125, 150, 175, 200];

  static const List<({String? code, String name})> _supportedLanguages = [
    (code: null, name: 'System default'),
    (code: 'en', name: 'English'),
    (code: 'pt_BR', name: 'Português (Brasil)'),
    (code: 'zh_CN', name: '简体中文'),
    (code: 'es', name: 'Español'),
    (code: 'de', name: 'Deutsch'),
    (code: 'fr', name: 'Français'),
    (code: 'it', name: 'Italiano'),
    (code: 'ja', name: '日本語'),
    (code: 'ko', name: '한국어'),
    (code: 'zh_TW', name: '繁體中文'),
    (code: 'ru', name: 'Русский'),
    (code: 'pl', name: 'Polski'),
    (code: 'tr', name: 'Türkçe'),
    (code: 'hi', name: 'हिन्दी'),
    (code: 'ar', name: 'العربية'),
    (code: 'id', name: 'Bahasa Indonesia'),
    (code: 'nl', name: 'Nederlands'),
    (code: 'vi', name: 'Tiếng Việt'),
  ];

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

  String _presetLabel(BuildContext context, String id) => switch (id) {
        '1080p' => context.l10n.displayPreset1080p,
        '1440p' => context.l10n.displayPreset1440p,
        '4K' => context.l10n.displayPreset4k,
        '720p' => context.l10n.displayPreset720p,
        'ultrawide' => context.l10n.displayPresetUltrawide,
        'native' => context.l10n.displayPresetNative,
        'custom' => context.l10n.displayPresetCustom,
        _ => id,
      };

  String _rotationLabel(BuildContext context, int rotation) => switch (rotation) {
        1 => context.l10n.displayRotationLandscape90,
        2 => context.l10n.displayRotationPortrait180,
        3 => context.l10n.displayRotationLandscape270,
        _ => context.l10n.displayRotationPortrait0,
      };

  String _currentLanguageLabel(BuildContext context, AppState state) {
    if (state.selectedLanguageCode == null) {
      return context.l10n.displayLanguageSystemDefaultSimple;
    }
    for (final lang in _supportedLanguages) {
      if (lang.code == state.selectedLanguageCode ||
          (lang.code != null &&
              lang.code!.replaceAll('-', '_') ==
                  state.selectedLanguageCode!.replaceAll('-', '_'))) {
        return lang.name;
      }
    }
    return state.selectedLanguageCode!;
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AppState>();
    final tokens = context.tokens;

    return Scaffold(
      backgroundColor: tokens.surface,
      appBar: AppBar(
        title: Text(context.l10n.displayTitle, style: tokens.headingMd),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(gradient: tokens.backgroundGradient),
        child: SafeArea(
          child: ListView(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
            children: [
              _currentDisplay(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.displaySectionTargetResolution),
              const SizedBox(height: 10),
              _resolutionCard(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.displaySectionDesktopUiScaling),
              const SizedBox(height: 10),
              _scalingCard(context, state),
              if (state.isMiuiLauncher) ...[
                const SizedBox(height: 12),
                _miuiCard(context),
              ],
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.displaySectionBehaviour),
              const SizedBox(height: 10),
              _behaviourCard(context, state),
              const SizedBox(height: 24),
              sectionTitle(context, context.l10n.displaySectionAppearance),
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
    final dpiInt = int.tryParse(dpi.toString());
    final dpiText = dpiInt != null ? context.l10n.displayDiagDensityValue(dpiInt) : '$dpi DPI';
    final rotation = _rotationLabel(context, (state.status['rotation'] as num?)?.toInt() ?? 0);
    return card(
      context,
      child: Column(
        children: [
          _diagRow(context, context.l10n.displayDiagResolution, '$w × $h'),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, context.l10n.displayDiagDensity, dpiText),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(context, context.l10n.displayDiagRotation, rotation),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(
            context,
            context.l10n.displayDiagExternalDisplay,
            state.externalDisplayName ?? context.l10n.displayDiagNoneConnected,
          ),
          Divider(color: tokens.surfaceBorder, height: 22),
          _diagRow(
            context,
            context.l10n.displayDiagCustomProfile,
            state.isCustomDisplayActive
                ? context.l10n.displayDiagActive
                : context.l10n.displayDiagNotApplied,
          ),
        ],
      ),
    );
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
            items: _resolutionPresetIds
                .map((id) => DropdownMenuItem<String>(
                      value: id,
                      child: Text(
                        _presetLabel(context, id),
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
                    decoration: InputDecoration(labelText: context.l10n.displayWidthPx),
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
                    decoration: InputDecoration(labelText: context.l10n.displayHeightPx),
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
            context.l10n.displayTargetCanvas(effective.$1, effective.$2),
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
                  context.l10n.displayScaleFactor(state.uiScalePercent),
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
                  context.l10n.displayDpiValue(state.calculatedDpi),
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
            labelBuilder: (scale) => context.l10n.displayScalePercent(scale),
            onChanged: state.setUiScalePercent,
          ),
          const SizedBox(height: 12),
          Text(
            context.l10n.displayScaleNativeHint,
            style: tokens.bodySm,
          ),
          Divider(color: tokens.surfaceBorder, height: 26),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              context.l10n.displayKeepUiDensityTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              context.l10n.displayKeepUiDensitySubtitle,
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
                  context.l10n.displayMiuiDetectedTitle,
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
            context.l10n.displayMiuiDetectedMessage,
            style: tokens.bodySm.copyWith(color: tokens.textPrimary),
          ),
          const SizedBox(height: 8),
          Text(
            context.l10n.displayMiuiDetectedTip,
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
            title: Text(
              context.l10n.displayForceLandscapeTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              state.forceLandscape
                  ? context.l10n.displayForceLandscapeSubtitleEnabled
                  : context.l10n.displayForceLandscapeSubtitleDisabled,
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
              context.l10n.displayAutoResetOnExitTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              context.l10n.displayAutoResetOnExitSubtitle,
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
                      context.l10n.displayMaterialYouTitle,
                      style: tokens.bodyMd.copyWith(
                        color: tokens.textPrimary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      state.usingWallpaperColors
                          ? context.l10n.displayMaterialYouFollowingWallpaper
                          : context.l10n.displayMaterialYouUsingChosenAccent,
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
              context.l10n.displayUseWallpaperTitle,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              !state.wallpaperChecked
                  ? context.l10n.displayUseWallpaperChecking
                  : wallpaperAvailable
                      ? context.l10n.displayUseWallpaperSupported
                      : context.l10n.displayUseWallpaperNeedsAndroid12,
              style: tokens.bodySm,
            ),
            value: state.useWallpaper && wallpaperAvailable,
            onChanged: wallpaperAvailable
                ? (v) => state.setUseWallpaper(v)
                : (_) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(context.l10n.displayWallpaperAndroid12Required),
                      ),
                    ),
          ),
          const SizedBox(height: 4),
          Text(context.l10n.displayAccent, style: tokens.label),
          const SizedBox(height: 10),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: MoniTuneTheme.accentPresets.map((color) {
              final selected = !state.usingWallpaperColors && state.accentSeed == color;
              return Semantics(
                button: true,
                selected: selected,
                label: context.l10n.displayAccentColorSemantics,
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
          Text(context.l10n.displayPalette, style: tokens.label),
          const SizedBox(height: 10),
          MorphingSegmented<DynamicSchemeVariant>(
            value: state.paletteVariant,
            items: MoniTuneTheme.paletteVariants,
            labelBuilder: (variant) => switch (variant) {
              DynamicSchemeVariant.vibrant => context.l10n.displayPaletteVibrant,
              DynamicSchemeVariant.fidelity => context.l10n.displayPaletteFidelity,
              DynamicSchemeVariant.expressive => context.l10n.displayPaletteExpressive,
              DynamicSchemeVariant.tonalSpot => context.l10n.displayPaletteTonalSpot,
              DynamicSchemeVariant.neutral => context.l10n.displayPaletteNeutral,
              DynamicSchemeVariant.content => context.l10n.displayPaletteContent,
              _ => MoniTuneTheme.paletteLabel(variant),
            },
            onChanged: state.setPaletteVariant,
          ),
          const SizedBox(height: 10),
          Text(
            context.l10n.displayPaletteDescription,
            style: tokens.bodySm,
          ),
          const SizedBox(height: 18),
          Divider(color: tokens.surfaceBorder, height: 1),
          const SizedBox(height: 12),
          Text(context.l10n.displayContrast, style: tokens.label),
          const SizedBox(height: 10),
          MorphingSegmented<bool>(
            value: state.contrastBoost,
            items: const [false, true],
            labelBuilder: (boost) =>
                boost ? context.l10n.displayContrastBoosted : context.l10n.displayContrastStandard,
            onChanged: state.setContrastBoost,
          ),
          const SizedBox(height: 10),
          Text(
            context.l10n.displayContrastDescription,
            style: tokens.bodySm,
          ),
          const SizedBox(height: 14),
          Divider(color: tokens.surfaceBorder, height: 1),
          const SizedBox(height: 6),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: tokens.surfaceHigh,
                borderRadius: BorderRadius.circular(MoniTuneTheme.radiusSm),
              ),
              child: Icon(Icons.translate_rounded, color: tokens.primary, size: 20),
            ),
            title: Text(
              context.l10n.displayLanguage,
              style: tokens.bodyMd.copyWith(color: tokens.textPrimary),
            ),
            subtitle: Text(
              _currentLanguageLabel(context, state),
              style: tokens.bodySm,
            ),
            trailing: Icon(Icons.chevron_right_rounded, color: tokens.textDim),
            onTap: () => _showLanguageSheet(context, state),
          ),
        ],
      ),
    );
  }

  void _showLanguageSheet(BuildContext context, AppState state) {
    final tokens = context.tokens;
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (sheetContext) {
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.sizeOf(sheetContext).height * 0.75,
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Text(
                    context.l10n.displayLanguage,
                    style: tokens.headingSm,
                  ),
                ),
                for (final lang in _supportedLanguages) ...[
                  ListTile(
                    title: Text(
                      lang.code == null
                          ? context.l10n.displayLanguageSystemDefaultSimple
                          : lang.name,
                      style: tokens.bodyMd.copyWith(
                        color: tokens.textPrimary,
                        fontWeight: (lang.code == null && state.selectedLanguageCode == null) ||
                                (lang.code != null &&
                                    (lang.code == state.selectedLanguageCode ||
                                        lang.code!.replaceAll('-', '_') ==
                                            state.selectedLanguageCode?.replaceAll('-', '_')))
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    trailing: ((lang.code == null && state.selectedLanguageCode == null) ||
                            (lang.code != null &&
                                (lang.code == state.selectedLanguageCode ||
                                    lang.code!.replaceAll('-', '_') ==
                                        state.selectedLanguageCode?.replaceAll('-', '_'))))
                        ? Icon(Icons.check_rounded, color: tokens.primary)
                        : null,
                    onTap: () {
                      context.read<AppState>().setLanguage(lang.code);
                      Navigator.of(sheetContext).pop();
                    },
                  ),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
