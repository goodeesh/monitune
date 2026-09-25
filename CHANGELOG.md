# Changelog

All notable changes to MoniTune are recorded here. Versions before 1.0.0 were
development builds published to GitHub Releases; 1.0.0 is the first release
intended to sit and be used.

## 1.0.0

First stable release.

### Display
- Resolution presets (720p, 1080p, 1440p, 4K, ultrawide, native) plus a custom
  width/height.
- UI scale from 75% to 200%, with the resulting DPI shown live.
- **Launcher-safe mode** applies the resolution but leaves Android density
  untouched, so MIUI/HyperOS home-screen icons stay where they are.
- **Force Landscape** keeps the display in landscape over apps that lock
  themselves to portrait, including the HyperOS launcher and recents. Applied
  when you tap **Apply Test Profile**, never on the toggle.
- **Auto-apply on connect**: a background watcher applies the profile when a
  monitor connects and resets it when it disconnects.
- **15-second safety revert** unless you tap **Keep Settings**.

### Access
- Works with Shizuku (no root) or root (Magisk/KernelSU), and remembers a
  one-time permanent access grant so Shizuku is not needed afterwards.
- Battery-optimization exemption, to keep the auto-apply watcher reliable.

### Appearance
- Material 3 **expressive** theme generated from a single seed colour.
- **Material You**: on Android 12+ the app can take its colours from the
  wallpaper, re-read whenever the app returns to the foreground.
- Eight accent presets, three palette styles (Bold, Exact, Expressive) and a
  contrast boost, all under **Display → Appearance**.
- Themed (monochrome) launcher icon on Android 13+.
- Expressive motion: spring presses, a morphing selection control, spring page
  transitions and a morphing activity indicator — all respecting the system
  "remove animations" setting.
- Inter and JetBrains Mono bundled in-tree: no runtime font downloads.

### Updates
- **Check for updates** in the app (tap the version at the bottom of the Home
  screen) queries GitHub Releases. It is always manual: nothing is sent anywhere
  until you ask.

### Notes
- `INTERNET` is used only by that manual update check; see `NOTICE.md`.
- The test signing key is committed on purpose so that updates install over
  previous releases; it is not suitable for store publishing.
