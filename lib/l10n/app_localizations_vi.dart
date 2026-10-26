// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Hủy';

  @override
  String get commonDone => 'Xong';

  @override
  String get commonSave => 'Lưu';

  @override
  String get commonClose => 'Đóng';

  @override
  String get commonRevert => 'Khôi phục';

  @override
  String get commonReset => 'Đặt lại';

  @override
  String get commonLearnMore => 'Tìm hiểu thêm';

  @override
  String get commonBack => 'Quay lại';

  @override
  String get commonContinue => 'Tiếp tục';

  @override
  String get commonApply => 'Áp dụng';

  @override
  String get commonGrant => 'Cấp quyền';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Thất bại';

  @override
  String get commonEnabled => 'Đã bật';

  @override
  String get commonDisabled => 'Đã tắt';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · kiểm tra bản cập nhật';
  }

  @override
  String get homeHeroTitle => 'Tinh chỉnh hiển thị cho mọi màn hình';

  @override
  String get homeStatusPermanentAccessActive =>
      'Quyền truy cập vĩnh viễn đang hoạt động';

  @override
  String get homeStatusPrivilegedAccessReady =>
      'Quyền truy cập đặc quyền đã sẵn sàng';

  @override
  String get homeStatusSetupRequired => 'Cần thiết lập';

  @override
  String get homeApplyTestProfile => 'Áp dụng cấu hình thử nghiệm';

  @override
  String get homeApplyFailed =>
      'Áp dụng thất bại. Vui lòng kiểm tra quyền truy cập đặc quyền.';

  @override
  String get homeResetDisplayToNative =>
      'Đặt lại hiển thị về mặc định của điện thoại';

  @override
  String get homeSectionQuickSettings => 'Cài đặt nhanh';

  @override
  String get homeSectionConfigure => 'Cấu hình';

  @override
  String get homeNavDisplayTitle => 'Màn hình';

  @override
  String get homeNavDisplaySubtitle =>
      'Độ phân giải, tỷ lệ, giao diện và chế độ an toàn cho trình khởi chạy';

  @override
  String get homeNavAccessTitle => 'Truy cập & Quyền hạn';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, quyền truy cập vĩnh viễn và các quyền đặc biệt';

  @override
  String get homeForceLandscapeTitle => 'Bắt buộc xoay ngang (Khóa phản chiếu)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Buộc xoay ngang trên các ứng dụng cố định hướng dọc (bao gồm cả trình khởi chạy HyperOS). Có hiệu lực khi nhấn Áp dụng cấu hình thử nghiệm.';

  @override
  String get homeAutoApplyTitle => 'Tự động áp dụng khi kết nối màn hình';

  @override
  String get homeAutoApplyWatching => 'Đang theo dõi màn hình ngoài trong nền.';

  @override
  String get homeAutoApplyDescription =>
      'Tự động áp dụng cấu hình khi có màn hình ngoài kết nối.';

  @override
  String get homePermissionsRequiredDialogTitle => 'Yêu cầu cấp quyền';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Chỉ có thể bật tính năng Bắt buộc xoay ngang sau khi đã cấp cả hai quyền đặc biệt sau:';

  @override
  String get homePermissionDisplayOverApps =>
      '• Hiển thị trên các ứng dụng khác';

  @override
  String get homePermissionModifySettings => '• Thay đổi cài đặt hệ thống';

  @override
  String get homeGrantOverlay => 'Cấp quyền lớp phủ';

  @override
  String get homeGrantSettings => 'Cấp quyền cài đặt';

  @override
  String get homeVersionCheckForUpdates =>
      'Kiểm tra bản cập nhật · Giấy phép MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Đã có bản cập nhật $version';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Cấu hình thử nghiệm đang bật — sẽ tự khôi phục sau $seconds giây';
  }

  @override
  String get homeKeepSettings => 'Giữ cài đặt';

  @override
  String get homeRevertNow => 'Khôi phục ngay';

  @override
  String get homeStatusConnected => 'Đã kết nối màn hình ngoài';

  @override
  String get homeStatusNotDetected => 'Không phát hiện màn hình ngoài';

  @override
  String get homeStatusDisconnected => 'Đã ngắt kết nối';

  @override
  String get homeWatcherActive => 'Dịch vụ theo dõi màn hình đang bật';

  @override
  String get homeWatcherStopped => 'Dịch vụ theo dõi màn hình đã dừng';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Tự động áp dụng cấu hình khi kết nối';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Cấu hình thử nghiệm (15 giây)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Tự động khôi phục sau $seconds giây nếu không xác nhận';
  }

  @override
  String get homeScreenOffHint =>
      'Tắt màn hình (nút Nguồn) để hủy và khôi phục cài đặt ngay lập tức';

  @override
  String get homeOrientationLockActiveSummary =>
      'Khóa xoay ngang đang hoạt động. Màn hình chính và danh sách ứng dụng gần đây sẽ duy trì ở chế độ ngang khi tính năng này bật.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Tính năng Bắt buộc xoay ngang cần quyền \"Hiển thị trên các ứng dụng khác\" và \"Thay đổi cài đặt hệ thống\" cho MoniTune. Vui lòng cấp quyền rồi thử lại.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Không thể áp dụng khóa hướng màn hình ngang.';

  @override
  String get displayTitle => 'Màn hình';

  @override
  String get displaySectionTargetResolution => 'Độ phân giải mục tiêu';

  @override
  String get displaySectionDesktopUiScaling => 'Thu phóng giao diện máy tính';

  @override
  String get displaySectionBehaviour => 'Hành vi';

  @override
  String get displaySectionAppearance => 'Giao diện';

  @override
  String get displaySectionLanguage => 'Ngôn ngữ';

  @override
  String get displaySectionPresets => 'Cấu hình màn hình có sẵn';

  @override
  String get displaySectionCustomResolution => 'Độ phân giải tùy chỉnh';

  @override
  String get displaySectionUiScaling => 'Thu phóng giao diện';

  @override
  String get displaySectionLauncherOrientation =>
      'Trình khởi chạy & Hướng màn hình';

  @override
  String get displayDiagResolution => 'Độ phân giải';

  @override
  String get displayDiagDensity => 'Mật độ điểm ảnh';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Xoay màn hình';

  @override
  String get displayDiagExternalDisplay => 'Màn hình ngoài';

  @override
  String get displayDiagNoneConnected => 'Chưa kết nối';

  @override
  String get displayDiagCustomProfile => 'Cấu hình tùy chỉnh';

  @override
  String get displayDiagActive => 'Đang hoạt động';

  @override
  String get displayDiagNotApplied => 'Chưa áp dụng';

  @override
  String get displayRotationLandscape90 => 'Ngang (90°)';

  @override
  String get displayRotationPortrait180 => 'Dọc ngược (180°)';

  @override
  String get displayRotationLandscape270 => 'Ngang ngược (270°)';

  @override
  String get displayRotationPortrait0 => 'Dọc tiêu chuẩn (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'Màn hình siêu rộng 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'Siêu rộng (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'Siêu rộng (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'Màn hình gốc của điện thoại';

  @override
  String get displayPresetNativeShort => 'Gốc';

  @override
  String get displayPresetCustom => 'Độ phân giải tùy chỉnh…';

  @override
  String get displayPresetCustomShort => 'Tùy chỉnh';

  @override
  String get displayWidthPx => 'Chiều rộng (px)';

  @override
  String get displayHeightPx => 'Chiều cao (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Vùng dựng hình mục tiêu: $width × $height điểm ảnh';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Hệ số thu phóng $scale%';
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
      '100% mang lại mật độ máy tính chuẩn mà không làm phóng đại tiện ích di động.';

  @override
  String get displayKeepUiDensityTitle =>
      'Giữ nguyên mật độ giao diện Android (An toàn cho trình khởi chạy)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Áp dụng độ phân giải nhưng giữ nguyên mật độ hiển thị Android, giúp bố cục biểu tượng màn hình chính MIUI/HyperOS không bị xáo trộn.';

  @override
  String get displayLauncherSafeMode => 'Chế độ an toàn cho trình khởi chạy';

  @override
  String get displayLauncherSafeModeDesc =>
      'Giữ nguyên lưới biểu tượng của trình khởi chạy MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Bắt buộc xoay ngang';

  @override
  String get displayForceLandscapeDesc =>
      'Ngăn trình khởi chạy tự động xoay trở lại hướng dọc';

  @override
  String get displayMiuiDetectedTitle =>
      'Phát hiện trình khởi chạy HyperOS / MIUI';

  @override
  String get displayMiuiDetectedMessage =>
      'Thay đổi mật độ hiển thị Android có thể làm xáo trộn bố cục biểu tượng màn hình chính và đẩy ứng dụng sang các trang khác. Hãy bật \"Giữ nguyên mật độ giao diện Android\" ở trên để ngăn chặn điều này — độ phân giải máy tính và tính năng phản chiếu vẫn hoạt động hoàn hảo.';

  @override
  String get displayMiuiDetectedTip =>
      'Mẹo: bạn cũng nên bật Cài đặt → Màn hình chính → \"Khóa bố cục Màn hình chính\".';

  @override
  String get displayForceLandscapeTitle => 'Bắt buộc xoay ngang';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Đã bật — có hiệu lực khi bạn nhấn Áp dụng cấu hình thử nghiệm (Trang chủ).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Có thể bật/tắt từ màn hình Trang chủ. Yêu cầu cả hai quyền hướng màn hình.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Tự động đặt lại độ phân giải khi thoát';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Khôi phục điện thoại về độ phân giải ban đầu sau khi hoàn tất sử dụng.';

  @override
  String get displayMaterialYouTitle => 'Màu sắc Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Đang đồng bộ theo bảng màu hình nền';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Đang dùng màu nhấn đã chọn';

  @override
  String get displayUseWallpaperTitle => 'Sử dụng màu hình nền';

  @override
  String get displayUseWallpaperChecking =>
      'Đang kiểm tra khả năng hỗ trợ của phiên bản Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Áp dụng bảng màu biểu cảm Material 3 trích xuất từ hình nền của bạn.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Yêu cầu Android 12 trở lên. Bạn có thể chọn màu nhấn thủ công bên dưới.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Màu sắc theo hình nền yêu cầu Android 12 trở lên.';

  @override
  String get displayAccent => 'Màu nhấn';

  @override
  String get displayAccentColorSemantics => 'Lựa chọn màu nhấn';

  @override
  String get displayPalette => 'Phong cách bảng màu';

  @override
  String get displayPaletteVibrant => 'Sống động';

  @override
  String get displayPaletteFidelity => 'Trung thực';

  @override
  String get displayPaletteExpressive => 'Biểu cảm';

  @override
  String get displayPaletteTonalSpot => 'Điểm sắc thái';

  @override
  String get displayPaletteNeutral => 'Trung tính';

  @override
  String get displayPaletteContent => 'Nội dung';

  @override
  String get displayPaletteDescription =>
      'Sống động giữ màu nhấn luôn tươi sáng, Trung thực tái hiện chuẩn xác sắc độ, và Biểu cảm cho phép Material 3 phối màu hài hòa, ấn tượng.';

  @override
  String get displayContrast => 'Độ tương phản';

  @override
  String get displayContrastBoost => 'Tăng độ tương phản';

  @override
  String get displayContrastBoosted => 'Đã tăng';

  @override
  String get displayContrastStandard => 'Tiêu chuẩn';

  @override
  String get displayContrastDescription =>
      'Tăng độ tương phản giúp văn bản và các bề mặt giao diện nổi bật, dễ đọc hơn — đặc biệt hữu ích khi dùng hình nền sáng hoặc nhìn màn hình lớn từ xa.';

  @override
  String get displayLanguage => 'Ngôn ngữ';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Mặc định hệ thống ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Mặc định hệ thống';

  @override
  String get accessTitle => 'Truy cập & Quyền hạn';

  @override
  String get accessSectionPrivileged => 'Quyền truy cập đặc quyền';

  @override
  String get accessSectionSpecial => 'Quyền đặc biệt';

  @override
  String get accessSectionBackground => 'Chạy trong nền';

  @override
  String get accessForceLandscapeHint =>
      'Tính năng Bắt buộc xoay ngang cần cả hai quyền này.';

  @override
  String get accessPermDisplayOverApps => 'Hiển thị trên các ứng dụng khác';

  @override
  String get accessPermModifySettings => 'Thay đổi cài đặt hệ thống';

  @override
  String get accessPermBatteryOptimization => 'Miễn trừ tối ưu hóa pin';

  @override
  String get accessPermNotifications => 'Thông báo (dịch vụ tự động áp dụng)';

  @override
  String get accessPermanentTitle => 'Quyền truy cập vĩnh viễn đang hoạt động';

  @override
  String get accessPermanentSubtitle =>
      'Hoạt động mà không cần Shizuku, ADB hay Wi-Fi.';

  @override
  String get accessShizukuActiveTitle =>
      'Quyền truy cập đặc quyền Shizuku đang bật';

  @override
  String get accessShizukuActiveSubtitle =>
      'Cấp quyền vĩnh viễn một lần để sau này chạy độc lập mà không cần Shizuku.';

  @override
  String get accessRootActiveTitle => 'Có quyền truy cập Root (su)';

  @override
  String get accessRootActiveSubtitle =>
      'Các thay đổi cài đặt màn hình sẽ được thực hiện thông qua root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Đã phát hiện Shizuku — Cần cấp quyền';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Cấp phép một lần, sau đó kích hoạt quyền truy cập vĩnh viễn.';

  @override
  String get accessNoAccessTitle => 'Chưa có quyền truy cập đặc quyền';

  @override
  String get accessNoAccessSubtitle =>
      'Khởi động Shizuku qua gỡ lỗi không dây hoặc sử dụng root để bật quyền thay đổi.';

  @override
  String get accessAuthorizeShizuku => 'Ủy quyền qua Shizuku';

  @override
  String get accessShizukuRequested => 'Đã yêu cầu cấp quyền Shizuku.';

  @override
  String get accessGrantPermanent =>
      'Cấp quyền truy cập vĩnh viễn (sau đó không cần Shizuku)';

  @override
  String get accessPermanentGranted =>
      'Đã cấp quyền truy cập màn hình vĩnh viễn thành công!';

  @override
  String get accessPermanentFailed =>
      'Cấp quyền thất bại. Shizuku có đang chạy và đã được ủy quyền không?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Ghi cài đặt bảo mật (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Dịch vụ Shizuku';

  @override
  String get accessPrivilegeRoot => 'Đặc quyền Root';

  @override
  String get accessPrivilegeOverlay => 'Hiển thị trên các ứng dụng khác';

  @override
  String get accessPrivilegeModifySystemSettings => 'Thay đổi cài đặt hệ thống';

  @override
  String get accessPrivilegeNotifications => 'Thông báo';

  @override
  String get accessPrivilegeBatteryOptimization => 'Tối ưu hóa pin';

  @override
  String get accessStatusGranted => 'Đã cấp';

  @override
  String get accessStatusMissing => 'Chưa có';

  @override
  String get accessStatusNotRunning => 'Không chạy';

  @override
  String get accessStatusRequired => 'Bắt buộc';

  @override
  String get accessAdbInstruction =>
      'Chạy lệnh ADB từ máy tính nếu không có Shizuku.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Bỏ qua';

  @override
  String get onboardingBack => 'Quay lại';

  @override
  String get onboardingNext => 'Tiếp theo';

  @override
  String get onboardingGetStarted => 'Bắt đầu';

  @override
  String get onboardingWelcomeTitle => 'Chào mừng đến với MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Tối ưu hóa khả năng hiển thị của thiết bị Android trên mọi màn hình ngoài. Thiết lập độ phân giải và tỷ lệ mong muốn, giữ màn hình chính ngăn nắp và ép hiển thị xoay ngang toàn màn hình — gói gọn trong một ứng dụng nhỏ gọn.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Các cấu hình sẵn cho độ phân giải và tỷ lệ giao diện';

  @override
  String get onboardingWelcomeBullet2 =>
      'Chế độ an toàn cho trình khởi chạy MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 => 'Màu sắc đồng bộ hài hòa với hình nền';

  @override
  String get onboardingProblemTitle => 'Những rào cản của Android';

  @override
  String get onboardingProblemBody =>
      'Khi phản chiếu màn hình điện thoại sang màn hình ngoài, Android sẽ tự động áp đặt độ phân giải, mật độ và hướng xoay — các ứng dụng thông thường không thể can thiệp.';

  @override
  String get onboardingProblemBullet1 =>
      'Thay đổi mật độ hiển thị trên Xiaomi MIUI/HyperOS có thể khiến các biểu tượng màn hình chính bị văng sang trang khác.';

  @override
  String get onboardingProblemBullet2 =>
      'Hệ thống không có sẵn tính năng xóa viền đen hoặc tùy chọn tỷ lệ khung hình siêu rộng.';

  @override
  String get onboardingWhyTitle => 'Tại sao cần Shizuku hoặc Root?';

  @override
  String get onboardingWhyBody =>
      'Các tùy chỉnh mà MoniTune thực hiện yêu cầu quyền WRITE_SECURE_SETTINGS — quyền hạn mà Android chỉ dành riêng cho các ứng dụng đặc quyền.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku thực thi lệnh với các đặc quyền được cấp qua gỡ lỗi không dây — hoàn toàn không cần can thiệp root.';

  @override
  String get onboardingWhyBullet2 =>
      'Nếu thiết bị của bạn đã được root sẵn, MoniTune có thể trực tiếp sử dụng quyền root đó.';

  @override
  String get onboardingWhyBullet3 =>
      'Hoàn toàn minh bạch: MoniTune chỉ sử dụng quyền này duy nhất cho việc điều chỉnh kích thước hiển thị, mật độ và hướng xoay.';

  @override
  String get onboardingPathsTitle => 'Chọn phương thức thiết lập';

  @override
  String get onboardingPathsBody =>
      'Dù chọn phương thức nào, bạn đều trải nghiệm trọn vẹn mọi tính năng.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (Không cần Root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Khuyên dùng cho hầu hết điện thoại. Chỉ cần thiết lập một lần qua gỡ lỗi không dây.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Nếu điện thoại đã được root, MoniTune sẽ tự động nhận diện.';

  @override
  String get onboardingShizukuStepsTitle => 'Thiết lập Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Cài đặt Shizuku và khởi chạy ứng dụng một lần. MoniTune sẽ hướng dẫn các bước tiếp theo.';

  @override
  String get onboardingShizukuStep1 =>
      'Cài đặt Shizuku từ trang web chính thức hoặc GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Mở Shizuku và khởi chạy dịch vụ qua Gỡ lỗi không dây (Android 11+) hoặc ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Quay lại MoniTune và nhấn \"Ủy quyền qua Shizuku\".';

  @override
  String get onboardingShizukuGuideButton => 'Mở hướng dẫn thiết lập Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Thiết lập một lần duy nhất';

  @override
  String get onboardingOneTimeBody =>
      'Khi Shizuku (hoặc root) đang sẵn sàng, MoniTune có thể tự cấp quyền WRITE_SECURE_SETTINGS vĩnh viễn.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Chỉ cần cấp quyền một lần — sau đó MoniTune hoạt động mượt mà không cần Shizuku, không cần ADB hay Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'Quyền hạn vẫn được giữ nguyên ngay cả khi khởi động lại máy.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku chỉ cần chạy đúng vào thời điểm cấp quyền đó.';

  @override
  String get onboardingSafetyTitle => 'Cơ chế bảo vệ an toàn tích hợp';

  @override
  String get onboardingSafetyBody =>
      'Thay đổi kích thước hiển thị có thể khiến màn hình tạm thời khó nhìn, do đó MoniTune đã tích hợp các cơ chế bảo vệ tối đa.';

  @override
  String get onboardingSafetyBullet1 =>
      'Chế độ thử nghiệm sẽ tự động khôi phục sau 15 giây trừ khi bạn chọn \"Giữ cài đặt\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Tắt màn hình (nút Nguồn) sẽ lập tức đưa màn hình về độ phân giải mặc định ban đầu.';

  @override
  String get onboardingSafetyBullet3 =>
      'Chế độ an toàn bỏ qua thay đổi mật độ để giữ nguyên vị trí biểu tượng trên MIUI/HyperOS.';

  @override
  String get onboardingReadyTitle => 'Bạn đã sẵn sàng';

  @override
  String get onboardingReadyBody =>
      'Tiếp theo, hãy thiết lập quyền truy cập đặc quyền và cấp hai quyền đặc biệt. Sau đó chọn độ phân giải cùng tỷ lệ thu phóng, và trải nghiệm thử nghiệm an toàn với bộ đếm ngược 15 giây trước khi lưu.';

  @override
  String get onboardingReadyBullet1 =>
      'Tự động áp dụng: kích hoạt cấu hình ngay khi cắm màn hình và hoàn trả khi rút cáp.';

  @override
  String get onboardingReadyBullet2 =>
      'Bắt buộc xoay ngang ghi đè khóa xoay của mọi ứng dụng — bao gồm cả trình khởi chạy HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Trên Android 12+, MoniTune tự động lấy màu sắc từ hình nền của bạn (Material You).';

  @override
  String get onboardingReadyButton => 'Thiết lập quyền truy cập ngay';

  @override
  String infoVersion(String version) {
    return 'Phiên bản $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Phiên bản $version · bản dựng $buildNumber';
  }

  @override
  String get infoChecking => 'Đang kiểm tra…';

  @override
  String get infoCheckingForUpdates => 'Đang tìm bản cập nhật…';

  @override
  String get infoCheckForUpdates => 'Kiểm tra bản cập nhật';

  @override
  String get infoDistributedVia => 'Phân phối qua GitHub Releases';

  @override
  String get infoMitLicense => 'Giấy phép MIT · Mã nguồn mở công khai';

  @override
  String get infoPrivacyNotice =>
      'Không có bất kỳ dữ liệu nào rời khỏi thiết bị này, ngoại trừ khi kiểm tra cập nhật';

  @override
  String get infoOpenReleasePage => 'Mở trang phát hành';

  @override
  String get infoOpenReleases => 'Mở GitHub Releases';

  @override
  String get infoNoBrowser => 'Không tìm thấy trình duyệt web khả dụng.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version đã sẵn sàng.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Đã có phiên bản mới $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Bạn đang dùng phiên bản mới nhất ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'Ứng dụng đã là bản mới nhất';

  @override
  String get infoUpdateFailed => 'Kiểm tra cập nhật thất bại';

  @override
  String get infoRateLimit =>
      'GitHub hiện đang giới hạn số lượt yêu cầu từ mạng này. Vui lòng thử lại sau vài phút.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub phản hồi với mã lỗi $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Phản hồi bất thường từ GitHub.';

  @override
  String get infoNoRelease => 'GitHub không ghi nhận bản phát hành nào.';

  @override
  String get infoTimeout => 'Hết thời gian chờ phản hồi từ GitHub.';

  @override
  String get infoNoNetwork => 'Không có kết nối mạng.';

  @override
  String get infoGenericError => 'Không thể kiểm tra bản cập nhật.';

  @override
  String get safetyEmergencyRevertHint =>
      'Tắt màn hình (nút Nguồn) để hủy và khôi phục cài đặt ngay lập tức';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Tự động khôi phục sau $seconds giây nếu không xác nhận';
  }
}
