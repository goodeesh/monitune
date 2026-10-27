// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => '취소';

  @override
  String get commonDone => '완료';

  @override
  String get commonSave => '저장';

  @override
  String get commonClose => '닫기';

  @override
  String get commonRevert => '되돌리기';

  @override
  String get commonReset => '초기화';

  @override
  String get commonLearnMore => '자세히 알아보기';

  @override
  String get commonBack => '뒤로';

  @override
  String get commonContinue => '계속';

  @override
  String get commonApply => '적용';

  @override
  String get commonGrant => '허용';

  @override
  String get commonOk => '확인';

  @override
  String get commonFailed => '실패';

  @override
  String get commonEnabled => '사용 중';

  @override
  String get commonDisabled => '사용 안 함';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · 업데이트 확인';
  }

  @override
  String get homeHeroTitle => '모든 모니터에 꼭 맞는 최적의 화면 설정';

  @override
  String get homeStatusPermanentAccessActive => '영구 접근 권한 활성';

  @override
  String get homeStatusPrivilegedAccessReady => '특권 접근 권한 준비 완료';

  @override
  String get homeStatusSetupRequired => '설정 필요';

  @override
  String get homeApplyTestProfile => '테스트 프로필 적용';

  @override
  String get homeApplyFailed => '적용에 실패했습니다. 특권 접근 권한을 확인하세요.';

  @override
  String get homeResetDisplayToNative => '화면을 휴대폰 기본값으로 초기화';

  @override
  String get homeSectionQuickSettings => '빠른 설정';

  @override
  String get homeSectionConfigure => '구성';

  @override
  String get homeNavDisplayTitle => '디스플레이';

  @override
  String get homeNavDisplaySubtitle => '해상도, 배율, 화면 스타일 및 런처 안전 모드';

  @override
  String get homeNavAccessTitle => '접근 권한 및 권한 설정';

  @override
  String get homeNavAccessSubtitle => 'Shizuku, 영구 접근 권한 및 특수 권한';

  @override
  String get homeForceLandscapeTitle => '가로 모드 강제 실행 (미러링 잠금)';

  @override
  String get homeForceLandscapeSubtitle =>
      '세로로 고정된 앱(HyperOS 런처 포함)을 가로 모드로 강제 전환합니다. 테스트 프로필 적용을 누르면 활성화됩니다.';

  @override
  String get homeAutoApplyTitle => '모니터 연결 시 자동 적용';

  @override
  String get homeAutoApplyWatching => '백그라운드에서 외부 디스플레이 연결 감시 중.';

  @override
  String get homeAutoApplyDescription => '외부 디스플레이가 연결되면 설정한 프로필을 자동으로 적용합니다.';

  @override
  String get homeAutoApplyBlackoutTitle => '휴대폰 화면 어둡게 하기';

  @override
  String get homeAutoApplyBlackoutSubtitle => '연결 시 화면 밝기를 최소로 낮춥니다';

  @override
  String get homePermissionsRequiredDialogTitle => '권한 필요';

  @override
  String get homePermissionsRequiredDialogMessage =>
      '가로 모드 강제 실행을 활성화하려면 두 가지 특수 권한을 모두 허용해야 합니다:';

  @override
  String get homePermissionDisplayOverApps => '• 다른 앱 위에 표시';

  @override
  String get homePermissionModifySettings => '• 시스템 설정 수정';

  @override
  String get homeGrantOverlay => '오버레이 허용';

  @override
  String get homeGrantSettings => '설정 수정 허용';

  @override
  String get homeVersionCheckForUpdates => '업데이트 확인 · MIT 라이선스';

  @override
  String homeVersionUpdateAvailable(String version) {
    return '$version 업데이트 가능';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return '테스트 프로필 적용 중 — $seconds초 후 자동 복원';
  }

  @override
  String get homeKeepSettings => '설정 유지';

  @override
  String get homeRevertNow => '지금 되돌리기';

  @override
  String get homeStatusConnected => '외부 디스플레이 연결됨';

  @override
  String get homeStatusNotDetected => '외부 디스플레이가 감지되지 않음';

  @override
  String get homeStatusDisconnected => '연결 해제됨';

  @override
  String get homeWatcherActive => '디스플레이 감시 서비스 실행 중';

  @override
  String get homeWatcherStopped => '디스플레이 감시 서비스 중지됨';

  @override
  String get homeAutoApplyProfileOnConnection => '연결 시 프로필 자동 적용';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => '테스트 프로필 (15초)';

  @override
  String homeRevertCountdown(int seconds) {
    return '확인하지 않으면 $seconds초 후 자동으로 복원됩니다';
  }

  @override
  String get homeScreenOffHint => '화면을 끄면(전원 버튼) 즉시 취소되고 원래 해상도로 복원됩니다';

  @override
  String get homeOrientationLockActiveSummary =>
      '가로 모드 잠금 활성. 켜져 있는 동안 홈 화면과 최근 앱 목록이 가로 방향으로 유지됩니다.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      '가로 모드 강제 실행을 위해 MoniTune에 \"다른 앱 위에 표시\" 및 \"시스템 설정 수정\" 권한이 필요합니다. 허용 후 다시 시도하세요.';

  @override
  String get homeOrientationLockFailedSummary => '가로 모드 잠금을 적용하지 못했습니다.';

  @override
  String get displayTitle => '디스플레이';

  @override
  String get displaySectionTargetResolution => '목표 해상도';

  @override
  String get displaySectionDesktopUiScaling => '데스크톱 UI 배율';

  @override
  String get displaySectionBehaviour => '동작 설정';

  @override
  String get displaySectionAppearance => '화면 스타일';

  @override
  String get displaySectionLanguage => '언어';

  @override
  String get displaySectionPresets => '디스플레이 프리셋';

  @override
  String get displaySectionCustomResolution => '사용자 지정 해상도';

  @override
  String get displaySectionUiScaling => 'UI 배율';

  @override
  String get displaySectionLauncherOrientation => '런처 및 방향';

  @override
  String get displayDiagResolution => '해상도';

  @override
  String get displayDiagDensity => '화면 밀도';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => '회전';

  @override
  String get displayDiagExternalDisplay => '외부 디스플레이';

  @override
  String get displayDiagNoneConnected => '연결되지 않음';

  @override
  String get displayDiagCustomProfile => '사용자 지정 프로필';

  @override
  String get displayDiagActive => '적용됨';

  @override
  String get displayDiagNotApplied => '적용 안 됨';

  @override
  String get displayRotationLandscape90 => '가로 (90°)';

  @override
  String get displayRotationPortrait180 => '세로 반전 (180°)';

  @override
  String get displayRotationLandscape270 => '가로 반전 (270°)';

  @override
  String get displayRotationPortrait0 => '표준 세로 (0°)';

  @override
  String get displayPreset1080p => '1080p 풀HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K 울트라HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => '울트라와이드 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => '울트라와이드 (1080p)';

  @override
  String get displayPresetUltrawide1440p => '울트라와이드 (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => '휴대폰 기본 디스플레이';

  @override
  String get displayPresetNativeShort => '기본';

  @override
  String get displayPresetCustom => '사용자 지정 해상도…';

  @override
  String get displayPresetCustomShort => '사용자 지정';

  @override
  String get displayWidthPx => '너비 (px)';

  @override
  String get displayHeightPx => '높이 (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return '대상 렌더링 캔버스: $width × $height 픽셀';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% 배율 비율';
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
      '100%는 모바일 위젯을 과도하게 확대하지 않는 순수 PC 데스크톱 밀도를 제공합니다.';

  @override
  String get displayKeepUiDensityTitle => 'Android UI 밀도 유지 (런처 보호)';

  @override
  String get displayKeepUiDensitySubtitle =>
      '해상도만 적용하고 Android 화면 밀도는 유지하여 MIUI/HyperOS 홈 화면 아이콘 배치가 흩어지지 않도록 방지합니다.';

  @override
  String get displayLauncherSafeMode => '런처 안전 모드';

  @override
  String get displayLauncherSafeModeDesc =>
      'MIUI/HyperOS 런처의 아이콘 격자 배치를 원래대로 유지합니다';

  @override
  String get displayForceLandscape => '가로 모드 강제 실행';

  @override
  String get displayForceLandscapeDesc => '런처가 세로 화면으로 돌아가는 현상을 방지합니다';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI 런처 감지됨';

  @override
  String get displayMiuiDetectedMessage =>
      'Android 화면 밀도를 변경하면 홈 화면 아이콘이 재배치되어 다른 페이지로 흩어질 수 있습니다. 위의 \"Android UI 밀도 유지\"를 켜면 이를 방지할 수 있으며, 데스크톱 해상도와 미러링에는 영향을 주지 않습니다.';

  @override
  String get displayMiuiDetectedTip =>
      '팁: 설정 → 홈 화면 → \"홈 화면 레이아웃 잠금\"도 함께 활성화하는 것을 권장합니다.';

  @override
  String get displayForceLandscapeTitle => '가로 모드 강제 실행';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      '활성화됨 — 홈에서 테스트 프로필 적용을 누르면 적용됩니다.';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      '홈 화면에서 켜거나 끌 수 있습니다. 두 가지 화면 방향 권한이 필요합니다.';

  @override
  String get displayAutoResetOnExitTitle => '종료 시 해상도 자동 초기화';

  @override
  String get displayAutoResetOnExitSubtitle => '사용이 끝나면 휴대폰의 기본 해상도로 자동 복원합니다.';

  @override
  String get displayMaterialYouTitle => 'Material You 색상';

  @override
  String get displayMaterialYouFollowingWallpaper => '배경화면 색상 팔레트 적용 중';

  @override
  String get displayMaterialYouUsingChosenAccent => '선택한 강조 색상 적용 중';

  @override
  String get displayUseWallpaperTitle => '배경화면 색상 사용';

  @override
  String get displayUseWallpaperChecking => '현재 Android 버전 지원 여부 확인 중…';

  @override
  String get displayUseWallpaperSupported =>
      '배경화면에서 추출한 Material 3 감성 팔레트를 적용합니다.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Android 12 이상이 필요합니다. 아래에서 강조 색상을 선택하세요.';

  @override
  String get displayWallpaperAndroid12Required =>
      '배경화면 색상 추출 기능은 Android 12 이상에서 지원됩니다.';

  @override
  String get displayAccent => '강조 색상';

  @override
  String get displayAccentColorSemantics => '강조 색상 선택';

  @override
  String get displayPalette => '팔레트 스타일';

  @override
  String get displayPaletteVibrant => '생생함 (Bold)';

  @override
  String get displayPaletteFidelity => '원색 일치 (Exact)';

  @override
  String get displayPaletteExpressive => '다채로움 (Expressive)';

  @override
  String get displayPaletteTonalSpot => '톤 중심 (Tonal)';

  @override
  String get displayPaletteNeutral => '자연스러움 (Neutral)';

  @override
  String get displayPaletteContent => '콘텐츠 중심 (Content)';

  @override
  String get displayPaletteDescription =>
      '생생함은 강조 색상을 돋보이게 하고, 원색 일치는 선택한 색을 정밀하게 표현하며, 다채로움은 Material 3가 색조를 조화롭게 재구성합니다.';

  @override
  String get displayContrast => '대비';

  @override
  String get displayContrastBoost => '대비 강화';

  @override
  String get displayContrastBoosted => '강화됨';

  @override
  String get displayContrastStandard => '표준';

  @override
  String get displayContrastDescription =>
      '강화 모드는 텍스트와 배경 요소 간의 대비를 높여 밝은 배경화면이나 원거리 대형 모니터에서의 가독성을 개선합니다.';

  @override
  String get displayLanguage => '언어';

  @override
  String displayLanguageSystemDefault(String language) {
    return '시스템 기본값 ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => '시스템 기본값';

  @override
  String get accessTitle => '접근 권한 및 권한 설정';

  @override
  String get accessSectionPrivileged => '특권 접근 권한';

  @override
  String get accessSectionSpecial => '특수 권한';

  @override
  String get accessSectionBackground => '백그라운드';

  @override
  String get accessForceLandscapeHint => '가로 모드 강제 실행에는 두 권한이 모두 필요합니다.';

  @override
  String get accessPermDisplayOverApps => '다른 앱 위에 표시';

  @override
  String get accessPermModifySettings => '시스템 설정 수정';

  @override
  String get accessPermBatteryOptimization => '배터리 최적화 예외';

  @override
  String get accessPermNotifications => '알림 (자동 적용 감시 서비스)';

  @override
  String get accessPermanentTitle => '영구 접근 권한 활성';

  @override
  String get accessPermanentSubtitle => 'Shizuku, ADB, Wi-Fi 없이도 항상 작동합니다.';

  @override
  String get accessShizukuActiveTitle => 'Shizuku 특권 접근 권한 활성';

  @override
  String get accessShizukuActiveSubtitle =>
      '한 번만 영구 권한을 부여하면 이후 Shizuku 없이 실행할 수 있습니다.';

  @override
  String get accessRootActiveTitle => '루트 (su) 접근 권한 사용 가능';

  @override
  String get accessRootActiveSubtitle => '루트 권한을 통해 화면 설정을 변경합니다.';

  @override
  String get accessShizukuRequiredTitle => 'Shizuku 감지됨 — 권한 필요';

  @override
  String get accessShizukuRequiredSubtitle => '한 번 허용한 후 영구 접근 권한을 부여하세요.';

  @override
  String get accessNoAccessTitle => '특권 접근 권한 없음';

  @override
  String get accessNoAccessSubtitle =>
      '무선 디버깅을 통해 Shizuku를 실행하거나 루트 권한을 사용하여 화면 조정을 활성화하세요.';

  @override
  String get accessAuthorizeShizuku => 'Shizuku로 권한 승인';

  @override
  String get accessShizukuRequested => 'Shizuku 권한을 요청했습니다.';

  @override
  String get accessGrantPermanent => '영구 접근 권한 부여 (이후 Shizuku 불필요)';

  @override
  String get accessPermanentGranted => '영구 디스플레이 접근 권한이 부여되었습니다!';

  @override
  String get accessPermanentFailed => '권한 부여 실패. Shizuku가 실행 중이며 승인되었습니까?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      '보안 시스템 설정 쓰기 (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku 서비스';

  @override
  String get accessPrivilegeRoot => '루트 권한';

  @override
  String get accessPrivilegeOverlay => '다른 앱 위에 표시';

  @override
  String get accessPrivilegeModifySystemSettings => '시스템 설정 수정';

  @override
  String get accessPrivilegeNotifications => '알림';

  @override
  String get accessPrivilegeBatteryOptimization => '배터리 최적화';

  @override
  String get accessStatusGranted => '허용됨';

  @override
  String get accessStatusMissing => '누락됨';

  @override
  String get accessStatusNotRunning => '실행 중 아님';

  @override
  String get accessStatusRequired => '필수';

  @override
  String get accessAdbInstruction =>
      'Shizuku를 사용할 수 없는 경우 컴퓨터에서 ADB 명령어를 실행하세요.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => '건너뛰기';

  @override
  String get onboardingBack => '뒤로';

  @override
  String get onboardingNext => '다음';

  @override
  String get onboardingGetStarted => '시작하기';

  @override
  String get onboardingWelcomeTitle => 'MoniTune에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeBody =>
      '외부 모니터에 맞춰 Android 화면을 완벽하게 튜닝하세요. 원하는 해상도와 배율을 설정하고, 홈 화면을 깔끔하게 유지하며, 와이드 가로 모드로 화면을 고정할 수 있습니다.';

  @override
  String get onboardingWelcomeBullet1 => '해상도 및 UI 배율 프리셋 제공';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI / HyperOS 런처 보호 모드';

  @override
  String get onboardingWelcomeBullet3 => '배경화면과 어우러지는 다이내믹 컬러';

  @override
  String get onboardingProblemTitle => 'Android의 태생적 제한';

  @override
  String get onboardingProblemBody =>
      '휴대폰 화면을 모니터에 미러링할 때 Android가 해상도, 밀도, 회전을 강제로 결정하며 일반 앱은 이를 수정할 수 없습니다.';

  @override
  String get onboardingProblemBullet1 =>
      'Xiaomi MIUI/HyperOS에서 밀도를 변경하면 홈 화면 아이콘이 다른 페이지로 흩어질 수 있습니다.';

  @override
  String get onboardingProblemBullet2 =>
      '화면의 검은 여백을 없애거나 와이드 비율을 선택하는 내장 기능이 없습니다.';

  @override
  String get onboardingWhyTitle => 'Shizuku 또는 루트 권한이 필요한 이유';

  @override
  String get onboardingWhyBody =>
      'MoniTune이 수행하는 설정 변경에는 특권 앱에만 허용되는 WRITE_SECURE_SETTINGS 권한이 필요합니다.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku는 무선 디버깅을 통해 부여된 권한으로 명령어를 실행합니다 — 루팅이 전혀 필요 없습니다.';

  @override
  String get onboardingWhyBullet2 => '이미 루팅된 기기라면 MoniTune이 루트 권한을 직접 활용합니다.';

  @override
  String get onboardingWhyBullet3 =>
      '투명하고 안전함: MoniTune은 화면 크기, 밀도, 회전 조정에만 이 권한을 사용합니다.';

  @override
  String get onboardingPathsTitle => '원하는 설정 방식 선택';

  @override
  String get onboardingPathsBody => '어떤 방식을 선택하더라도 동일한 기능을 모두 이용할 수 있습니다.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (루팅 불필요)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      '대부분의 스마트폰에 권장됩니다. 무선 디버깅을 통한 1회성 설정이 필요합니다.';

  @override
  String get onboardingPathsRootTitle => '루트 (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      '기기가 이미 루팅되어 있다면 MoniTune이 자동으로 감지합니다.';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku 설정 방법';

  @override
  String get onboardingShizukuStepsBody =>
      'Shizuku를 설치하고 한 번 실행하세요. 이후 절차는 MoniTune이 안내합니다.';

  @override
  String get onboardingShizukuStep1 =>
      '공식 웹사이트 또는 GitHub Releases에서 Shizuku를 설치합니다.';

  @override
  String get onboardingShizukuStep2 =>
      'Shizuku를 열고 무선 디버깅(Android 11+) 또는 ADB를 통해 서비스를 시작합니다.';

  @override
  String get onboardingShizukuStep3 =>
      'MoniTune으로 돌아와 \"Shizuku로 권한 승인\"을 누릅니다.';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku 설정 가이드 열기';

  @override
  String get onboardingOneTimeTitle => '1회성 설정';

  @override
  String get onboardingOneTimeBody =>
      'Shizuku(또는 루트)가 활성화되어 있는 동안 MoniTune은 영구적인 WRITE_SECURE_SETTINGS 권한을 자체 부여할 수 있습니다.';

  @override
  String get onboardingOneTimeBullet1 =>
      '한 번만 권한을 부여하면 이후 Shizuku, ADB, Wi-Fi 없이도 항상 동작합니다.';

  @override
  String get onboardingOneTimeBullet2 => '휴대폰을 재부팅해도 권한이 유지됩니다.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku는 권한을 부여하는 바로 그 순간에만 실행 중이면 됩니다.';

  @override
  String get onboardingSafetyTitle => '철저한 안전장치';

  @override
  String get onboardingSafetyBody =>
      '화면 크기 변경 시 일시적으로 화면을 읽기 어려워질 수 있으므로 MoniTune은 자동 안전장치를 갖추고 있습니다.';

  @override
  String get onboardingSafetyBullet1 =>
      '테스트 모드는 \"설정 유지\"를 누르지 않으면 15초 후 자동으로 이전 설정으로 복원됩니다.';

  @override
  String get onboardingSafetyBullet2 => '전원 버튼으로 화면을 끄면 즉시 휴대폰 기본 해상도로 복구됩니다.';

  @override
  String get onboardingSafetyBullet3 =>
      '런처 안전 모드는 밀도 변경을 건너뛰어 MIUI/HyperOS 아이콘 배열을 유지합니다.';

  @override
  String get onboardingReadyTitle => '모든 준비 완료';

  @override
  String get onboardingReadyBody =>
      '다음 단계에서 특권 접근 권한과 두 가지 특수 권한을 설정하세요. 그 후 원하는 해상도와 배율을 선택하고 15초 안전 타이머로 안심하고 테스트할 수 있습니다.';

  @override
  String get onboardingReadyBullet1 =>
      '자동 적용: 모니터가 연결되는 즉시 프로필을 적용하고 연결 해제 시 복원합니다.';

  @override
  String get onboardingReadyBullet2 =>
      '가로 모드 강제 실행: HyperOS 런처(Android 12+)를 포함한 모든 앱의 방향 고정을 무시합니다.';

  @override
  String get onboardingReadyBullet3 =>
      'Android 12+에서는 배경화면 색상을 앱 테마에 반영할 수 있습니다 (Material You).';

  @override
  String get onboardingReadyButton => '지금 권한 설정하기';

  @override
  String infoVersion(String version) {
    return '버전 $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return '버전 $version · 빌드 $buildNumber';
  }

  @override
  String get infoChecking => '확인 중…';

  @override
  String get infoCheckingForUpdates => '업데이트 확인 중…';

  @override
  String get infoCheckForUpdates => '업데이트 확인';

  @override
  String get infoDistributedVia => 'GitHub Releases를 통해 배포됨';

  @override
  String get infoMitLicense => 'MIT 라이선스 · 오픈 소스 공개';

  @override
  String get infoPrivacyNotice => '업데이트를 확인할 때를 제외하고는 어떤 데이터도 외부로 전송되지 않습니다';

  @override
  String get infoOpenReleasePage => '릴리스 페이지 열기';

  @override
  String get infoOpenReleases => 'GitHub Releases 열기';

  @override
  String get infoNoBrowser => '사용 가능한 웹 브라우저가 없습니다.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version 버전을 사용할 수 있습니다.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return '새 버전 $version 출시';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return '현재 최신 버전($version)을 사용하고 있습니다.';
  }

  @override
  String get infoUpdateUpToDateShort => '최신 상태입니다';

  @override
  String get infoUpdateFailed => '업데이트 확인 실패';

  @override
  String get infoRateLimit => '현재 네트워크의 GitHub 요청 한도가 초과되었습니다. 잠시 후 다시 시도하세요.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub에서 오류 상태 코드 $statusCode을(를) 반환했습니다.';
  }

  @override
  String get infoUnexpectedResponse => 'GitHub로부터 예상치 못한 응답을 수신했습니다.';

  @override
  String get infoNoRelease => 'GitHub에 등록된 릴리스 정보가 없습니다.';

  @override
  String get infoTimeout => 'GitHub 연결 시간이 초과되었습니다.';

  @override
  String get infoNoNetwork => '네트워크 연결이 없습니다.';

  @override
  String get infoGenericError => '업데이트를 확인할 수 없습니다.';

  @override
  String get safetyEmergencyRevertHint => '화면을 끄면(전원 버튼) 즉시 취소되고 원래 해상도로 복원됩니다';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return '확인하지 않으면 $seconds초 후 자동으로 복원됩니다';
  }
}
