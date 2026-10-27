# MoniTune Auto-Apply Screen Blackout Specification

**Date:** 2026-10-27  
**Status:** In Review  
**Target Release:** MoniTune v1.2.0  

---

## 1. Overview & Objectives

When mirroring an Android phone to an external monitor or TV via HDMI/DisplayPort (USB-C Alt Mode), the phone's built-in screen remains powered on. This causes significant battery drain, device overheating, and risk of AMOLED screen burn-in (especially from static launcher elements, taskbars, or window decorations).

Because standard Android OS sleep (`PowerManager.goToSleep()`) cuts the compositor pipeline and terminates HDMI mirror feeds, and because hardware panel power cut (`SurfaceControl.setDisplayPowerMode(POWER_MODE_OFF)`) requires continuous root or an active Shizuku session, MoniTune introduces **Automated Zero-Brightness Blackout** operating under **Permanent Access Active** (`WRITE_SECURE_SETTINGS`).

### Key Objectives
1. **Permanent Access Compatibility:** Zero runtime requirement for Shizuku, root, Wi-Fi, or PC after the initial one-time grant.
2. **Auto-Apply Sub-Option:** Placed in the UI strictly as a child option under **Auto-apply on connect**, active only when auto-apply is enabled.
3. **Automated Lifecycle:** Automatically dims the screen to zero when an external display connects, and restores the user's previous brightness and auto-brightness state when the monitor is unplugged.
4. **Safety & Fail-safes:** Guarantee that the phone screen never remains blacked out if the app is killed, the service stops, the cable is pulled abruptly, or the device reboots.

---

## 2. Technical Mechanism: Why Zero-Brightness Dimming

### 2.1 The Mirroring Compositor Pipeline
In Android's `SurfaceFlinger`, wired HDMI mirroring clones the primary display's layer stack (`Display 0`) to the external display (`Display 1`). 

* **Why an AMOLED black overlay fails:** A software overlay window (`TYPE_APPLICATION_OVERLAY`) drawn on `Display 0` is composed into the display buffer. Because HDMI mirrors `Display 0`, any black overlay drawn on the phone is duplicated onto the external monitor, blanking both screens.
* **Why Hardware Brightness works:** `Settings.System.SCREEN_BRIGHTNESS` controls the physical panel backlight / OLED PWM duty cycle. Digital HDMI video feeds carry uncompressed digital RGB and ignore device backlight levels. Setting `SCREEN_BRIGHTNESS` to `0` leaves the HDMI output at 100% full, vivid brightness while reducing the phone panel's diode emission to the hardware minimum.

### 2.2 Permissions
Modifying `Settings.System.SCREEN_BRIGHTNESS` and `Settings.System.SCREEN_BRIGHTNESS_MODE` requires `WRITE_SETTINGS` or `WRITE_SECURE_SETTINGS`. MoniTune already holds `WRITE_SECURE_SETTINGS` under **Permanent Access Active**, allowing seamless writes across device reboots without background daemons.

---

## 3. Architecture & Data Flow

```
[ User Connects HDMI/DP Cable ]
               │
               ▼
   [ DisplayManager.DisplayListener ]
               │ (Display 1 connected)
               ▼
   [ ExternalDisplayService.evaluateDisplays() ]
               │
      Is Blackout Enabled?
      ├── No ──► Apply resolution & orientation profile
      └── Yes ─► 1. Query & cache current brightness + brightness mode
                 2. Persist cached values to SharedPreferences ("monitune_auto")
                 3. Set SCREEN_BRIGHTNESS_MODE = MANUAL (0)
                 4. Set SCREEN_BRIGHTNESS = 0
                 5. Mark isBlackoutActive = true
                 6. Apply resolution & orientation profile

               │
[ User Disconnects HDMI/DP Cable OR Service Stops ]
               │
               ▼
   [ ExternalDisplayService.evaluateDisplays() / onDestroy() ]
               │
      Is isBlackoutActive == true?
      └── Yes ─► 1. Retrieve cached brightness + mode from SharedPreferences
                 2. Set SCREEN_BRIGHTNESS = savedBrightness
                 3. Set SCREEN_BRIGHTNESS_MODE = savedMode
                 4. Clear cached brightness in SharedPreferences
                 5. Reset isBlackoutActive = false
```

---

## 4. Component Details

