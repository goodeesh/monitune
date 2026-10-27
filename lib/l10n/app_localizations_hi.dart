// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'रद्द करें';

  @override
  String get commonDone => 'पूर्ण';

  @override
  String get commonSave => 'सहेजें';

  @override
  String get commonClose => 'बंद करें';

  @override
  String get commonRevert => 'वापस लें';

  @override
  String get commonReset => 'रीसेट करें';

  @override
  String get commonLearnMore => 'और जानें';

  @override
  String get commonBack => 'पीछे';

  @override
  String get commonContinue => 'जारी रखें';

  @override
  String get commonApply => 'लागू करें';

  @override
  String get commonGrant => 'अनुमति दें';

  @override
  String get commonOk => 'ठीक है';

  @override
  String get commonFailed => 'विफल';

  @override
  String get commonEnabled => 'सक्षम';

  @override
  String get commonDisabled => 'अक्षम';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · अपडेट जांचें';
  }

  @override
  String get homeHeroTitle => 'किसी भी मॉनिटर के लिए अपनी स्क्रीन ट्यून करें';

  @override
  String get homeStatusPermanentAccessActive => 'स्थायी एक्सेस सक्रिय है';

  @override
  String get homeStatusPrivilegedAccessReady =>
      'विशेषाधिकार प्राप्त एक्सेस तैयार है';

  @override
  String get homeStatusSetupRequired => 'सेटअप आवश्यक है';

  @override
  String get homeApplyTestProfile => 'टेस्ट प्रोफ़ाइल लागू करें';

  @override
  String get homeApplyFailed =>
      'लागू करने में विफल। अपना विशेषाधिकार प्राप्त एक्सेस जांचें।';

  @override
  String get homeResetDisplayToNative =>
      'डिस्प्ले को फ़ोन डिफ़ॉल्ट पर रीसेट करें';

  @override
  String get homeSectionQuickSettings => 'त्वरित सेटिंग्स';

  @override
  String get homeSectionConfigure => 'कॉन्फ़िगर करें';

  @override
  String get homeNavDisplayTitle => 'डिस्प्ले';

  @override
  String get homeNavDisplaySubtitle =>
      'रिज़ॉल्यूशन, स्केलिंग, स्वरूप और लॉन्चर-सुरक्षित मोड';

  @override
  String get homeNavAccessTitle => 'एक्सेस और अनुमतियां';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, स्थायी एक्सेस और विशेष अनुमतियां';

  @override
  String get homeForceLandscapeTitle => 'फ़ोर्स लैंडस्केप (मिररिंग लॉक)';

  @override
  String get homeForceLandscapeSubtitle =>
      'पोर्ट्रेट में लॉक किए गए ऐप्स पर लैंडस्केप लागू करता है (HyperOS लॉन्चर सहित)। टेस्ट प्रोफ़ाइल लागू करें पर टैप करने पर सक्रिय होता है।';

  @override
  String get homeAutoApplyTitle => 'मॉनिटर कनेक्ट होने पर स्वतः लागू करें';

  @override
  String get homeAutoApplyWatching =>
      'बैकग्राउंड में बाहरी डिस्प्ले की निगरानी की जा रही है।';

  @override
  String get homeAutoApplyDescription =>
      'बाहरी डिस्प्ले कनेक्ट होने पर अपनी प्रोफ़ाइल स्वतः लागू करें।';

  @override
  String get homeAutoApplyBlackoutTitle => 'फ़ोन स्क्रीन बंद करें';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'कनेक्ट होने पर स्क्रीन की चमक शून्य कर देता है (AMOLED के लिए अनुशंसित)';

  @override
  String get homePermissionsRequiredDialogTitle => 'अनुमतियां आवश्यक हैं';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'फ़ोर्स लैंडस्केप केवल दोनों विशेष अनुमतियां मिलने के बाद ही सक्षम किया जा सकता है:';

  @override
  String get homePermissionDisplayOverApps =>
      '• अन्य ऐप्स के ऊपर प्रदर्शित करें';

  @override
  String get homePermissionModifySettings => '• सिस्टम सेटिंग्स संशोधित करें';

  @override
  String get homeGrantOverlay => 'ओवरले अनुमति दें';

  @override
  String get homeGrantSettings => 'सेटिंग्स अनुमति दें';

  @override
  String get homeVersionCheckForUpdates => 'अपडेट जांचें · MIT लाइसेंस';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'अपडेट $version उपलब्ध है';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'टेस्ट प्रोफ़ाइल सक्रिय — $seconds सेकंड में स्वतः वापस होगा';
  }

  @override
  String get homeKeepSettings => 'सेटिंग्स बनाए रखें';

  @override
  String get homeRevertNow => 'अभी वापस लें';

  @override
  String get homeStatusConnected => 'बाहरी डिस्प्ले कनेक्टेड है';

  @override
  String get homeStatusNotDetected => 'कोई बाहरी डिस्प्ले नहीं मिला';

  @override
  String get homeStatusDisconnected => 'डिस्कनेक्ट हो गया';

  @override
  String get homeWatcherActive => 'मॉनिटर सेवा सक्रिय है';

  @override
  String get homeWatcherStopped => 'मॉनिटर सेवा बंद है';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'कनेक्शन पर प्रोफ़ाइल स्वतः लागू करें';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'टेस्ट प्रोफ़ाइल (15s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'पुष्टि न होने पर ${seconds}s में स्वतः वापस आ जाएगा';
  }

  @override
  String get homeScreenOffHint =>
      'तत्काल रद्द करने और वापस लाने के लिए स्क्रीन बंद करें (पावर बटन)';

  @override
  String get homeOrientationLockActiveSummary =>
      'लैंडस्केप लॉक सक्रिय है। इसके चालू रहने तक होम स्क्रीन और हालिया ऐप्स लैंडस्केप में रहेंगे।';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'फ़ोर्स लैंडस्केप को MoniTune के लिए \"अन्य ऐप्स के ऊपर प्रदर्शित करें\" और \"सिस्टम सेटिंग्स संशोधित करें\" दोनों की आवश्यकता है। उन्हें अनुमति दें और पुनः प्रयास करें।';

  @override
  String get homeOrientationLockFailedSummary =>
      'लैंडस्केप लॉक लागू नहीं किया जा सका।';

  @override
  String get displayTitle => 'डिस्प्ले';

  @override
  String get displaySectionTargetResolution => 'लक्षित रिज़ॉल्यूशन';

  @override
  String get displaySectionDesktopUiScaling => 'डेस्कटॉप UI स्केलिंग';

  @override
  String get displaySectionBehaviour => 'व्यवहार';

  @override
  String get displaySectionAppearance => 'स्वरूप';

  @override
  String get displaySectionLanguage => 'भाषा';

  @override
  String get displaySectionPresets => 'डिस्प्ले प्रीसेट';

  @override
  String get displaySectionCustomResolution => 'कस्टम रिज़ॉल्यूशन';

  @override
  String get displaySectionUiScaling => 'UI स्केलिंग';

  @override
  String get displaySectionLauncherOrientation => 'लॉन्चर और ओरिएंटेशन';

  @override
  String get displayDiagResolution => 'रिज़ॉल्यूशन';

  @override
  String get displayDiagDensity => 'डेंसिटी';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'रोटेशन';

  @override
  String get displayDiagExternalDisplay => 'बाहरी डिस्प्ले';

  @override
  String get displayDiagNoneConnected => 'कोई कनेक्टेड नहीं है';

  @override
  String get displayDiagCustomProfile => 'कस्टम प्रोफ़ाइल';

  @override
  String get displayDiagActive => 'सक्रिय';

  @override
  String get displayDiagNotApplied => 'लागू नहीं है';

  @override
  String get displayRotationLandscape90 => 'लैंडस्केप (90°)';

  @override
  String get displayRotationPortrait180 => 'उल्टा पोर्ट्रेट (180°)';

  @override
  String get displayRotationLandscape270 => 'उल्टा लैंडस्केप (270°)';

  @override
  String get displayRotationPortrait0 => 'मानक पोर्ट्रेट (0°)';

  @override
  String get displayPreset1080p => '1080p फुल एचडी (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K अल्ट्रा एचडी (3840 × 2160)';

  @override
  String get displayPreset720p => '720p एचडी (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'अल्ट्रावाइड 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'अल्ट्रावाइड (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'अल्ट्रावाइड (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'फ़ोन का मूल डिस्प्ले';

  @override
  String get displayPresetNativeShort => 'मूल';

  @override
  String get displayPresetCustom => 'कस्टम रिज़ॉल्यूशन…';

  @override
  String get displayPresetCustomShort => 'कस्टम';

  @override
  String get displayWidthPx => 'चौड़ाई (px)';

  @override
  String get displayHeightPx => 'ऊंचाई (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'लक्षित कैनवास: $width × $height पिक्सेल';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% स्केल फ़ैक्टर';
  }

  @override
  String displayScalePercent(int scale) {
    return '$scale%';
  }

  @override
  String displayDpiValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String displayScaleDpiIndicator(int scale, int dpi) {
    return '$scale% ($dpi DPI)';
  }

  @override
  String get displayScaleNativeHint =>
      '100% मोबाइल विजेट को बड़ा किए बिना मूल पीसी डेंसिटी देता है।';

  @override
  String get displayKeepUiDensityTitle =>
      'Android UI डेंसिटी बनाए रखें (लॉन्चर-सुरक्षित)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'रिज़ॉल्यूशन लागू करता है लेकिन Android डेंसिटी को नहीं बदलता, जिससे MIUI/HyperOS होम-स्क्रीन आइकन सुरक्षित रहते हैं।';

  @override
  String get displayLauncherSafeMode => 'लॉन्चर-सुरक्षित मोड';

  @override
  String get displayLauncherSafeModeDesc =>
      'MIUI/HyperOS लॉन्चर आइकन ग्रिड को अक्षुण्ण रखता है';

  @override
  String get displayForceLandscape => 'फ़ोर्स लैंडस्केप';

  @override
  String get displayForceLandscapeDesc =>
      'लॉन्चर को वापस पोर्ट्रेट में घूमने से रोकता है';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI लॉन्चर का पता चला';

  @override
  String get displayMiuiDetectedMessage =>
      'Android डेंसिटी बदलने से आपके होम-स्क्रीन आइकन बिखर सकते हैं और ऐप्स अन्य पृष्ठों पर जा सकते हैं। इसे रोकने के लिए ऊपर \"Android UI डेंसिटी बनाए रखें\" चालू करें — डेस्कटॉप रिज़ॉल्यूशन और मिररिंग अप्रभावित रहते हैं।';

  @override
  String get displayMiuiDetectedTip =>
      'सुझाव: सेटिंग्स → होम स्क्रीन → \"होम स्क्रीन लेआउट लॉक करें\" को भी चालू करें।';

  @override
  String get displayForceLandscapeTitle => 'फ़ोर्स लैंडस्केप';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'सक्षम — जब आप टेस्ट प्रोफ़ाइल लागू करें (होम) पर टैप करते हैं तो लागू होता है।';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'इसे होम स्क्रीन से टॉगल करें। इसके लिए दोनों ओरिएंटेशन अनुमतियों की आवश्यकता होती है।';

  @override
  String get displayAutoResetOnExitTitle =>
      'बाहर निकलने पर रिज़ॉल्यूशन स्वतः रीसेट करें';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'काम पूरा होने पर आपके फ़ोन को उसके मूल रिज़ॉल्यूशन पर वापस लाता है।';

  @override
  String get displayMaterialYouTitle => 'Material You रंग';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'आपके वॉलपेपर पैलेट के अनुसार';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'आपके चुने हुए एक्सेंट का उपयोग कर रहा है';

  @override
  String get displayUseWallpaperTitle => 'वॉलपेपर रंगों का उपयोग करें';

  @override
  String get displayUseWallpaperChecking =>
      'जांच रहा है कि आपका Android संस्करण क्या समर्थित करता है…';

  @override
  String get displayUseWallpaperSupported =>
      'आपके वॉलपेपर से निर्मित Material 3 अभिव्यंजक पैलेट लागू करता है।';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Android 12 या नए संस्करण की आवश्यकता है। इसके बजाय नीचे एक एक्सेंट चुनें।';

  @override
  String get displayWallpaperAndroid12Required =>
      'वॉलपेपर रंगों के लिए Android 12 या नया संस्करण आवश्यक है।';

  @override
  String get displayAccent => 'एक्सेंट';

  @override
  String get displayAccentColorSemantics => 'एक्सेंट रंग';

  @override
  String get displayPalette => 'पैलेट शैली';

  @override
  String get displayPaletteVibrant => 'गहरा (Bold)';

  @override
  String get displayPaletteFidelity => 'सटीक (Exact)';

  @override
  String get displayPaletteExpressive => 'अभिव्यंजक (Expressive)';

  @override
  String get displayPaletteTonalSpot => 'टोनल स्पॉट';

  @override
  String get displayPaletteNeutral => 'तटस्थ (Neutral)';

  @override
  String get displayPaletteContent => 'सामग्री (Content)';

  @override
  String get displayPaletteDescription =>
      'गहरा एक्सेंट रंग को जीवंत रखता है, सटीक इसे हुबहू मिलाता है, और अभिव्यंजक अधिक आकर्षक लुक के लिए रंगों को पुनर्संयोजित करता है।';

  @override
  String get displayContrast => 'कंट्रास्ट';

  @override
  String get displayContrastBoost => 'कंट्रास्ट बूस्ट';

  @override
  String get displayContrastBoosted => 'बढ़ाया गया';

  @override
  String get displayContrastStandard => 'मानक';

  @override
  String get displayContrastDescription =>
      'बढ़ाया गया कंट्रास्ट टेक्स्ट और पृष्ठभूमि को अधिक स्पष्ट करता है — चमकीले वॉलपेपर या दूर बड़े मॉनिटर पर बहुत उपयोगी।';

  @override
  String get displayLanguage => 'भाषा';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'सिस्टम डिफ़ॉल्ट ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get accessTitle => 'एक्सेस और अनुमतियां';

  @override
  String get accessSectionPrivileged => 'विशेषाधिकार प्राप्त एक्सेस';

  @override
  String get accessSectionSpecial => 'विशेष अनुमतियां';

  @override
  String get accessSectionBackground => 'बैकग्राउंड';

  @override
  String get accessForceLandscapeHint =>
      'फ़ोर्स लैंडस्केप के लिए इन दोनों की आवश्यकता होती है।';

  @override
  String get accessPermDisplayOverApps => 'अन्य ऐप्स के ऊपर प्रदर्शित करें';

  @override
  String get accessPermModifySettings => 'सिस्टम सेटिंग्स संशोधित करें';

  @override
  String get accessPermBatteryOptimization => 'बैटरी ऑप्टिमाइज़ेशन छूट';

  @override
  String get accessPermNotifications => 'सूचनाएं (ऑटो-अप्लाई वॉचर)';

  @override
  String get accessPermanentTitle => 'स्थायी एक्सेस सक्रिय है';

  @override
  String get accessPermanentSubtitle =>
      'बिना Shizuku, ADB या वाई-फ़ाई के काम करता है।';

  @override
  String get accessShizukuActiveTitle =>
      'Shizuku विशेषाधिकार प्राप्त एक्सेस सक्रिय है';

  @override
  String get accessShizukuActiveSubtitle =>
      'बाद में Shizuku के बिना चलाने के लिए एक बार स्थायी एक्सेस दें।';

  @override
  String get accessRootActiveTitle => 'रूट (su) एक्सेस उपलब्ध है';

  @override
  String get accessRootActiveSubtitle =>
      'डिस्प्ले परिवर्तन रूट के माध्यम से निष्पादित किए जाएंगे।';

  @override
  String get accessShizukuRequiredTitle => 'Shizuku मिला — अनुमति आवश्यक है';

  @override
  String get accessShizukuRequiredSubtitle =>
      'एक बार अधिकृत करें, फिर स्थायी एक्सेस दें।';

  @override
  String get accessNoAccessTitle => 'कोई विशेषाधिकार प्राप्त एक्सेस नहीं';

  @override
  String get accessNoAccessSubtitle =>
      'परिवर्तनों को सक्षम करने के लिए वायरलेस डिबगिंग के माध्यम से Shizuku प्रारंभ करें, या रूट का उपयोग करें।';

  @override
  String get accessAuthorizeShizuku => 'Shizuku के साथ अधिकृत करें';

  @override
  String get accessShizukuRequested => 'Shizuku अनुमति का अनुरोध किया गया।';

  @override
  String get accessGrantPermanent =>
      'स्थायी एक्सेस प्रदान करें (बाद में Shizuku की आवश्यकता नहीं)';

  @override
  String get accessPermanentGranted =>
      'स्थायी डिस्प्ले एक्सेस सफलतापूर्वक दिया गया!';

  @override
  String get accessPermanentFailed =>
      'अनुमति देने में विफल। क्या Shizuku चल रहा है और अधिकृत है?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'सुरक्षित सेटिंग्स लिखें (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku सेवा';

  @override
  String get accessPrivilegeRoot => 'रूट विशेषाधिकार';

  @override
  String get accessPrivilegeOverlay => 'अन्य ऐप्स के ऊपर प्रदर्शित करें';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'सिस्टम सेटिंग्स संशोधित करें';

  @override
  String get accessPrivilegeNotifications => 'सूचनाएं';

  @override
  String get accessPrivilegeBatteryOptimization => 'बैटरी ऑप्टिमाइज़ेशन';

  @override
  String get accessStatusGranted => 'स्वीकृत';

  @override
  String get accessStatusMissing => 'अनुपलब्ध';

  @override
  String get accessStatusNotRunning => 'चल नहीं रहा है';

  @override
  String get accessStatusRequired => 'आवश्यक';

  @override
  String get accessAdbInstruction =>
      'यदि Shizuku उपलब्ध नहीं है तो कंप्यूटर से ADB कमांड चलाएं।';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'छोड़ें';

  @override
  String get onboardingBack => 'पीछे';

  @override
  String get onboardingNext => 'आगे';

  @override
  String get onboardingGetStarted => 'शुरू करें';

  @override
  String get onboardingWelcomeTitle => 'MoniTune में आपका स्वागत है';

  @override
  String get onboardingWelcomeBody =>
      'किसी भी बाहरी मॉनिटर के लिए अपने Android डिस्प्ले को ट्यून करें। मनचाहा रिज़ॉल्यूशन और स्केल सेट करें, अपनी होम स्क्रीन को व्यवस्थित रखें और वाइडस्क्रीन लैंडस्केप लागू करें — सब कुछ एक हल्के ऐप से।';

  @override
  String get onboardingWelcomeBullet1 => 'रिज़ॉल्यूशन और UI स्केल प्रीसेट';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI/HyperOS लॉन्चर-सुरक्षित मोड';

  @override
  String get onboardingWelcomeBullet3 => 'वॉलपेपर से मेल खाते गतिशील रंग';

  @override
  String get onboardingProblemTitle => 'Android की अंतर्निहित सीमाएं';

  @override
  String get onboardingProblemBody =>
      'जब आप अपने फ़ोन को मॉनिटर पर मिरर करते हैं, तो Android रिज़ॉल्यूशन, डेंसिटी और रोटेशन स्वतः तय करता है — और सामान्य ऐप्स को इन्हें बदलने की अनुमति नहीं होती।';

  @override
  String get onboardingProblemBullet1 =>
      'Xiaomi MIUI/HyperOS पर डेंसिटी बदलने से आपके होम-स्क्रीन आइकन अन्य पेजों पर बिखर सकते हैं।';

  @override
  String get onboardingProblemBullet2 =>
      'काली पट्टियों को हटाने या वाइडस्क्रीन आकार चुनने का कोई इन-बिल्ट तरीका नहीं है।';

  @override
  String get onboardingWhyTitle => 'Shizuku या रूट की आवश्यकता क्यों है?';

  @override
  String get onboardingWhyBody =>
      'MoniTune द्वारा किए जाने वाले कार्यों के लिए WRITE_SECURE_SETTINGS अनुमति की आवश्यकता होती है, जो Android केवल विशेषाधिकार प्राप्त ऐप्स को देता है।';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku वायरलेस डिबगिंग पर दी गई अनुमतियों के साथ कमांड चलाता है — रूट की कोई आवश्यकता नहीं है।';

  @override
  String get onboardingWhyBullet2 =>
      'यदि आपका फ़ोन पहले से रूट है, तो MoniTune सीधे रूट का उपयोग कर सकता है।';

  @override
  String get onboardingWhyBullet3 =>
      'पूर्ण पारदर्शिता: MoniTune इस एक्सेस का उपयोग केवल डिस्प्ले आकार, डेंसिटी और रोटेशन बदलने के लिए करता है।';

  @override
  String get onboardingPathsTitle => 'सेटअप विधि चुनें';

  @override
  String get onboardingPathsBody =>
      'दोनों में से कोई भी तरीका समान सुविधाएं अनलॉक करता है।';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (बिना रूट)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'अधिकांश फ़ोनों के लिए अनुशंसित। वायरलेस डिबगिंग के साथ एकमुश्त सेटअप आवश्यक है।';

  @override
  String get onboardingPathsRootTitle => 'रूट (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'यदि आपका डिवाइस पहले से रूट है, तो MoniTune इसका स्वतः पता लगा लेता है।';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku सेट करना';

  @override
  String get onboardingShizukuStepsBody =>
      'Shizuku इंस्टॉल करें और इसे एक बार शुरू करें। MoniTune आगे का मार्गदर्शन करेगा।';

  @override
  String get onboardingShizukuStep1 =>
      'Shizuku को आधिकारिक साइट या GitHub Releases से इंस्टॉल करें।';

  @override
  String get onboardingShizukuStep2 =>
      'Shizuku खोलें और इसे वायरलेस डिबगिंग (Android 11+) या ADB के माध्यम से शुरू करें।';

  @override
  String get onboardingShizukuStep3 =>
      'MoniTune पर वापस आएं और \"Shizuku के साथ अधिकृत करें\" पर टैप करें।';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku सेटअप गाइड खोलें';

  @override
  String get onboardingOneTimeTitle => 'एकमुश्त सेटअप';

  @override
  String get onboardingOneTimeBody =>
      'जब तक Shizuku (या रूट) उपलब्ध है, MoniTune खुद को स्थायी WRITE_SECURE_SETTINGS अनुमति दे सकता है।';

  @override
  String get onboardingOneTimeBullet1 =>
      'इसे एक बार दें — इसके बाद MoniTune बिना Shizuku, बिना ADB और बिना वाई-फ़ाई के काम करता है।';

  @override
  String get onboardingOneTimeBullet2 =>
      'फ़ोन रीस्टार्ट होने के बाद भी अनुमति बनी रहती है।';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku को केवल उस एक क्षण के लिए चालू रखने की आवश्यकता होती है।';

  @override
  String get onboardingSafetyTitle => 'अंतर्निहित सुरक्षा';

  @override
  String get onboardingSafetyBody =>
      'डिस्प्ले का आकार बदलने से स्क्रीन अस्थायी रूप से पढ़ने योग्य नहीं रह सकती, इसलिए MoniTune आपकी सुरक्षा करता है।';

  @override
  String get onboardingSafetyBullet1 =>
      'जब तक आप \"सेटिंग्स बनाए रखें\" पर टैप नहीं करते, टेस्ट मोड 15 सेकंड के बाद स्वतः वापस हो जाता है।';

  @override
  String get onboardingSafetyBullet2 =>
      'स्क्रीन बंद करने से आपका मूल रिज़ॉल्यूशन तुरंत बहाल हो जाता है।';

  @override
  String get onboardingSafetyBullet3 =>
      'लॉन्चर-सुरक्षित मोड डेंसिटी परिवर्तन को छोड़ देता है ताकि MIUI/HyperOS आइकन सुरक्षित रहें।';

  @override
  String get onboardingReadyTitle => 'आप तैयार हैं';

  @override
  String get onboardingReadyBody =>
      'इसके बाद अपना विशेषाधिकार प्राप्त एक्सेस और दो विशेष अनुमतियां सेट करें। फिर रिज़ॉल्यूशन और स्केल चुनें, और सहेजने से पहले 15-सेकंड के सुरक्षा रीवर्ट के साथ परीक्षण करें।';

  @override
  String get onboardingReadyBullet1 =>
      'ऑटो-अप्लाई: मॉनिटर कनेक्ट होते ही प्रोफ़ाइल लागू होती है और अनप्लग होने पर रीसेट होती है।';

  @override
  String get onboardingReadyBullet2 =>
      'फ़ोर्स लैंडस्केप हर ऐप के ओरिएंटेशन को ओवरराइड करता है — HyperOS लॉन्चर सहित (Android 12+)।';

  @override
  String get onboardingReadyBullet3 =>
      'Android 12+ पर, MoniTune आपके वॉलपेपर (Material You) से रंग ग्रहण कर सकता है।';

  @override
  String get onboardingReadyButton => 'अब एक्सेस सेट करें';

  @override
  String infoVersion(String version) {
    return 'संस्करण $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'संस्करण $version · बिल्ड $buildNumber';
  }

  @override
  String get infoChecking => 'जांच रहा है…';

  @override
  String get infoCheckingForUpdates => 'अपडेट खोज रहा है…';

  @override
  String get infoCheckForUpdates => 'अपडेट जांचें';

  @override
  String get infoDistributedVia => 'GitHub Releases के माध्यम से वितरित';

  @override
  String get infoMitLicense => 'MIT लाइसेंस प्राप्त · ओपन सोर्स उपलब्ध';

  @override
  String get infoPrivacyNotice =>
      'अपडेट जांचने के अलावा कोई भी डेटा इस डिवाइस से बाहर नहीं जाता है';

  @override
  String get infoOpenReleasePage => 'रिलीज़ पृष्ठ खोलें';

  @override
  String get infoOpenReleases => 'GitHub Releases खोलें';

  @override
  String get infoNoBrowser => 'कोई वेब ब्राउज़र उपलब्ध नहीं है।';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version उपलब्ध है।';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'नया संस्करण $version उपलब्ध है';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'आप नवीनतम संस्करण ($version) पर हैं।';
  }

  @override
  String get infoUpdateUpToDateShort => 'आप अप-टू-डेट हैं';

  @override
  String get infoUpdateFailed => 'अपडेट जांच विफल रही';

  @override
  String get infoRateLimit =>
      'GitHub वर्तमान में इस नेटवर्क पर अनुरोधों को सीमित कर रहा है। कुछ मिनटों में पुनः प्रयास करें।';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub ने स्थिति कोड $statusCode के साथ उत्तर दिया।';
  }

  @override
  String get infoUnexpectedResponse => 'GitHub से अप्रत्याशित प्रतिक्रिया।';

  @override
  String get infoNoRelease => 'GitHub ने किसी रिलीज़ की सूचना नहीं दी।';

  @override
  String get infoTimeout => 'GitHub ने समय पर उत्तर नहीं दिया।';

  @override
  String get infoNoNetwork => 'कोई नेटवर्क कनेक्शन नहीं है।';

  @override
  String get infoGenericError => 'अपडेट की जांच नहीं की जा सकी।';

  @override
  String get safetyEmergencyRevertHint =>
      'तत्काल रद्द करने और वापस लाने के लिए स्क्रीन बंद करें (पावर बटन)';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'पुष्टि न होने पर ${seconds}s में स्वतः वापस आ जाएगा';
  }
}
