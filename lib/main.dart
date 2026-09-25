import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:monitune/theme/monitune_theme.dart';
import 'package:monitune/state/app_state.dart';
import 'package:monitune/services/platform_bridge.dart';
import 'package:monitune/screens/onboarding/onboarding_flow.dart';
import 'package:monitune/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MonitunePlatform.init();

  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MonituneApp(),
    ),
  );
}

class MonituneApp extends StatefulWidget {
  const MonituneApp({super.key});

  @override
  State<MonituneApp> createState() => _MonituneAppState();
}

class _MonituneAppState extends State<MonituneApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AppState>().initialize();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState lifecycle) {
    // The wallpaper can change while MoniTune is away, so re-read the palette
    // whenever the user comes back.
    if (lifecycle == AppLifecycleState.resumed) {
      context.read<AppState>().refreshWallpaperSeed();
    }
  }

  @override
  Widget build(BuildContext context) {
    // Only rebuild MaterialApp when the appearance actually changes, so a
    // status refresh does not rebuild the whole tree.
    final appearance =
        context.select<AppState, ({Color seed, double contrast, DynamicSchemeVariant palette})>(
      (state) => (
        seed: state.activeSeed,
        contrast: state.contrastLevel,
        palette: state.paletteVariant,
      ),
    );

    return MaterialApp(
      title: 'MoniTune',
      debugShowCheckedModeBanner: false,
      theme: MoniTuneTheme.build(
        seed: appearance.seed,
        contrastLevel: appearance.contrast,
        variant: appearance.palette,
      ),
      themeAnimationDuration: const Duration(milliseconds: 400),
      themeAnimationCurve: Curves.easeOutCubic,
      home: Consumer<AppState>(
        builder: (context, state, _) {
          return state.onboardingComplete ? const HomeScreen() : const OnboardingFlow();
        },
      ),
      builder: (context, child) {
        final scheme = Theme.of(context).colorScheme;
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: scheme.brightness == Brightness.dark
                ? Brightness.light
                : Brightness.dark,
            statusBarBrightness: scheme.brightness,
            systemNavigationBarColor: scheme.surfaceContainerLow,
            systemNavigationBarIconBrightness: scheme.brightness == Brightness.dark
                ? Brightness.light
                : Brightness.dark,
            systemNavigationBarDividerColor: Colors.transparent,
          ),
        );
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