### 4.1 UI / UX (`lib/screens/home_screen.dart`)
1. Located in the Profile card on `HomeScreen`, directly beneath the **Auto-apply on connect** switch list tile.
2. Rendered as an indented sub-option:
   * **Title:** `homeAutoApplyBlackoutTitle` ("Blackout phone screen")
   * **Subtitle:** `homeAutoApplyBlackoutSubtitle` ("Dims phone display to zero on connect (AMOLED recommended)")
   * **Enabling Rule:** Enabled and editable only when `state.autoApplyOnExternalDisplay == true`. When auto-apply is off, the switch is disabled and visually dimmed or hidden.

### 4.2 State Management (`lib/state/app_state.dart`)
1. Property: `bool _blackoutOnConnect = false` with getter `bool get blackoutOnConnect`.
2. Persisted in Flutter `SharedPreferences` under key `'auto_blackout_external'`.
3. Method: `Future<void> setBlackoutOnConnect(bool enabled)`:
   * Updates `_blackoutOnConnect`.
   * Saves to `_prefs`.
   * Calls `notifyListeners()`.
   * If `_autoApplyOnExternalDisplay && _isAutoWatchRunning`, invokes `_updateWatch()` to sync native service state.
4. When `setAutoApplyOnExternalDisplay(false)` is called:
   * `_blackoutOnConnect` is forced to `false` or deactivated.

### 4.3 Platform Bridge (`lib/services/platform_bridge.dart` & `MainActivity.kt`)
1. Method channel methods updated:
   * `startExternalDisplayWatch({..., required bool blackoutPhone})`
   * `updateExternalDisplayWatch({..., required bool blackoutPhone})`
2. `MainActivity.kt` extracts `call.argument<Boolean>("blackoutPhone") ?: false` and forwards it to `ExternalDisplayService.saveConfig(...)`.

### 4.4 Background Watcher (`ExternalDisplayService.kt`)
1. **Preferences & Constants:**
   * `EXTRA_BLACKOUT = "blackoutPhone"`
   * `KEY_BLACKOUT = "blackoutPhone"`
   * `KEY_SAVED_BRIGHTNESS = "savedBrightness"`
   * `KEY_SAVED_BRIGHTNESS_MODE = "savedBrightnessMode"`
   * `KEY_BLACKOUT_ACTIVE = "isBlackoutActive"`
2. **Lifecycle Methods:**
   * `applyBlackout(context: Context)`:
     * Saves current `SCREEN_BRIGHTNESS` and `SCREEN_BRIGHTNESS_MODE`.
     * Writes `SCREEN_BRIGHTNESS_MODE = 0` and `SCREEN_BRIGHTNESS = 0`.
   * `restoreBlackout(context: Context)`:
     * Restores saved values.
     * Clears preferences.
3. **Disconnection Handling:**
   * `evaluateDisplays()` triggers `restoreBlackout()` when presentation display count drops to 0.
4. **Service Teardown:**
   * `onDestroy()` and `ACTION_STOP` call `restoreBlackout()` if `isBlackoutActive` is true.

### 4.5 Boot & Crash Recovery (`BootReceiver.kt` & `ExternalDisplayService.onCreate`)
* If device rebooted or process terminated unexpectedly while blackout was active:
  * On startup, check `KEY_BLACKOUT_ACTIVE`.
  * If true and no external presentation display is currently connected, execute `restoreBlackout()` immediately to prevent the phone from starting at brightness 0.

---

## 5. Localization (`lib/l10n/`)

New keys added to `app_en.arb`:
```json
"homeAutoApplyBlackoutTitle": "Blackout phone screen",
"@homeAutoApplyBlackoutTitle": {
  "description": "Sub-option title under Auto-apply to dim phone screen to zero when mirroring"
},
"homeAutoApplyBlackoutSubtitle": "Dims phone display to zero on connect (AMOLED recommended)",
"@homeAutoApplyBlackoutSubtitle": {
  "description": "Sub-option description under Auto-apply explaining brightness zeroing for AMOLED screens"
}
```

These keys will be propagated to all 17 supported locales.

---

## 6. Testing & Verification Plan

1. **Unit & State Tests:**
   * Test `AppState`: toggling `autoApplyOnExternalDisplay` to `false` deactivates `blackoutOnConnect`.
   * Test preference persistence of `'auto_blackout_external'`.
2. **Platform Channel Tests:**
   * Verify arguments sent over MethodChannel include `blackoutPhone`.
3. **Android Service & Safety Tests:**
   * Verify connect event triggers `Settings.System.putInt` for brightness 0.
   * Verify disconnect event restores previous brightness.
   * Verify service `onDestroy` restores previous brightness.
   * Verify boot recovery checks and cleans orphaned blackout state.
4. **Locale Key Parity:**
   * Run existing i18n test suites (`test/i18n_test.dart` and `tool/verify_translations.dart`) to ensure 100% key parity across all 17 ARB files.
