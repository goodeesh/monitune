// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonDone => 'تم';

  @override
  String get commonSave => 'حفظ';

  @override
  String get commonClose => 'إغلاق';

  @override
  String get commonRevert => 'استعادة';

  @override
  String get commonReset => 'إعادة ضبط';

  @override
  String get commonLearnMore => 'مزيد من المعلومات';

  @override
  String get commonBack => 'رجوع';

  @override
  String get commonContinue => 'متابعة';

  @override
  String get commonApply => 'تطبيق';

  @override
  String get commonGrant => 'منح';

  @override
  String get commonOk => 'حسناً';

  @override
  String get commonFailed => 'فشل';

  @override
  String get commonEnabled => 'مفعّل';

  @override
  String get commonDisabled => 'معطّل';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · التحقق من وجود تحديثات';
  }

  @override
  String get homeHeroTitle => 'اضبط شاشتك لتناسب أي شاشة خارجية';

  @override
  String get homeStatusPermanentAccessActive => 'الوصول الدائم نشط';

  @override
  String get homeStatusPrivilegedAccessReady => 'صلاحيات الوصول جاهزة';

  @override
  String get homeStatusSetupRequired => 'الإعداد مطلوب';

  @override
  String get homeApplyTestProfile => 'تطبيق ملف تجريبي';

  @override
  String get homeApplyFailed => 'فشل التطبيق. تحقق من الصلاحيات الممنوحة.';

  @override
  String get homeResetDisplayToNative =>
      'إعادة تعيين الشاشة للوضع الافتراضي للهاتف';

  @override
  String get homeSectionQuickSettings => 'الإعدادات السريعة';

  @override
  String get homeSectionConfigure => 'التهيئة';

  @override
  String get homeNavDisplayTitle => 'الشاشة';

  @override
  String get homeNavDisplaySubtitle =>
      'الدقة، التحجيم، المظهر والوضع الآمن للمشغل';

  @override
  String get homeNavAccessTitle => 'الوصول والأذونات';

  @override
  String get homeNavAccessSubtitle => 'Shizuku، الوصول الدائم والأذونات الخاصة';

  @override
  String get homeForceLandscapeTitle => 'فرض الوضع الأفقي (قفل النسخ المتطابق)';

  @override
  String get homeForceLandscapeSubtitle =>
      'فرض الوضع الأفقي على التطبيقات المقفلة بالوضع الرأسي (بما في ذلك مشغل HyperOS). يُطبق عند النقر على تطبيق ملف تجريبي.';

  @override
  String get homeAutoApplyTitle => 'تطبيق تلقائي عند توصيل شاشة';

  @override
  String get homeAutoApplyWatching => 'مراقبة الشاشات الخارجية في الخلفية.';

  @override
  String get homeAutoApplyDescription =>
      'تطبيق الملف التعريفي تلقائياً عند توصيل شاشة خارجية.';

  @override
  String get homeAutoApplyBlackoutTitle => 'إعتام شاشة الهاتف';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'يخفض سطوع الشاشة إلى الصفر عند الاتصال (موصى به لشاشات AMOLED)';

  @override
  String get homePermissionsRequiredDialogTitle => 'الأذونات مطلوبة';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'لا يمكن تفعيل فرض الوضع الأفقي إلا بعد منح كلا الإذنين الخاصين:';

  @override
  String get homePermissionDisplayOverApps => '• الظهور فوق التطبيقات الأخرى';

  @override
  String get homePermissionModifySettings => '• تعديل إعدادات النظام';

  @override
  String get homeGrantOverlay => 'منح إذن الظهور فوق التطبيقات';

  @override
  String get homeGrantSettings => 'منح إذن تعديل الإعدادات';

  @override
  String get homeVersionCheckForUpdates => 'تحقق من التحديثات · مرخص برخصة MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'التحديث $version متوفر الآن';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'الملف التجريبي نشط — سيتم التراجع خلال $seconds ثانية';
  }

  @override
  String get homeKeepSettings => 'الاحتفاظ بالإعدادات';

  @override
  String get homeRevertNow => 'استعادة الآن';

  @override
  String get homeStatusConnected => 'تم توصيل شاشة خارجية';

  @override
  String get homeStatusNotDetected => 'لم يتم اكتشاف شاشة خارجية';

  @override
  String get homeStatusDisconnected => 'تم قطع الاتصال';

  @override
  String get homeWatcherActive => 'مراقبة الشاشة نشطة';

  @override
  String get homeWatcherStopped => 'مراقبة الشاشة متوقفة';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'تطبيق الملف التعريفي تلقائياً عند الاتصال';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height بنسبة $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'ملف تجريبي (15 ثانية)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'تراجع تلقائي خلال $seconds ثانية ما لم يتم التأكيد';
  }

  @override
  String get homeScreenOffHint =>
      'أوقف تشغيل الشاشة (زر الطاقة) للإلغاء والاستعادة فوراً';

  @override
  String get homeOrientationLockActiveSummary =>
      'قفل الوضع الأفقي نشط. ستبقى الشاشة الرئيسية والتطبيقات الحديثة بالوضع الأفقي أثناء تشغيله.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'يحتاج فرض الوضع الأفقي إلى إذني \"الظهور فوق التطبيقات الأخرى\" و\"تعديل إعدادات النظام\" لتطبيق MoniTune. امنحهما ثم أعد المحاولة.';

  @override
  String get homeOrientationLockFailedSummary => 'تعذر تطبيق قفل الوضع الأفقي.';

  @override
  String get displayTitle => 'الشاشة';

  @override
  String get displaySectionTargetResolution => 'الدقة المستهدفة';

  @override
  String get displaySectionDesktopUiScaling => 'تحجيم واجهة سطح المكتب';

  @override
  String get displaySectionBehaviour => 'السلوك';

  @override
  String get displaySectionAppearance => 'المظهر';

  @override
  String get displaySectionLanguage => 'اللغة';

  @override
  String get displaySectionPresets => 'الإعدادات المسبقة للشاشة';

  @override
  String get displaySectionCustomResolution => 'دقة مخصصة';

  @override
  String get displaySectionUiScaling => 'تحجيم واجهة المستخدم';

  @override
  String get displaySectionLauncherOrientation => 'المشغل والاتجاه';

  @override
  String get displayDiagResolution => 'الدقة';

  @override
  String get displayDiagDensity => 'الكثافة';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'التدوير';

  @override
  String get displayDiagExternalDisplay => 'الشاشة الخارجية';

  @override
  String get displayDiagNoneConnected => 'لا توجد شاشة متصلة';

  @override
  String get displayDiagCustomProfile => 'ملف تعريف مخصص';

  @override
  String get displayDiagActive => 'نشط';

  @override
  String get displayDiagNotApplied => 'غير مطبق';

  @override
  String get displayRotationLandscape90 => 'أفقي (90°)';

  @override
  String get displayRotationPortrait180 => 'رأسي مقلوب (180°)';

  @override
  String get displayRotationLandscape270 => 'أفقي مقلوب (270°)';

  @override
  String get displayRotationPortrait0 => 'رأسي قياسي (0°)';

  @override
  String get displayPreset1080p => '1080p عالي الدقة بالكامل (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K فائق الدقة (3840 × 2160)';

  @override
  String get displayPreset720p => '720p عالي الدقة (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'شاشة عريضة جداً 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'شاشة عريضة جداً (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'شاشة عريضة جداً (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'شاشة الهاتف الأصلية';

  @override
  String get displayPresetNativeShort => 'أصلي';

  @override
  String get displayPresetCustom => 'دقة مخصصة…';

  @override
  String get displayPresetCustomShort => 'مخصص';

  @override
  String get displayWidthPx => 'العرض (بكسل)';

  @override
  String get displayHeightPx => 'الارتفاع (بكسل)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'مساحة العرض المستهدفة: $width × $height بكسل';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'عامل التحجيم $scale%';
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
      '100% تمنح كثافة الكمبيوتر الأصلية دون تكبير أدوات واجهة الهاتف.';

  @override
  String get displayKeepUiDensityTitle =>
      'الحفاظ على كثافة واجهة Android (آمن للمشغل)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'يطبق الدقة مع إبقاء كثافة Android دون تغيير، لمنع تبعثر أيقونات شاشة MIUI/HyperOS الرئيسية.';

  @override
  String get displayLauncherSafeMode => 'الوضع الآمن للمشغل';

  @override
  String get displayLauncherSafeModeDesc =>
      'يحافظ على شبكة أيقونات مشغل MIUI/HyperOS سليمة';

  @override
  String get displayForceLandscape => 'فرض الوضع الأفقي';

  @override
  String get displayForceLandscapeDesc =>
      'منع المشغل من الرجوع تلقائياً إلى الوضع الرأسي';

  @override
  String get displayMiuiDetectedTitle => 'تم اكتشاف مشغل HyperOS / MIUI';

  @override
  String get displayMiuiDetectedMessage =>
      'قد يؤدي تغيير كثافة Android إلى إعادة ترتيب أيقونات شاشتك الرئيسية وتبعثر التطبيقات على صفحات أخرى. فعّل \"الحفاظ على كثافة واجهة Android\" أعلاه لتفادي ذلك — ولن تتأثر دقة سطح المكتب أو النسخ المتطابق.';

  @override
  String get displayMiuiDetectedTip =>
      'تلميح: يُنصح أيضاً بتفعيل الإعدادات ← الشاشة الرئيسية ← \"قفل تخطيط الشاشة الرئيسية\".';

  @override
  String get displayForceLandscapeTitle => 'فرض الوضع الأفقي';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'مفعّل — يُطبق عند النقر على تطبيق ملف تجريبي (الرئيسية).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'يمكنك تبديله من الشاشة الرئيسية. يتطلب كلا إذني اتجاه الشاشة.';

  @override
  String get displayAutoResetOnExitTitle =>
      'إعادة ضبط الدقة تلقائياً عند الخروج';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'يستعيد الدقة الأصلية لهاتفك عند الانتهاء.';

  @override
  String get displayMaterialYouTitle => 'ألوان Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'متوافق مع لوحة ألوان الخلفية';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'استخدام لون التمييز المحدد';

  @override
  String get displayUseWallpaperTitle => 'استخدام ألوان الخلفية';

  @override
  String get displayUseWallpaperChecking => 'التحقق من دعم إصدار Android لديك…';

  @override
  String get displayUseWallpaperSupported =>
      'يطبق لوحة ألوان Material 3 التعبيرية المستخرجة من خلفية شاشتك.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'يتطلب الإصدار Android 12 أو أحدث. اختر لون تمييز أدناه بدلاً من ذلك.';

  @override
  String get displayWallpaperAndroid12Required =>
      'تتطلب ألوان الخلفية نظام Android 12 أو أحدث.';

  @override
  String get displayAccent => 'التمييز';

  @override
  String get displayAccentColorSemantics => 'لون التمييز';

  @override
  String get displayPalette => 'لوحة الألوان';

  @override
  String get displayPaletteVibrant => 'نابض بالحياة';

  @override
  String get displayPaletteFidelity => 'دقيق';

  @override
  String get displayPaletteExpressive => 'تعبيري';

  @override
  String get displayPaletteTonalSpot => 'نقطة نغمية';

  @override
  String get displayPaletteNeutral => 'محايد';

  @override
  String get displayPaletteContent => 'المحتوى';

  @override
  String get displayPaletteDescription =>
      'النمط النابض بالحياة يبقي اللون ساطعاً، الدقيق يطابقه بدقة، والتعبيري يتيح لـ Material 3 مزج التدرجات لمظهر جذاب ومميز.';

  @override
  String get displayContrast => 'التباين';

  @override
  String get displayContrastBoost => 'تعزيز التباين';

  @override
  String get displayContrastBoosted => 'معزّز';

  @override
  String get displayContrastStandard => 'قياسي';

  @override
  String get displayContrastDescription =>
      'يرفع التعزيز تباين النصوص والعناصر — مفيد جداً مع الخلفيات شديدة السطوع أو على شاشة كبيرة عن بُعد.';

  @override
  String get displayLanguage => 'اللغة';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'افتراضي النظام ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'افتراضي النظام';

  @override
  String get accessTitle => 'الوصول والأذونات';

  @override
  String get accessSectionPrivileged => 'الوصول المميّز';

  @override
  String get accessSectionSpecial => 'الأذونات الخاصة';

  @override
  String get accessSectionBackground => 'الخلفية';

  @override
  String get accessForceLandscapeHint => 'يتطلب فرض الوضع الأفقي كلا الإذنين.';

  @override
  String get accessPermDisplayOverApps => 'الظهور فوق التطبيقات الأخرى';

  @override
  String get accessPermModifySettings => 'تعديل إعدادات النظام';

  @override
  String get accessPermBatteryOptimization => 'استثناء من تحسين البطارية';

  @override
  String get accessPermNotifications => 'الإشعارات (مراقب التطبيق التلقائي)';

  @override
  String get accessPermanentTitle => 'الوصول الدائم نشط';

  @override
  String get accessPermanentSubtitle =>
      'يعمل دون الحاجة إلى Shizuku أو ADB أو Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'وصول Shizuku المميّز نشط';

  @override
  String get accessShizukuActiveSubtitle =>
      'امنح الوصول الدائم لمرة واحدة للعمل دون Shizuku لاحقاً.';

  @override
  String get accessRootActiveTitle => 'وصول Root (su) متاح';

  @override
  String get accessRootActiveSubtitle =>
      'سيتم تنفيذ تعديلات الشاشة عبر صلاحية الروت.';

  @override
  String get accessShizukuRequiredTitle =>
      'تم اكتشاف Shizuku — يلزم الحصول على إذن';

  @override
  String get accessShizukuRequiredSubtitle =>
      'قم بالترخيص لمرة واحدة ثم امنح الوصول الدائم.';

  @override
  String get accessNoAccessTitle => 'لا يتوفر وصول مميّز';

  @override
  String get accessNoAccessSubtitle =>
      'قم بتشغيل Shizuku عبر تصحيح الأخطاء اللاسلكي أو استخدم الروت لتمكين التعديلات.';

  @override
  String get accessAuthorizeShizuku => 'الترخيص باستخدام Shizuku';

  @override
  String get accessShizukuRequested => 'تم طلب إذن Shizuku.';

  @override
  String get accessGrantPermanent => 'منح وصول دائم (بدون Shizuku بعد ذلك)';

  @override
  String get accessPermanentGranted =>
      'تم منح وصول دائم إلى إعدادات الشاشة بنجاح!';

  @override
  String get accessPermanentFailed =>
      'فشل المنح. هل تطبيق Shizuku قيد التشغيل ومرخص؟';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'كتابة الإعدادات الآمنة (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'خدمة Shizuku';

  @override
  String get accessPrivilegeRoot => 'صلاحيات Root';

  @override
  String get accessPrivilegeOverlay => 'الظهور فوق التطبيقات الأخرى';

  @override
  String get accessPrivilegeModifySystemSettings => 'تعديل إعدادات النظام';

  @override
  String get accessPrivilegeNotifications => 'الإشعارات';

  @override
  String get accessPrivilegeBatteryOptimization => 'تحسين البطارية';

  @override
  String get accessStatusGranted => 'ممنوح';

  @override
  String get accessStatusMissing => 'مفقود';

  @override
  String get accessStatusNotRunning => 'غير مشغّل';

  @override
  String get accessStatusRequired => 'مطلوب';

  @override
  String get accessAdbInstruction =>
      'قم بتنفيذ أمر ADB من جهاز الكمبيوتر إذا لم يكن Shizuku متاحاً.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'تخطي';

  @override
  String get onboardingBack => 'رجوع';

  @override
  String get onboardingNext => 'التالي';

  @override
  String get onboardingGetStarted => 'البدء';

  @override
  String get onboardingWelcomeTitle => 'مرحباً بك في MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'اضبط شاشة هاتفك التي تعمل بنظام Android لتلائم أي شاشة خارجية. حدد الدقة ونسبة التحجيم التي تريدها، وحافظ على ترتيب شاشتك الرئيسية، وافرض الوضع الأفقي العريض — كل ذلك من تطبيق واحد صغير.';

  @override
  String get onboardingWelcomeBullet1 =>
      'إعدادات مسبقة للدقة وتحجيم واجهة المستخدم';

  @override
  String get onboardingWelcomeBullet2 => 'وضع آمن لمشغلات MIUI / HyperOS';

  @override
  String get onboardingWelcomeBullet3 => 'ألوان متناسقة مع خلفية شاشتك';

  @override
  String get onboardingProblemTitle => 'القيود التي يفرضها Android';

  @override
  String get onboardingProblemBody =>
      'عند نسخ شاشة هاتفك إلى شاشة خارجية، يحدد Android الدقة والكثافة والتدوير تلقائياً — ولا يُسمح للتطبيقات العادية بتعديلها.';

  @override
  String get onboardingProblemBullet1 =>
      'قد يؤدي تغيير الكثافة على هواتف Xiaomi MIUI/HyperOS إلى تبعثر أيقونات الشاشة الرئيسية على صفحات متعددة.';

  @override
  String get onboardingProblemBullet2 =>
      'لا توجد طريقة مدمجة لإزالة الأشرطة السوداء أو اختيار حجم شاشة عريضة.';

  @override
  String get onboardingWhyTitle => 'لماذا نحتاج إلى Shizuku أو Root؟';

  @override
  String get onboardingWhyBody =>
      'تتطلب الإجراءات التي ينفذها MoniTune إذن WRITE_SECURE_SETTINGS، والذي يمنحه Android فقط للتطبيقات ذات الصلاحيات المرتفعة.';

  @override
  String get onboardingWhyBullet1 =>
      'يقوم Shizuku بتشغيل الأوامر بالصلاحيات الممنوحة عبر تصحيح الأخطاء اللاسلكي — دون الحاجة إلى روت.';

  @override
  String get onboardingWhyBullet2 =>
      'إذا كان هاتفك مروّتاً بالفعل، يمكن لـ MoniTune استخدام صلاحية الروت مباشرة.';

  @override
  String get onboardingWhyBullet3 =>
      'شفافية تامة: يستخدم MoniTune هذا الوصول فقط لتعديل أبعاد الشاشة وكثافتها وتدويرها.';

  @override
  String get onboardingPathsTitle => 'اختر طريقة الإعداد';

  @override
  String get onboardingPathsBody => 'تفتح كلتا الطريقتين نفس الميزات تماماً.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (بدون روت)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'موصى به لمعظم الهواتف. يتطلب إعداداً لمرة واحدة عبر تصحيح الأخطاء اللاسلكي.';

  @override
  String get onboardingPathsRootTitle => 'الروت (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'إذا كان جهازك مروّتاً بالفعل، سيكتشفه MoniTune تلقائياً.';

  @override
  String get onboardingShizukuStepsTitle => 'إعداد Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'قم بتثبيت Shizuku ثم تشغيله لمرة واحدة. وسيقوم MoniTune بإرشادك بعد ذلك.';

  @override
  String get onboardingShizukuStep1 =>
      'قم بتثبيت Shizuku من الموقع الرسمي أو من إصدارات GitHub.';

  @override
  String get onboardingShizukuStep2 =>
      'افتح Shizuku وشغّله عبر تصحيح الأخطاء اللاسلكي (Android 11+) أو ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'عد إلى MoniTune واضغط على \"الترخيص باستخدام Shizuku\".';

  @override
  String get onboardingShizukuGuideButton => 'فتح دليل إعداد Shizuku';

  @override
  String get onboardingOneTimeTitle => 'إعداد لمرة واحدة';

  @override
  String get onboardingOneTimeBody =>
      'طالما أن Shizuku (أو الروت) متاح، يمكن لـ MoniTune منح نفسه إذن WRITE_SECURE_SETTINGS بشكل دائم.';

  @override
  String get onboardingOneTimeBullet1 =>
      'امنحه مرة واحدة — بعد ذلك سيعمل MoniTune بدون Shizuku وبدون ADB وبدون Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'يظل الإذن محفوظاً حتى بعد إعادة تشغيل الهاتف.';

  @override
  String get onboardingOneTimeBullet3 =>
      'يلزم تشغيل Shizuku في تلك اللحظة فقط.';

  @override
  String get onboardingSafetyTitle => 'حماية وأمان مدمج';

  @override
  String get onboardingSafetyBody =>
      'قد يؤدي تغيير أبعاد الشاشة إلى جعلها غير مقروءة مؤقتاً، لذا يوفّر MoniTune آليات حماية تلقائية.';

  @override
  String get onboardingSafetyBullet1 =>
      'يتراجع وضع الاختبار تلقائياً بعد 15 ثانية ما لم تضغط على \"الاحتفاظ بالإعدادات\".';

  @override
  String get onboardingSafetyBullet2 =>
      'يؤدي إيقاف تشغيل الشاشة إلى استعادة دقة هاتفك الأصلية فوراً.';

  @override
  String get onboardingSafetyBullet3 =>
      'يتجاوز الوضع الآمن تغييرات الكثافة لتبقى أيقونات MIUI/HyperOS في مكانها.';

  @override
  String get onboardingReadyTitle => 'أنت جاهز تماماً';

  @override
  String get onboardingReadyBody =>
      'اضبط وصولك المميّز والإذنين الخاصين في الخطوة التالية. ثم اختر الدقة والتحجيم واختبرهما بأمان مع ميزة التراجع خلال 15 ثانية قبل الحفظ.';

  @override
  String get onboardingReadyBullet1 =>
      'التطبيق التلقائي: يطبق ملفك التعريفي لحظة توصيل الشاشة ويعيد الضبط عند فصلها.';

  @override
  String get onboardingReadyBullet2 =>
      'يتجاوز فرض الوضع الأفقي قفل الاتجاه في أي تطبيق — بما في ذلك مشغل HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'في Android 12+، يمكن لـ MoniTune استخراج ألوانه من خلفية شاشتك (Material You).';

  @override
  String get onboardingReadyButton => 'إعداد الوصول الآن';

  @override
  String infoVersion(String version) {
    return 'الإصدار $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'الإصدار $version · البناء $buildNumber';
  }

  @override
  String get infoChecking => 'جارٍ التحقق…';

  @override
  String get infoCheckingForUpdates => 'جارٍ البحث عن تحديثات…';

  @override
  String get infoCheckForUpdates => 'التحقق من وجود تحديثات';

  @override
  String get infoDistributedVia => 'موزع عبر إصدارات GitHub';

  @override
  String get infoMitLicense => 'مرخص برخصة MIT · الكود المصدري متاح';

  @override
  String get infoPrivacyNotice =>
      'لا تخرج أي بيانات من هذا الجهاز باستثناء وقت التحقق من التحديثات';

  @override
  String get infoOpenReleasePage => 'فتح صفحة الإصدار';

  @override
  String get infoOpenReleases => 'فتح إصدارات GitHub';

  @override
  String get infoNoBrowser => 'لا يتوفر متصفح ويب.';

  @override
  String infoUpdateAvailable(String version) {
    return 'الإصدار $version من MoniTune متوفر الآن.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'يتوفر إصدار جديد $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'أنت تستخدم أحدث إصدار ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'أنت على أحدث إصدار';

  @override
  String get infoUpdateFailed => 'فشل التحقق من وجود تحديثات';

  @override
  String get infoRateLimit =>
      'يقوم GitHub بتقييد الطلبات مؤقتاً من هذه الشبكة. حاول مرة أخرى بعد بضع دقائق.';

  @override
  String infoStatusError(int statusCode) {
    return 'استجاب GitHub برمز الحالة $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'استجابة غير متوقعة من GitHub.';

  @override
  String get infoNoRelease => 'لم يبلغ GitHub عن أي إصدارات.';

  @override
  String get infoTimeout => 'انتهت مهلة استجابة GitHub.';

  @override
  String get infoNoNetwork => 'لا يوجد اتصال بالشبكة.';

  @override
  String get infoGenericError => 'تعذر التحقق من وجود تحديثات.';

  @override
  String get safetyEmergencyRevertHint =>
      'أوقف تشغيل الشاشة (زر الطاقة) للإلغاء والاستعادة فوراً';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'تراجع تلقائي خلال $seconds ثانية ما لم يتم التأكيد';
  }
}
