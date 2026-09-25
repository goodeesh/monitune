import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

/// Reads the Android system (Material You) palette so MoniTune can derive its
/// colours from the user's wallpaper.
///
/// The OS hands back a full core palette on Android 12+; MoniTune takes one
/// tone from it as the seed and lets `ColorScheme.fromSeed` (expressive
/// variant) do the rest, so the wallpaper influence is combined with the
/// Material 3 Expressive scheme. Returns `null` below Android 12, on other
/// platforms, or if the OEM does not expose a palette — callers then fall back
/// to the in-app accent.
class WallpaperPalette {
  WallpaperPalette._();

  /// Tone 40 of the primary palette: saturated enough to seed a scheme with,
  /// dark enough to sit well in a dark UI.
  static const int _seedTone = 40;

  static Future<Color?> seedColor() async {
    try {
      final palette = await DynamicColorPlugin.getCorePalette();
      if (palette == null) return null;
      return Color(palette.primary.get(_seedTone));
    } catch (_) {
      // Pre-Android 12, non-Android, or a plugin/PlatformException.
      return null;
    }
  }
}
