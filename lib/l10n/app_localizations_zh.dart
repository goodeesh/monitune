// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => '取消';

  @override
  String get commonDone => '完成';

  @override
  String get commonSave => '保存';

  @override
  String get commonClose => '关闭';

  @override
  String get commonRevert => '还原';

  @override
  String get commonReset => '重置';

  @override
  String get commonLearnMore => '了解更多';

  @override
  String get commonBack => '返回';

  @override
  String get commonContinue => '继续';

  @override
  String get commonApply => '应用';

  @override
  String get commonGrant => '授权';

  @override
  String get commonOk => '确定';

  @override
  String get commonFailed => '失败';

  @override
  String get commonEnabled => '已启用';

  @override
  String get commonDisabled => '已停用';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · 检查更新';
  }

  @override
  String get homeHeroTitle => '为外接显示器精细调优显示效果';

  @override
  String get homeStatusPermanentAccessActive => '永久特权已生效';

  @override
  String get homeStatusPrivilegedAccessReady => '特权访问已就绪';

  @override
  String get homeStatusSetupRequired => '需要配置';

  @override
  String get homeApplyTestProfile => '应用测试配置';

  @override
  String get homeApplyFailed => '应用失败，请检查特权访问权限。';

  @override
  String get homeResetDisplayToNative => '将显示重置为手机默认';

  @override
  String get homeSectionQuickSettings => '快捷设置';

  @override
  String get homeSectionConfigure => '配置选项';

  @override
  String get homeNavDisplayTitle => '显示';

  @override
  String get homeNavDisplaySubtitle => '分辨率、缩放、外观风格及桌面保护模式';

  @override
  String get homeNavAccessTitle => '访问权限与授权';

  @override
  String get homeNavAccessSubtitle => 'Shizuku、永久特权与特殊权限';

  @override
  String get homeForceLandscapeTitle => '强制横屏 (镜像锁定)';

  @override
  String get homeForceLandscapeSubtitle =>
      '强制覆盖竖屏应用 (包括 HyperOS 桌面)。点击“应用测试配置”后生效。';

  @override
  String get homeAutoApplyTitle => '连接外接显示器时自动应用';

  @override
  String get homeAutoApplyWatching => '正在后台监听外接显示器连接。';

  @override
  String get homeAutoApplyDescription => '外接显示器连接时自动应用配置。';

  @override
  String get homeAutoApplyBlackoutTitle => '熄灭手机屏幕';

  @override
  String get homeAutoApplyBlackoutSubtitle => '连接时将手机屏幕亮度调至最低（推荐 AMOLED 屏幕）';

  @override
  String get homePermissionsRequiredDialogTitle => '需要授予权限';

  @override
  String get homePermissionsRequiredDialogMessage => '必须授予以下两项特殊权限后方可启用强制横屏：';

  @override
  String get homePermissionDisplayOverApps => '• 显示在其他应用的上层';

  @override
  String get homePermissionModifySettings => '• 修改系统设置';

  @override
  String get homeGrantOverlay => '授予悬浮窗权限';

  @override
  String get homeGrantSettings => '授予系统设置权限';

  @override
  String get homeVersionCheckForUpdates => '检查更新 · MIT 开源协议';

  @override
  String homeVersionUpdateAvailable(String version) {
    return '有新版本 $version 可用';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return '测试配置已生效 — 将在 $seconds 秒后自动还原';
  }

  @override
  String get homeKeepSettings => '保留设置';

  @override
  String get homeRevertNow => '立即还原';

  @override
  String get homeStatusConnected => '已连接外接显示器';

  @override
  String get homeStatusNotDetected => '未检测到外接显示器';

  @override
  String get homeStatusDisconnected => '已断开连接';

  @override
  String get homeWatcherActive => '显示器监听服务运行中';

  @override
  String get homeWatcherStopped => '显示器监听服务已停止';

  @override
  String get homeAutoApplyProfileOnConnection => '连接时自动应用配置';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => '测试配置 (15秒)';

  @override
  String homeRevertCountdown(int seconds) {
    return '若未确认，将在 $seconds 秒后自动还原';
  }

  @override
  String get homeScreenOffHint => '熄灭屏幕 (电源键) 可立即取消并还原';

  @override
  String get homeOrientationLockActiveSummary => '横屏锁定生效中。开启时桌面与最近任务均保持横屏。';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      '强制横屏需要为 MoniTune 授予“显示在其他应用的上层”和“修改系统设置”两项权限。请授权后重试。';

  @override
  String get homeOrientationLockFailedSummary => '无法应用横屏锁定。';

  @override
  String get displayTitle => '显示';

  @override
  String get displaySectionTargetResolution => '目标分辨率';

  @override
  String get displaySectionDesktopUiScaling => '桌面 UI 缩放';

  @override
  String get displaySectionBehaviour => '行为偏好';

  @override
  String get displaySectionAppearance => '外观风格';

  @override
  String get displaySectionLanguage => '语言设置';

  @override
  String get displaySectionPresets => '显示预设';

  @override
  String get displaySectionCustomResolution => '自定义分辨率';

  @override
  String get displaySectionUiScaling => 'UI 缩放比例';

  @override
  String get displaySectionLauncherOrientation => '桌面与方向';

  @override
  String get displayDiagResolution => '分辨率';

  @override
  String get displayDiagDensity => '屏幕密度';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => '旋转方向';

  @override
  String get displayDiagExternalDisplay => '外接显示器';

  @override
  String get displayDiagNoneConnected => '未连接';

  @override
  String get displayDiagCustomProfile => '自定义配置';

  @override
  String get displayDiagActive => '生效中';

  @override
  String get displayDiagNotApplied => '未应用';

  @override
  String get displayRotationLandscape90 => '横屏 (90°)';

  @override
  String get displayRotationPortrait180 => '竖屏倒转 (180°)';

  @override
  String get displayRotationLandscape270 => '反向横屏 (270°)';

  @override
  String get displayRotationPortrait0 => '标准竖屏 (0°)';

  @override
  String get displayPreset1080p => '1080p 全高清 (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K 超高清 (3840 × 2160)';

  @override
  String get displayPreset720p => '720p 高清 (1280 × 720)';

  @override
  String get displayPresetUltrawide => '带鱼屏 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => '超宽带鱼屏 (1080p)';

  @override
  String get displayPresetUltrawide1440p => '超宽带鱼屏 (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => '手机原生屏幕';

  @override
  String get displayPresetNativeShort => '原生';

  @override
  String get displayPresetCustom => '自定义分辨率…';

  @override
  String get displayPresetCustomShort => '自定义';

  @override
  String get displayWidthPx => '宽度 (像素)';

  @override
  String get displayHeightPx => '高度 (像素)';

  @override
  String displayTargetCanvas(int width, int height) {
    return '目标渲染画布：$width × $height 像素';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% 缩放比例';
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
  String get displayScaleNativeHint => '100% 对应原生 PC 密度，不会放大手机端微件。';

  @override
  String get displayKeepUiDensityTitle => '保持 Android 界面密度 (保护桌面)';

  @override
  String get displayKeepUiDensitySubtitle =>
      '仅更改分辨率而不修改 Android 密度，防止 MIUI/HyperOS 桌面图标排列错乱。';

  @override
  String get displayLauncherSafeMode => '桌面保护模式';

  @override
  String get displayLauncherSafeModeDesc => '保持 MIUI/HyperOS 桌面图标网格排列完整';

  @override
  String get displayForceLandscape => '强制横屏';

  @override
  String get displayForceLandscapeDesc => '防止桌面退回竖屏方向';

  @override
  String get displayMiuiDetectedTitle => '检测到 HyperOS / MIUI 桌面';

  @override
  String get displayMiuiDetectedMessage =>
      '调整 Android 密度可能导致桌面图标重新排列并分散到其他屏幕分页。开启上方的“保持 Android 界面密度”可避免此问题 — 桌面分辨率和镜像输出不受影响。';

  @override
  String get displayMiuiDetectedTip => '提示：建议同时在系统设置 → 桌面中开启“锁定桌面布局”。';

  @override
  String get displayForceLandscapeTitle => '强制横屏';

  @override
  String get displayForceLandscapeSubtitleEnabled => '已启用 — 点击首页“应用测试配置”后生效。';

  @override
  String get displayForceLandscapeSubtitleDisabled => '可从首页切换。需要先授予两项横屏所需权限。';

  @override
  String get displayAutoResetOnExitTitle => '退出时自动重置分辨率';

  @override
  String get displayAutoResetOnExitSubtitle => '使用完毕退出后自动恢复手机原生分辨率。';

  @override
  String get displayMaterialYouTitle => 'Material You 动态色彩';

  @override
  String get displayMaterialYouFollowingWallpaper => '跟随壁纸配色方案';

  @override
  String get displayMaterialYouUsingChosenAccent => '使用自定义强调色';

  @override
  String get displayUseWallpaperTitle => '提取壁纸颜色';

  @override
  String get displayUseWallpaperChecking => '正在检查当前 Android 版本支持情况…';

  @override
  String get displayUseWallpaperSupported => '基于壁纸自动生成 Material 3 表现力配色方案。';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      '需要 Android 12 或更高版本，请在下方选择强调色。';

  @override
  String get displayWallpaperAndroid12Required => '壁纸取色功能需要 Android 12 或更高版本。';

  @override
  String get displayAccent => '强调色';

  @override
  String get displayAccentColorSemantics => '强调色选择';

  @override
  String get displayPalette => '调色板风格';

  @override
  String get displayPaletteVibrant => '鲜亮 (Bold)';

  @override
  String get displayPaletteFidelity => '精准 (Exact)';

  @override
  String get displayPaletteExpressive => '表现力 (Expressive)';

  @override
  String get displayPaletteTonalSpot => '色调焦点 (Tonal)';

  @override
  String get displayPaletteNeutral => '中性 (Neutral)';

  @override
  String get displayPaletteContent => '内容优先 (Content)';

  @override
  String get displayPaletteDescription =>
      '鲜亮风格色彩更饱满；精准风格贴近原色；表现力风格由 Material 3 重新调配色彩，呈现更多层次感。';

  @override
  String get displayContrast => '对比度';

  @override
  String get displayContrastBoost => '增强对比度';

  @override
  String get displayContrastBoosted => '增强';

  @override
  String get displayContrastStandard => '标准';

  @override
  String get displayContrastDescription =>
      '增强文字与界面底色对比度 — 适合搭配极亮壁纸或在较远的大屏显示器上查看。';

  @override
  String get displayLanguage => '语言';

  @override
  String displayLanguageSystemDefault(String language) {
    return '跟随系统 ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => '跟随系统';

  @override
  String get accessTitle => '访问权限与授权';

  @override
  String get accessSectionPrivileged => '特权访问';

  @override
  String get accessSectionSpecial => '特殊权限';

  @override
  String get accessSectionBackground => '后台运行';

  @override
  String get accessForceLandscapeHint => '强制横屏功能需要这两项权限。';

  @override
  String get accessPermDisplayOverApps => '显示在其他应用的上层';

  @override
  String get accessPermModifySettings => '修改系统设置';

  @override
  String get accessPermBatteryOptimization => '忽略电池优化';

  @override
  String get accessPermNotifications => '通知 (自动应用监听服务)';

  @override
  String get accessPermanentTitle => '永久特权已生效';

  @override
  String get accessPermanentSubtitle => '无需 Shizuku、ADB 或 Wi-Fi 即可直接运行。';

  @override
  String get accessShizukuActiveTitle => 'Shizuku 特权已激活';

  @override
  String get accessShizukuActiveSubtitle => '建议一次性授予永久特权，之后无需运行 Shizuku。';

  @override
  String get accessRootActiveTitle => 'Root (su) 权限可用';

  @override
  String get accessRootActiveSubtitle => '将通过 Root 权限执行显示设置更改。';

  @override
  String get accessShizukuRequiredTitle => '检测到 Shizuku — 需要授权';

  @override
  String get accessShizukuRequiredSubtitle => '授权后即可一键获取永久特权。';

  @override
  String get accessNoAccessTitle => '未获取特权';

  @override
  String get accessNoAccessSubtitle => '通过无线调试启动 Shizuku 或使用 Root 权限以启用显示调整。';

  @override
  String get accessAuthorizeShizuku => '通过 Shizuku 授权';

  @override
  String get accessShizukuRequested => '已请求 Shizuku 权限。';

  @override
  String get accessGrantPermanent => '授予永久特权 (后续无需 Shizuku)';

  @override
  String get accessPermanentGranted => '已成功授予永久显示设置权限！';

  @override
  String get accessPermanentFailed => '授权失败。请确认 Shizuku 正在运行且已完成授权。';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      '写入安全系统设置 (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku 服务';

  @override
  String get accessPrivilegeRoot => 'Root 特权';

  @override
  String get accessPrivilegeOverlay => '显示在其他应用的上层';

  @override
  String get accessPrivilegeModifySystemSettings => '修改系统设置';

  @override
  String get accessPrivilegeNotifications => '通知权限';

  @override
  String get accessPrivilegeBatteryOptimization => '电池优化白名单';

  @override
  String get accessStatusGranted => '已授权';

  @override
  String get accessStatusMissing => '未授予';

  @override
  String get accessStatusNotRunning => '未运行';

  @override
  String get accessStatusRequired => '必需';

  @override
  String get accessAdbInstruction => '若无法使用 Shizuku，可在电脑上执行 ADB 命令完成授权。';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => '跳过';

  @override
  String get onboardingBack => '返回';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingGetStarted => '立即开始';

  @override
  String get onboardingWelcomeTitle => '欢迎使用 MoniTune';

  @override
  String get onboardingWelcomeBody =>
      '为各类外接显示器自由调优 Android 显示效果。随心设置所需分辨率与缩放比例，保持桌面图标整洁，强制全屏横向显示 — 尽在这款精巧的工具中。';

  @override
  String get onboardingWelcomeBullet1 => '分辨率与 UI 缩放预设';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI / HyperOS 桌面保护模式';

  @override
  String get onboardingWelcomeBullet3 => '跟随壁纸的动态配色';

  @override
  String get onboardingProblemTitle => 'Android 系统的固有局限';

  @override
  String get onboardingProblemBody =>
      '当手机镜像到显示器时，Android 会自动指定分辨率、密度与旋转方向，普通应用无法自行调整。';

  @override
  String get onboardingProblemBullet1 =>
      '在小米 MIUI/HyperOS 上更改屏幕密度可能导致桌面图标散落到其他页面。';

  @override
  String get onboardingProblemBullet2 => '系统没有内置去除黑边或切换宽屏比例的选项。';

  @override
  String get onboardingWhyTitle => '为什么需要 Shizuku 或 Root？';

  @override
  String get onboardingWhyBody =>
      'MoniTune 所需的操作依赖 WRITE_SECURE_SETTINGS 权限，Android 系统仅向特权应用开放该权限。';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku 通过无线调试以您授予的特权运行 Shell 命令 — 完全无需 Root。';

  @override
  String get onboardingWhyBullet2 => '若设备已获取 Root 权限，MoniTune 也可以直接通过 Root 执行。';

  @override
  String get onboardingWhyBullet3 => '全程透明安全：MoniTune 仅使用该特权调整屏幕尺寸、密度与旋转方向。';

  @override
  String get onboardingPathsTitle => '选择配置方式';

  @override
  String get onboardingPathsBody => '无论哪种方式均可解锁完整功能。';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (无需 Root)';

  @override
  String get onboardingPathsShizukuSubtitle => '推荐大多数机型使用。仅需通过无线调试进行一次简单配置。';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle => '若您的设备已经 Root，MoniTune 会自动完成识别。';

  @override
  String get onboardingShizukuStepsTitle => '配置 Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      '安装 Shizuku 并启动一次，MoniTune 会引导您完成后续步骤。';

  @override
  String get onboardingShizukuStep1 => '从官网或 GitHub Releases 下载并安装 Shizuku。';

  @override
  String get onboardingShizukuStep2 =>
      '打开 Shizuku，通过无线调试 (Android 11+) 或 ADB 启动服务。';

  @override
  String get onboardingShizukuStep3 => '返回 MoniTune 并点击“通过 Shizuku 授权”。';

  @override
  String get onboardingShizukuGuideButton => '打开 Shizuku 配置指引';

  @override
  String get onboardingOneTimeTitle => '一次性授权';

  @override
  String get onboardingOneTimeBody =>
      '在 Shizuku (或 Root) 可用时，MoniTune 可以为自身授予永久的 WRITE_SECURE_SETTINGS 权限。';

  @override
  String get onboardingOneTimeBullet1 =>
      '仅需授权一次 — 之后无需 Shizuku、ADB 或 Wi-Fi 即可正常运行。';

  @override
  String get onboardingOneTimeBullet2 => '手机重启后权限依然保持有效。';

  @override
  String get onboardingOneTimeBullet3 => 'Shizuku 仅在授权那一瞬间需要处于运行状态。';

  @override
  String get onboardingSafetyTitle => '多重安全防护';

  @override
  String get onboardingSafetyBody => '更改屏幕尺寸可能导致界面暂时难以辨认，MoniTune 提供全方位安全保护。';

  @override
  String get onboardingSafetyBullet1 => '测试模式在 15 秒后自动还原，除非您主动点击“保留设置”。';

  @override
  String get onboardingSafetyBullet2 => '按下电源键熄灭屏幕即可瞬间恢复手机默认分辨率。';

  @override
  String get onboardingSafetyBullet3 =>
      '桌面保护模式跳过密度修改，确保 MIUI/HyperOS 图标排列整齐不变。';

  @override
  String get onboardingReadyTitle => '准备就绪';

  @override
  String get onboardingReadyBody =>
      '接下来请完成特权访问配置与两项特殊权限授权。之后即可自由选择分辨率与缩放，并在 15 秒安全倒计时保护下测试显示效果。';

  @override
  String get onboardingReadyBullet1 => '自动应用：连接显示器瞬间自动应用配置，拔出线缆时自动还原。';

  @override
  String get onboardingReadyBullet2 =>
      '强制横屏：覆盖所有应用方向锁定 — 包括 HyperOS 桌面 (Android 12+)。';

  @override
  String get onboardingReadyBullet3 =>
      '在 Android 12+ 上，MoniTune 可自动提取壁纸色调 (Material You)。';

  @override
  String get onboardingReadyButton => '立即配置权限';

  @override
  String infoVersion(String version) {
    return '版本 $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return '版本 $version · build $buildNumber';
  }

  @override
  String get infoChecking => '正在检查…';

  @override
  String get infoCheckingForUpdates => '正在检查更新…';

  @override
  String get infoCheckForUpdates => '检查更新';

  @override
  String get infoDistributedVia => '通过 GitHub Releases 分发';

  @override
  String get infoMitLicense => '遵循 MIT 开源协议 · 开放源代码';

  @override
  String get infoPrivacyNotice => '除非您主动检查更新，否则绝不向外发送任何数据';

  @override
  String get infoOpenReleasePage => '打开发布页面';

  @override
  String get infoOpenReleases => '前往 GitHub Releases';

  @override
  String get infoNoBrowser => '未检测到可用的网页浏览器。';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version 已发布。';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return '发现新版本 $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return '您当前使用的是最新版本 ($version)。';
  }

  @override
  String get infoUpdateUpToDateShort => '已是最新版本';

  @override
  String get infoUpdateFailed => '检查更新失败';

  @override
  String get infoRateLimit => 'GitHub 目前对当前网络限制了访问速率，请几分钟后再试。';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub 返回错误状态码 $statusCode。';
  }

  @override
  String get infoUnexpectedResponse => '收到来自 GitHub 的非预期响应。';

  @override
  String get infoNoRelease => 'GitHub 未返回任何发布信息。';

  @override
  String get infoTimeout => '连接 GitHub 超时。';

  @override
  String get infoNoNetwork => '无网络连接。';

  @override
  String get infoGenericError => '无法检查更新。';

  @override
  String get safetyEmergencyRevertHint => '熄灭屏幕 (电源键) 可立即取消并还原';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return '若未确认，将在 $seconds 秒后自动还原';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => '取消';

  @override
  String get commonDone => '完成';

  @override
  String get commonSave => '儲存';

  @override
  String get commonClose => '關閉';

  @override
  String get commonRevert => '還原';

  @override
  String get commonReset => '重設';

  @override
  String get commonLearnMore => '瞭解詳情';

  @override
  String get commonBack => '返回';

  @override
  String get commonContinue => '繼續';

  @override
  String get commonApply => '套用';

  @override
  String get commonGrant => '授予';

  @override
  String get commonOk => '確定';

  @override
  String get commonFailed => '失敗';

  @override
  String get commonEnabled => '已啟用';

  @override
  String get commonDisabled => '已停用';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · 檢查更新';
  }

  @override
  String get homeHeroTitle => '為外接螢幕精準調校最佳顯示效果';

  @override
  String get homeStatusPermanentAccessActive => '永久特權已生效';

  @override
  String get homeStatusPrivilegedAccessReady => '特權存取已就緒';

  @override
  String get homeStatusSetupRequired => '需要設定';

  @override
  String get homeApplyTestProfile => '套用測試設定檔';

  @override
  String get homeApplyFailed => '套用失敗，請檢查特權存取權限。';

  @override
  String get homeResetDisplayToNative => '將顯示重設為手機預設值';

  @override
  String get homeSectionQuickSettings => '快速設定';

  @override
  String get homeSectionConfigure => '設定選項';

  @override
  String get homeNavDisplayTitle => '顯示';

  @override
  String get homeNavDisplaySubtitle => '解析度、縮放、外觀風格與桌面保護模式';

  @override
  String get homeNavAccessTitle => '存取權限與授權';

  @override
  String get homeNavAccessSubtitle => 'Shizuku、永久特權與特殊權限';

  @override
  String get homeForceLandscapeTitle => '強制橫向 (鏡像鎖定)';

  @override
  String get homeForceLandscapeSubtitle =>
      '強制覆蓋固定直向的應用程式 (包含 HyperOS 桌面)。點選「套用測試設定檔」後生效。';

  @override
  String get homeAutoApplyTitle => '連接螢幕時自動套用';

  @override
  String get homeAutoApplyWatching => '正在背景監控外接螢幕連線。';

  @override
  String get homeAutoApplyDescription => '外接螢幕連線時自動套用設定檔。';

  @override
  String get homeAutoApplyBlackoutTitle => '熄滅手機螢幕';

  @override
  String get homeAutoApplyBlackoutSubtitle => '連線時將手機螢幕亮度調至最低（建議 AMOLED 螢幕）';

  @override
  String get homePermissionsRequiredDialogTitle => '需要授予權限';

  @override
  String get homePermissionsRequiredDialogMessage => '必須授予下列兩項特殊權限後方可啟用強制橫向：';

  @override
  String get homePermissionDisplayOverApps => '• 顯示在其他應用程式上層';

  @override
  String get homePermissionModifySettings => '• 修改系統設定';

  @override
  String get homeGrantOverlay => '授予懸浮視窗權限';

  @override
  String get homeGrantSettings => '授予系統設定權限';

  @override
  String get homeVersionCheckForUpdates => '檢查更新 · MIT 開源授權';

  @override
  String homeVersionUpdateAvailable(String version) {
    return '有新版本 $version 可用';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return '測試設定檔已生效 — 將在 $seconds 秒後自動還原';
  }

  @override
  String get homeKeepSettings => '保留設定';

  @override
  String get homeRevertNow => '立即還原';

  @override
  String get homeStatusConnected => '已連接外接螢幕';

  @override
  String get homeStatusNotDetected => '未偵測到外接螢幕';

  @override
  String get homeStatusDisconnected => '已中斷連線';

  @override
  String get homeWatcherActive => '螢幕監控服務執行中';

  @override
  String get homeWatcherStopped => '螢幕監控服務已停止';

  @override
  String get homeAutoApplyProfileOnConnection => '連線時自動套用設定檔';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => '測試設定檔 (15秒)';

  @override
  String homeRevertCountdown(int seconds) {
    return '若未確認，將在 $seconds 秒後自動還原';
  }

  @override
  String get homeScreenOffHint => '關閉螢幕 (電源鍵) 可立即取消並還原';

  @override
  String get homeOrientationLockActiveSummary =>
      '橫向鎖定生效中。開啟時主畫面與最近開啟的應用程式均維持橫向。';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      '強制橫向需要為 MoniTune 授予「顯示在其他應用程式上層」與「修改系統設定」兩項權限。請授權後重試。';

  @override
  String get homeOrientationLockFailedSummary => '無法套用橫向螢幕鎖定。';

  @override
  String get displayTitle => '顯示';

  @override
  String get displaySectionTargetResolution => '目標解析度';

  @override
  String get displaySectionDesktopUiScaling => '桌面 UI 縮放';

  @override
  String get displaySectionBehaviour => '行為偏好';

  @override
  String get displaySectionAppearance => '外觀風格';

  @override
  String get displaySectionLanguage => '語言設定';

  @override
  String get displaySectionPresets => '顯示預設';

  @override
  String get displaySectionCustomResolution => '自訂解析度';

  @override
  String get displaySectionUiScaling => 'UI 縮放比例';

  @override
  String get displaySectionLauncherOrientation => '桌面與方向';

  @override
  String get displayDiagResolution => '解析度';

  @override
  String get displayDiagDensity => '螢幕密度';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => '旋轉方向';

  @override
  String get displayDiagExternalDisplay => '外接螢幕';

  @override
  String get displayDiagNoneConnected => '未連接';

  @override
  String get displayDiagCustomProfile => '自訂設定檔';

  @override
  String get displayDiagActive => '生效中';

  @override
  String get displayDiagNotApplied => '未套用';

  @override
  String get displayRotationLandscape90 => '橫向 (90°)';

  @override
  String get displayRotationPortrait180 => '直向倒轉 (180°)';

  @override
  String get displayRotationLandscape270 => '反向橫向 (270°)';

  @override
  String get displayRotationPortrait0 => '標準直向 (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => '超寬螢幕 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => '超寬螢幕 (1080p)';

  @override
  String get displayPresetUltrawide1440p => '超寬螢幕 (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => '手機原生螢幕';

  @override
  String get displayPresetNativeShort => '原生';

  @override
  String get displayPresetCustom => '自訂解析度…';

  @override
  String get displayPresetCustomShort => '自訂';

  @override
  String get displayWidthPx => '寬度 (像素)';

  @override
  String get displayHeightPx => '高度 (像素)';

  @override
  String displayTargetCanvas(int width, int height) {
    return '目標繪製畫布：$width × $height 像素';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% 縮放比例';
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
  String get displayScaleNativeHint => '100% 對應原生 PC 密度，不會放大手機端小工具。';

  @override
  String get displayKeepUiDensityTitle => '維持 Android 介面密度 (保護桌面)';

  @override
  String get displayKeepUiDensitySubtitle =>
      '僅變更解析度而不修改 Android 密度，防止 MIUI/HyperOS 桌面圖示排列錯亂。';

  @override
  String get displayLauncherSafeMode => '桌面保護模式';

  @override
  String get displayLauncherSafeModeDesc => '維持 MIUI/HyperOS 桌面圖示網格排列完整';

  @override
  String get displayForceLandscape => '強制橫向';

  @override
  String get displayForceLandscapeDesc => '防止桌面退回直向方向';

  @override
  String get displayMiuiDetectedTitle => '偵測到 HyperOS / MIUI 桌面';

  @override
  String get displayMiuiDetectedMessage =>
      '調整 Android 密度可能導致桌面圖示重新排列並分散至其他螢幕分頁。開啟上方的「維持 Android 介面密度」可避免此問題 — 桌面解析度與鏡像輸出不受影響。';

  @override
  String get displayMiuiDetectedTip => '提示：建議同時在系統設定 → 主畫面中開啟「鎖定主畫面配置」。';

  @override
  String get displayForceLandscapeTitle => '強制橫向';

  @override
  String get displayForceLandscapeSubtitleEnabled => '已啟用 — 點選首頁「套用測試設定檔」後生效。';

  @override
  String get displayForceLandscapeSubtitleDisabled => '可從首頁切換。需要先授予兩項橫向所需權限。';

  @override
  String get displayAutoResetOnExitTitle => '結束時自動重設解析度';

  @override
  String get displayAutoResetOnExitSubtitle => '使用完畢離開後自動還原手機原生解析度。';

  @override
  String get displayMaterialYouTitle => 'Material You 動態色彩';

  @override
  String get displayMaterialYouFollowingWallpaper => '依據桌布配色配置';

  @override
  String get displayMaterialYouUsingChosenAccent => '使用自訂強調色';

  @override
  String get displayUseWallpaperTitle => '擷取桌布顏色';

  @override
  String get displayUseWallpaperChecking => '正在檢查當前 Android 版本支援情況…';

  @override
  String get displayUseWallpaperSupported => '根據桌布自動產生 Material 3 表現力配色配置。';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      '需要 Android 12 或更高版本，請在下方選取強調色。';

  @override
  String get displayWallpaperAndroid12Required =>
      '桌布色彩擷取功能需要 Android 12 或更高版本。';

  @override
  String get displayAccent => '強調色';

  @override
  String get displayAccentColorSemantics => '強調色選擇';

  @override
  String get displayPalette => '調色盤風格';

  @override
  String get displayPaletteVibrant => '鮮豔 (Bold)';

  @override
  String get displayPaletteFidelity => '精準 (Exact)';

  @override
  String get displayPaletteExpressive => '表現力 (Expressive)';

  @override
  String get displayPaletteTonalSpot => '色調焦點 (Tonal)';

  @override
  String get displayPaletteNeutral => '中性 (Neutral)';

  @override
  String get displayPaletteContent => '內容優先 (Content)';

  @override
  String get displayPaletteDescription =>
      '鮮豔風格色彩更加飽滿；精準風格貼近原色；表現力風格由 Material 3 重新調配色彩，呈現更多層次感。';

  @override
  String get displayContrast => '對比度';

  @override
  String get displayContrastBoost => '增強對比度';

  @override
  String get displayContrastBoosted => '增強';

  @override
  String get displayContrastStandard => '標準';

  @override
  String get displayContrastDescription =>
      '增強文字與介面底色對比度 — 適合搭配極亮桌布或在較遠的大螢幕顯示器上檢視。';

  @override
  String get displayLanguage => '語言';

  @override
  String displayLanguageSystemDefault(String language) {
    return '跟隨系統 ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => '跟隨系統';

  @override
  String get accessTitle => '存取權限與授權';

  @override
  String get accessSectionPrivileged => '特權存取';

  @override
  String get accessSectionSpecial => '特殊權限';

  @override
  String get accessSectionBackground => '背景執行';

  @override
  String get accessForceLandscapeHint => '強制橫向功能需要這兩項權限。';

  @override
  String get accessPermDisplayOverApps => '顯示在其他應用程式上層';

  @override
  String get accessPermModifySettings => '修改系統設定';

  @override
  String get accessPermBatteryOptimization => '略過電池最佳化';

  @override
  String get accessPermNotifications => '通知 (自動套用監控服務)';

  @override
  String get accessPermanentTitle => '永久特權已生效';

  @override
  String get accessPermanentSubtitle => '無需 Shizuku、ADB 或 Wi-Fi 即可直接執行。';

  @override
  String get accessShizukuActiveTitle => 'Shizuku 特權存取已啟用';

  @override
  String get accessShizukuActiveSubtitle => '建議一次性授予永久特權，之後無需常駐執行 Shizuku。';

  @override
  String get accessRootActiveTitle => 'Root (su) 權限可用';

  @override
  String get accessRootActiveSubtitle => '將透過 Root 權限執行顯示設定變更。';

  @override
  String get accessShizukuRequiredTitle => '偵測到 Shizuku — 需要授權';

  @override
  String get accessShizukuRequiredSubtitle => '授權後即可一鍵取得永久特權。';

  @override
  String get accessNoAccessTitle => '未取得特權存取';

  @override
  String get accessNoAccessSubtitle => '透過無線偵錯啟動 Shizuku 或使用 Root 權限以啟用顯示調整。';

  @override
  String get accessAuthorizeShizuku => '透過 Shizuku 授權';

  @override
  String get accessShizukuRequested => '已請求 Shizuku 權限。';

  @override
  String get accessGrantPermanent => '授予永久特權 (後續無需 Shizuku)';

  @override
  String get accessPermanentGranted => '已成功授予永久顯示設定權限！';

  @override
  String get accessPermanentFailed => '授權失敗。請確認 Shizuku 正在執行且已完成授權。';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      '寫入安全系統設定 (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku 服務';

  @override
  String get accessPrivilegeRoot => 'Root 特權';

  @override
  String get accessPrivilegeOverlay => '顯示在其他應用程式上層';

  @override
  String get accessPrivilegeModifySystemSettings => '修改系統設定';

  @override
  String get accessPrivilegeNotifications => '通知權限';

  @override
  String get accessPrivilegeBatteryOptimization => '電池最佳化白名單';

  @override
  String get accessStatusGranted => '已授權';

  @override
  String get accessStatusMissing => '未授予';

  @override
  String get accessStatusNotRunning => '未執行';

  @override
  String get accessStatusRequired => '必要';

  @override
  String get accessAdbInstruction => '若無法使用 Shizuku，可在電腦上執行 ADB 指令完成授權。';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => '略過';

  @override
  String get onboardingBack => '返回';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingGetStarted => '立即開始';

  @override
  String get onboardingWelcomeTitle => '歡迎使用 MoniTune';

  @override
  String get onboardingWelcomeBody =>
      '為各式外接螢幕自由調校 Android 顯示效果。隨心設定理想解析度與縮放比例，維持桌面圖示整齊，強制全螢幕橫向顯示 — 盡在這款輕巧工具中。';

  @override
  String get onboardingWelcomeBullet1 => '解析度與 UI 縮放預設檔';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI / HyperOS 桌面保護模式';

  @override
  String get onboardingWelcomeBullet3 => '與桌布相互襯托的動態色彩';

  @override
  String get onboardingProblemTitle => 'Android 系統的先天限制';

  @override
  String get onboardingProblemBody =>
      '當手機鏡像輸出至螢幕時，Android 會自動決定解析度、密度與旋轉方向，一般應用程式無法自行調整。';

  @override
  String get onboardingProblemBullet1 =>
      '在小米 MIUI/HyperOS 上變更螢幕密度可能導致桌面圖示散落至其他頁面。';

  @override
  String get onboardingProblemBullet2 => '系統沒有內建消除黑邊或切換寬螢幕比例的選項。';

  @override
  String get onboardingWhyTitle => '為什麼需要 Shizuku 或 Root？';

  @override
  String get onboardingWhyBody =>
      'MoniTune 所需的操作依賴 WRITE_SECURE_SETTINGS 權限，Android 系統僅向特權應用程式開放該權限。';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku 透過無線偵錯以您授予的特權執行 Shell 指令 — 完全無需 Root。';

  @override
  String get onboardingWhyBullet2 =>
      '若裝置已經取得 Root 權限，MoniTune 也可以直接透過 Root 執行。';

  @override
  String get onboardingWhyBullet3 => '全程透明安全：MoniTune 僅使用此特權調整螢幕尺寸、密度與旋轉方向。';

  @override
  String get onboardingPathsTitle => '選擇設定方式';

  @override
  String get onboardingPathsBody => '無論哪種方式均可解鎖完整功能。';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (無需 Root)';

  @override
  String get onboardingPathsShizukuSubtitle => '推薦大多數機型使用。僅需透過無線偵錯進行一次簡單設定。';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle => '若您的裝置已經 Root，MoniTune 會自動完成辨識。';

  @override
  String get onboardingShizukuStepsTitle => '設定 Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      '安裝 Shizuku 並啟動一次，MoniTune 會引導您完成後續步驟。';

  @override
  String get onboardingShizukuStep1 => '從官方網站或 GitHub Releases 下載並安裝 Shizuku。';

  @override
  String get onboardingShizukuStep2 =>
      '開啟 Shizuku，透過無線偵錯 (Android 11+) 或 ADB 啟動服務。';

  @override
  String get onboardingShizukuStep3 => '返回 MoniTune 並點選「透過 Shizuku 授權」。';

  @override
  String get onboardingShizukuGuideButton => '開啟 Shizuku 設定指引';

  @override
  String get onboardingOneTimeTitle => '一次性設定';

  @override
  String get onboardingOneTimeBody =>
      '在 Shizuku (或 Root) 可用時，MoniTune 可以為自身授予永久的 WRITE_SECURE_SETTINGS 權限。';

  @override
  String get onboardingOneTimeBullet1 =>
      '僅需授權一次 — 之後無需 Shizuku、ADB 或 Wi-Fi 即可正常運作。';

  @override
  String get onboardingOneTimeBullet2 => '手機重新開機後權限依然保持有效。';

  @override
  String get onboardingOneTimeBullet3 => 'Shizuku 僅在授權那一瞬間需要處於執行狀態。';

  @override
  String get onboardingSafetyTitle => '多重安全防護';

  @override
  String get onboardingSafetyBody => '變更螢幕尺寸可能導致畫面暫時難以辨識，MoniTune 提供全方位安全防護。';

  @override
  String get onboardingSafetyBullet1 => '測試模式在 15 秒後自動還原，除非您主動點選「保留設定」。';

  @override
  String get onboardingSafetyBullet2 => '按下電源鍵關閉螢幕即可瞬間恢復手機預設解析度。';

  @override
  String get onboardingSafetyBullet3 =>
      '桌面保護模式略過密度修改，確保 MIUI/HyperOS 圖示排列整齊不變。';

  @override
  String get onboardingReadyTitle => '準備就緒';

  @override
  String get onboardingReadyBody =>
      '接下來請完成特權存取設定與兩項特殊權限授權。之後即可自由選擇解析度與縮放，並在 15 秒安全倒數防護下測試顯示效果。';

  @override
  String get onboardingReadyBullet1 => '自動套用：連接螢幕瞬間自動套用設定，拔除傳輸線時自動還原。';

  @override
  String get onboardingReadyBullet2 =>
      '強制橫向：覆蓋所有應用程式方向鎖定 — 包含 HyperOS 桌面 (Android 12+)。';

  @override
  String get onboardingReadyBullet3 =>
      '在 Android 12+ 上，MoniTune 可自動擷取桌布色調 (Material You)。';

  @override
  String get onboardingReadyButton => '立即設定權限';

  @override
  String infoVersion(String version) {
    return '版本 $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return '版本 $version · build $buildNumber';
  }

  @override
  String get infoChecking => '正在檢查…';

  @override
  String get infoCheckingForUpdates => '正在檢查更新…';

  @override
  String get infoCheckForUpdates => '檢查更新';

  @override
  String get infoDistributedVia => '透過 GitHub Releases 發布';

  @override
  String get infoMitLicense => '採用 MIT 開源授權 · 開放原始碼';

  @override
  String get infoPrivacyNotice => '除非您主動檢查更新，否則絕不向外傳送任何資料';

  @override
  String get infoOpenReleasePage => '開啟發布頁面';

  @override
  String get infoOpenReleases => '前往 GitHub Releases';

  @override
  String get infoNoBrowser => '未偵測到可用的網頁瀏覽器。';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version 已發布。';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return '發現新版本 $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return '您目前使用的是最新版本 ($version)。';
  }

  @override
  String get infoUpdateUpToDateShort => '已是最新版本';

  @override
  String get infoUpdateFailed => '檢查更新失敗';

  @override
  String get infoRateLimit => 'GitHub 目前對當前網路限制了存取速率，請幾分鐘後再試。';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub 回傳錯誤狀態碼 $statusCode。';
  }

  @override
  String get infoUnexpectedResponse => '收到來自 GitHub 的非預期回應。';

  @override
  String get infoNoRelease => 'GitHub 未回傳任何發布資訊。';

  @override
  String get infoTimeout => '連線至 GitHub 逾時。';

  @override
  String get infoNoNetwork => '無網路連線。';

  @override
  String get infoGenericError => '無法檢查更新。';

  @override
  String get safetyEmergencyRevertHint => '關閉螢幕 (電源鍵) 可立即取消並還原';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return '若未確認，將在 $seconds 秒後自動還原';
  }
}
