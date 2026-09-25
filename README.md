# MoniTune

**Tune your Android display for any external monitor.**

MoniTune is a small, focused utility for phones that mirror to a TV or monitor.
It sets the resolution and UI scale you want, keeps your MIUI/HyperOS home screen
intact, and forces widescreen landscape — all on top of a single one-time
privileged setup.

## Why MoniTune

Modern Android — and Xiaomi's HyperOS in particular — refuses to expose the
settings you actually need when you plug a phone into a monitor:

- The mirrored image is locked to the phone's aspect ratio, with no way to pick
  1080p/1440p/4K or scale the UI for a big screen.
- **The HyperOS launcher is portrait-only**, so the moment you open the home
  screen or recents while mirroring, everything flips back to portrait.
- Changing Android density scatters the MIUI/HyperOS launcher icons across pages.

MoniTune exists to fix exactly that on a stock, non-rooted Xiaomi phone, using a
one-time Shizuku grant instead of root.

## About the name

**MoniTune = *moni*tor + *tune*** — a tool for tuning your phone's display for a
monitor.

## Features

- **Resolution presets & custom size** — 720p, 1080p, 1440p, 4K, ultrawide,
  native, or any custom size.
- **UI scale / density** — from 75% to 200%, or a custom DPI.
- **Launcher-safe mode** — applies the resolution but leaves Android density
  untouched, so MIUI/HyperOS icon grids stay put.
- **Force Landscape** — an invisible overlay keeps the display in landscape even
  over apps that lock themselves to portrait, including the HyperOS launcher and
  recents. Requires the "Display over other apps" and "Modify system settings"
  permissions; it is applied when you tap **Apply Test Profile**, never on the
  toggle. No Shizuku or root needed for this part.
- **15-second safety revert** — a profile that leaves the screen unreadable
  reverts itself automatically.
- **Auto-apply on connect** — a small background watcher applies your profile
  when a monitor connects and resets it when it disconnects.
- **Material You appearance** — on Android 12+ the whole app can take its colours
  from your wallpaper; otherwise pick one of eight accents. Three Material 3
  palette styles (Bold, Exact, Expressive) and a contrast boost are available on
  the Display screen, and the launcher icon follows your wallpaper on Android 13+.
- **Expressive motion** — spring-driven presses, a morphing selection control for
  the scale presets, spring page transitions and a morphing activity indicator.
  Honours the system "remove animations" setting.
- **Shizuku or root** — one-time permanent access; Shizuku is not needed
  afterwards.
- **Check for updates** — tap the version on the Home screen to compare against
  the latest GitHub Release. Manual only; nothing is sent anywhere unless you
  ask.

## Requirements

- Android 10 (API 29) or newer.
- [Shizuku](https://shizuku.rikka.app/guide/setup/) (no root), **or** root
  (Magisk/KernelSU).
- For Force Landscape: Android 12 (API 31) or newer.
- Wallpaper colours (Material You) need Android 12 or newer; the accent picker
  works on every supported version.

## Install

Download the latest `app-release.apk` from the
[Releases](https://github.com/goodeesh/monitune/releases) page and sideload it.
MoniTune is distributed only from GitHub: it needs a privileged shell
(Shizuku or root) to do its job, and that is not something an app store
installation can provide.

Release 1.0.0 or newer keeps the same signing key as the 0.x builds, so it
installs straight over them without uninstalling.

Inside the app, tap the version at the bottom of the Home screen to **check for
updates** — it compares your version against the latest GitHub Release and
opens the download page. That check is always manual; nothing is sent anywhere
unless you tap it.

## Permissions, and why each one is needed

| Permission | Why |
|---|---|
| `WRITE_SECURE_SETTINGS` | Changes display size, density and rotation. Signature-level, so it is granted once through Shizuku/root (see below). Without it, MoniTune cannot tune anything. |
| Shizuku API | Runs the one-time privileged setup commands. |
| `WRITE_SETTINGS` | Persists landscape rotation for Force Landscape (via the "Modify system settings" special-access screen). |
| `SYSTEM_ALERT_WINDOW` | The invisible overlay that forces landscape over apps which lock portrait, such as the HyperOS launcher (via the "Display over other apps" screen). |
| `REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` | Keeps the auto-apply watcher alive in the background. |
| `FOREGROUND_SERVICE` (+ notifications) | The watcher that notices a monitor being connected. |
| `INTERNET` | Only for the manual "check for updates" request to `api.github.com`. No analytics, no telemetry, no other outbound traffic. |

## How it works

MoniTune needs Android's `WRITE_SECURE_SETTINGS` permission to change display
size, density and rotation. Normal apps cannot request it, so MoniTune borrows
Shizuku's shell (or root) **once** to grant it to itself:

```
pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS
```

After that, MoniTune talks to the WindowManager directly and Shizuku is no
longer required. The grant survives reboots. You can also grant it manually
over ADB with the command above.

Force Landscape works without any privileged access at all: it only needs the
two special-access screens.

## Build from source

```bash
flutter pub get
flutter build apk --release
```

The APK is written to `build/app/outputs/flutter-apk/app-release.apk`.

The type is bundled in-tree (Inter and JetBrains Mono under `assets/fonts`, with
their OFL license texts), so the app renders identically offline and never
fetches fonts at runtime.

The launcher icon is generated by `tool/generate_icon.py` (Python + Pillow):

```bash
python3 tool/generate_icon.py
```

## License

MIT — see [LICENSE](LICENSE). Third-party notices are in [NOTICE.md](NOTICE.md).

MoniTune is an independent project and is not affiliated with Xiaomi, Google or
Shizuku.
