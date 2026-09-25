# MoniTune notices

Copyright (C) 2026 MoniTune.

MoniTune is free software licensed under the MIT License. See [LICENSE](LICENSE).

## Third-party software

MoniTune builds on the following third-party components, each under its own
license:

| Component | License | Source |
|---|---|---|
| Flutter SDK | BSD-3-Clause | https://flutter.dev |
| Shizuku API & Provider (`dev.rikka.shizuku`) | Apache-2.0 | https://github.com/RikkaApps/Shizuku |
| HiddenApiBypass (`org.lsposed.hiddenapibypass`) | Apache-2.0 | https://github.com/LSPosed/AndroidHiddenApiBypass |
| dynamic_color | Apache-2.0 | https://github.com/material-foundation/flutter-packages |
| material_color_utilities, material_ui | Apache-2.0, BSD-3-Clause | https://github.com/material-foundation/material-color-utilities |
| provider | MIT | https://github.com/rrousselGit/provider |
| shared_preferences, url_launcher, package_info_plus | BSD-3-Clause | https://github.com/flutter/packages |
| cupertino_icons | MIT | https://github.com/flutter/packages |

## Bundled fonts

The type is bundled in-tree under `assets/fonts/`, so MoniTune renders
identically offline and never downloads fonts at runtime. Both families are
licensed under the SIL Open Font License 1.1, and their license texts ship
alongside the font files:

| Family | License | License file |
|---|---|---|
| Inter | OFL-1.1 | `assets/fonts/LICENSE-Inter.txt` |
| JetBrains Mono | OFL-1.1 | `assets/fonts/LICENSE-JetBrainsMono.txt` |

MoniTune is an independent project. It is not affiliated with, sponsored by, or
endorsed by Xiaomi, Google or Shizuku. Third-party names and marks belong to
their respective owners and are used only to identify compatible software.

## Network access

MoniTune holds the `INTERNET` permission for one purpose: when you tap
**Check for updates** in the app, it performs a single HTTPS `GET` against
`https://api.github.com/repos/goodeesh/monitune/releases/latest` and opens the
release page in your browser. There is no analytics, no crash reporting, no
telemetry, and no other outbound request. The check is never automatic.

## Signing

Releases are signed with a committed, test-only keystore
(`android/keystore/monitune-test.jks`, credentials in `android/key.properties`).
A shared key is used so that release updates install over previous versions.
This key is public and provides no security; it must not be used for Google Play
or any production distribution.

This software is provided without warranty; see the MIT License for details.
