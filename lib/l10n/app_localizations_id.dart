// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonDone => 'Selesai';

  @override
  String get commonSave => 'Simpan';

  @override
  String get commonClose => 'Tutup';

  @override
  String get commonRevert => 'Kembalikan';

  @override
  String get commonReset => 'Reset';

  @override
  String get commonLearnMore => 'Pelajari lebih lanjut';

  @override
  String get commonBack => 'Kembali';

  @override
  String get commonContinue => 'Lanjutkan';

  @override
  String get commonApply => 'Terapkan';

  @override
  String get commonGrant => 'Izinkan';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Gagal';

  @override
  String get commonEnabled => 'Diaktifkan';

  @override
  String get commonDisabled => 'Dinonaktifkan';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · periksa pembaruan';
  }

  @override
  String get homeHeroTitle => 'Sesuaikan tampilan untuk semua monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Akses permanen aktif';

  @override
  String get homeStatusPrivilegedAccessReady => 'Akses istimewa siap';

  @override
  String get homeStatusSetupRequired => 'Perlu disiapkan';

  @override
  String get homeApplyTestProfile => 'Terapkan Profil Uji';

  @override
  String get homeApplyFailed =>
      'Gagal menerapkan. Periksa akses istimewa Anda.';

  @override
  String get homeResetDisplayToNative => 'Reset Tampilan ke Standar Ponsel';

  @override
  String get homeSectionQuickSettings => 'Setelan cepat';

  @override
  String get homeSectionConfigure => 'Konfigurasi';

  @override
  String get homeNavDisplayTitle => 'Tampilan';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolusi, skala, tampilan, dan mode aman peluncur';

  @override
  String get homeNavAccessTitle => 'Akses & Izin';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, akses permanen, dan izin khusus';

  @override
  String get homeForceLandscapeTitle => 'Paksa Lanskap (Kunci Pencerminan)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Memaksa mode lanskap pada aplikasi yang terkunci di potret (termasuk peluncur HyperOS). Diterapkan saat Anda mengetuk Terapkan Profil Uji.';

  @override
  String get homeAutoApplyTitle => 'Terapkan otomatis saat monitor tersambung';

  @override
  String get homeAutoApplyWatching =>
      'Memantau layar eksternal di latar belakang.';

  @override
  String get homeAutoApplyDescription =>
      'Terapkan profil Anda secara otomatis saat layar eksternal tersambung.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Redupkan layar ponsel';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Meredupkan layar ponsel ke batas minimum saat terhubung';

  @override
  String get homePermissionsRequiredDialogTitle => 'Izin diperlukan';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Paksa Lanskap hanya dapat diaktifkan setelah kedua izin khusus diberikan:';

  @override
  String get homePermissionDisplayOverApps =>
      '• Tampilkan di atas aplikasi lain';

  @override
  String get homePermissionModifySettings => '• Ubah setelan sistem';

  @override
  String get homeGrantOverlay => 'Izinkan overlay';

  @override
  String get homeGrantSettings => 'Izinkan setelan';

  @override
  String get homeVersionCheckForUpdates => 'Periksa pembaruan · Berlisensi MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Pembaruan $version tersedia';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Profil uji aktif — kembali dalam $seconds detik';
  }

  @override
  String get homeKeepSettings => 'Pertahankan Setelan';

  @override
  String get homeRevertNow => 'Kembalikan Sekarang';

  @override
  String get homeStatusConnected => 'Layar eksternal tersambung';

  @override
  String get homeStatusNotDetected => 'Layar eksternal tidak terdeteksi';

  @override
  String get homeStatusDisconnected => 'Terputus';

  @override
  String get homeWatcherActive => 'Pemantau layar aktif';

  @override
  String get homeWatcherStopped => 'Pemantau layar berhenti';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Terapkan profil otomatis saat tersambung';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Profil Uji (15 detik)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Otomatis kembali dalam $seconds detik jika tidak dikonfirmasi';
  }

  @override
  String get homeScreenOffHint =>
      'Matikan layar (tombol Daya) untuk langsung membatalkan & mengembalikan';

  @override
  String get homeOrientationLockActiveSummary =>
      'Kunci lanskap aktif. Layar utama dan aplikasi terbaru akan tetap dalam mode lanskap selama aktif.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Paksa Lanskap memerlukan izin \"Tampilkan di atas aplikasi lain\" dan \"Ubah setelan sistem\" untuk MoniTune. Berikan izin lalu coba lagi.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Tidak dapat menerapkan penguncian lanskap.';

  @override
  String get displayTitle => 'Tampilan';

  @override
  String get displaySectionTargetResolution => 'Resolusi target';

  @override
  String get displaySectionDesktopUiScaling => 'Skala UI desktop';

  @override
  String get displaySectionBehaviour => 'Perilaku';

  @override
  String get displaySectionAppearance => 'Tampilan';

  @override
  String get displaySectionLanguage => 'Bahasa';

  @override
  String get displaySectionPresets => 'Preset Layar';

  @override
  String get displaySectionCustomResolution => 'Resolusi Kustom';

  @override
  String get displaySectionUiScaling => 'Penskalaan UI';

  @override
  String get displaySectionLauncherOrientation => 'Peluncur & Orientasi';

  @override
  String get displayDiagResolution => 'Resolusi';

  @override
  String get displayDiagDensity => 'Kepadatan';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotasi';

  @override
  String get displayDiagExternalDisplay => 'Layar eksternal';

  @override
  String get displayDiagNoneConnected => 'Tidak ada tersambung';

  @override
  String get displayDiagCustomProfile => 'Profil kustom';

  @override
  String get displayDiagActive => 'Aktif';

  @override
  String get displayDiagNotApplied => 'Tidak diterapkan';

  @override
  String get displayRotationLandscape90 => 'Lanskap (90°)';

  @override
  String get displayRotationPortrait180 => 'Potret Terbalik (180°)';

  @override
  String get displayRotationLandscape270 => 'Lanskap Terbalik (270°)';

  @override
  String get displayRotationPortrait0 => 'Potret Standar (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'Ultrawide 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'Ultrawide (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'Ultrawide (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'Layar Bawaan Ponsel';

  @override
  String get displayPresetNativeShort => 'Bawaan';

  @override
  String get displayPresetCustom => 'Resolusi Kustom…';

  @override
  String get displayPresetCustomShort => 'Kustom';

  @override
  String get displayWidthPx => 'Lebar (px)';

  @override
  String get displayHeightPx => 'Tinggi (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Kanvas target: $width × $height piksel';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Faktor Skala $scale%';
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
      '100% memberikan kepadatan PC tanpa memperbesar widget ponsel.';

  @override
  String get displayKeepUiDensityTitle =>
      'Pertahankan Kepadatan UI Android (Aman untuk Peluncur)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Menerapkan resolusi tanpa mengubah kepadatan Android, sehingga tata letak ikon layar utama MIUI/HyperOS tidak berantakan.';

  @override
  String get displayLauncherSafeMode => 'Mode aman peluncur';

  @override
  String get displayLauncherSafeModeDesc =>
      'Menjaga tata letak kisi ikon peluncur MIUI/HyperOS tetap utuh';

  @override
  String get displayForceLandscape => 'Paksa Lanskap';

  @override
  String get displayForceLandscapeDesc =>
      'Mencegah peluncur berputar kembali ke mode potret';

  @override
  String get displayMiuiDetectedTitle => 'Peluncur HyperOS / MIUI Terdeteksi';

  @override
  String get displayMiuiDetectedMessage =>
      'Mengubah kepadatan Android dapat mengacak tata letak ikon layar utama Anda ke halaman lain. Aktifkan \"Pertahankan Kepadatan UI Android\" di atas untuk mencegah hal ini — resolusi desktop dan pencerminan tidak akan terpengaruh.';

  @override
  String get displayMiuiDetectedTip =>
      'Tips: aktifkan juga Setelan → Layar utama → \"Kunci Tata Letak Layar Utama\".';

  @override
  String get displayForceLandscapeTitle => 'Paksa Lanskap';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Diaktifkan — diterapkan saat Anda mengetuk Terapkan Profil Uji (Beranda).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Dapat dialihkan dari layar Beranda. Memerlukan kedua izin orientasi.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Reset Resolusi Otomatis saat Keluar';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Mengembalikan ponsel ke resolusi aslinya setelah selesai digunakan.';

  @override
  String get displayMaterialYouTitle => 'Warna Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Mengikuti palet wallpaper Anda';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Menggunakan aksen pilihan Anda';

  @override
  String get displayUseWallpaperTitle => 'Gunakan warna wallpaper';

  @override
  String get displayUseWallpaperChecking =>
      'Memeriksa dukungan versi Android Anda…';

  @override
  String get displayUseWallpaperSupported =>
      'Menerapkan palet ekspresif Material 3 yang dibuat dari wallpaper Anda.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Memerlukan Android 12 atau yang lebih baru. Pilih warna aksen di bawah ini.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Warna wallpaper memerlukan Android 12 atau lebih baru.';

  @override
  String get displayAccent => 'Aksen';

  @override
  String get displayAccentColorSemantics => 'Warna aksen';

  @override
  String get displayPalette => 'Gaya Palet';

  @override
  String get displayPaletteVibrant => 'Tegas';

  @override
  String get displayPaletteFidelity => 'Akurat';

  @override
  String get displayPaletteExpressive => 'Ekspresif';

  @override
  String get displayPaletteTonalSpot => 'Titik tonal';

  @override
  String get displayPaletteNeutral => 'Netral';

  @override
  String get displayPaletteContent => 'Konten';

  @override
  String get displayPaletteDescription =>
      'Tegas mempertahankan kecerahan warna aksen, Akurat menyesuaikan dengan tepat, dan Ekspresif memadukan nuansa warna untuk tampilan dinamis.';

  @override
  String get displayContrast => 'Kontras';

  @override
  String get displayContrastBoost => 'Peningkatan Kontras';

  @override
  String get displayContrastBoosted => 'Ditingkatkan';

  @override
  String get displayContrastStandard => 'Standar';

  @override
  String get displayContrastDescription =>
      'Peningkatan menaikkan kontras teks dan permukaan — sangat berguna pada wallpaper sangat terang atau monitor besar dari kejauhan.';

  @override
  String get displayLanguage => 'Bahasa';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Default sistem ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Default sistem';

  @override
  String get accessTitle => 'Akses & Izin';

  @override
  String get accessSectionPrivileged => 'Akses istimewa';

  @override
  String get accessSectionSpecial => 'Izin khusus';

  @override
  String get accessSectionBackground => 'Latar belakang';

  @override
  String get accessForceLandscapeHint =>
      'Paksa Lanskap memerlukan kedua izin ini.';

  @override
  String get accessPermDisplayOverApps => 'Tampilkan di atas aplikasi lain';

  @override
  String get accessPermModifySettings => 'Ubah setelan sistem';

  @override
  String get accessPermBatteryOptimization => 'Pengecualian optimasi baterai';

  @override
  String get accessPermNotifications =>
      'Notifikasi (pemantau penerapan otomatis)';

  @override
  String get accessPermanentTitle => 'Akses Permanen Aktif';

  @override
  String get accessPermanentSubtitle =>
      'Bekerja tanpa Shizuku, ADB, atau Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Akses Istimewa Shizuku Aktif';

  @override
  String get accessShizukuActiveSubtitle =>
      'Berikan akses permanen sekali untuk berjalan tanpa Shizuku setelahnya.';

  @override
  String get accessRootActiveTitle => 'Akses Root (su) Tersedia';

  @override
  String get accessRootActiveSubtitle =>
      'Perubahan tampilan akan dieksekusi melalui root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku Terdeteksi — Izin Diperlukan';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Otorisasi sekali, lalu berikan akses permanen.';

  @override
  String get accessNoAccessTitle => 'Tidak Ada Akses Istimewa';

  @override
  String get accessNoAccessSubtitle =>
      'Mulai Shizuku melalui debugging nirkabel, atau gunakan root untuk mengaktifkan perubahan.';

  @override
  String get accessAuthorizeShizuku => 'Otorisasi dengan Shizuku';

  @override
  String get accessShizukuRequested => 'Izin Shizuku diminta.';

  @override
  String get accessGrantPermanent =>
      'Berikan Akses Permanen (tanpa Shizuku setelahnya)';

  @override
  String get accessPermanentGranted =>
      'Akses tampilan permanen berhasil diberikan!';

  @override
  String get accessPermanentFailed =>
      'Gagal memberikan izin. Apakah Shizuku berjalan dan diotorisasi?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Tulis Setelan Aman (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Layanan Shizuku';

  @override
  String get accessPrivilegeRoot => 'Hak Akses Root';

  @override
  String get accessPrivilegeOverlay => 'Tampilkan di Atas Aplikasi Lain';

  @override
  String get accessPrivilegeModifySystemSettings => 'Ubah Setelan Sistem';

  @override
  String get accessPrivilegeNotifications => 'Notifikasi';

  @override
  String get accessPrivilegeBatteryOptimization => 'Optimasi Baterai';

  @override
  String get accessStatusGranted => 'Diberikan';

  @override
  String get accessStatusMissing => 'Belum ada';

  @override
  String get accessStatusNotRunning => 'Tidak berjalan';

  @override
  String get accessStatusRequired => 'Wajib';

  @override
  String get accessAdbInstruction =>
      'Jalankan perintah ADB dari komputer jika Shizuku tidak tersedia.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Lewati';

  @override
  String get onboardingBack => 'Kembali';

  @override
  String get onboardingNext => 'Lanjut';

  @override
  String get onboardingGetStarted => 'Mulai';

  @override
  String get onboardingWelcomeTitle => 'Selamat Datang di MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Sesuaikan tampilan Android Anda untuk monitor eksternal apa pun. Atur resolusi dan skala ideal, jaga kerapian layar utama Anda, dan paksa tampilan lanskap lebar — semua dari satu aplikasi ringan.';

  @override
  String get onboardingWelcomeBullet1 => 'Preset resolusi & skala antarmuka';

  @override
  String get onboardingWelcomeBullet2 => 'Mode aman peluncur MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Warna dinamis selaras dengan wallpaper';

  @override
  String get onboardingProblemTitle => 'Batasan bawaan Android';

  @override
  String get onboardingProblemBody =>
      'Saat mencerminkan ponsel ke monitor, Android secara otomatis menentukan resolusi, kepadatan, dan rotasi — dan aplikasi biasa tidak diizinkan mengubahnya.';

  @override
  String get onboardingProblemBullet1 =>
      'Mengubah kepadatan pada Xiaomi MIUI/HyperOS dapat mengacak ikon layar utama ke halaman lain.';

  @override
  String get onboardingProblemBullet2 =>
      'Tidak ada opsi bawaan untuk menghilangkan bilah hitam atau memilih rasio layar lebar.';

  @override
  String get onboardingWhyTitle => 'Mengapa butuh Shizuku atau Root?';

  @override
  String get onboardingWhyBody =>
      'Penyesuaian yang dijalankan MoniTune membutuhkan izin WRITE_SECURE_SETTINGS, yang hanya diberikan Android kepada aplikasi istimewa.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku menjalankan perintah dengan izin yang diberikan melalui debugging nirkabel — tanpa perlu root.';

  @override
  String get onboardingWhyBullet2 =>
      'Jika ponsel Anda sudah di-root, MoniTune dapat langsung menggunakan akses root tersebut.';

  @override
  String get onboardingWhyBullet3 =>
      'Transparansi penuh: MoniTune hanya menggunakan akses ini untuk mengubah ukuran layar, kepadatan, dan rotasi.';

  @override
  String get onboardingPathsTitle => 'Pilih metode Anda';

  @override
  String get onboardingPathsBody =>
      'Kedua jalur membuka fitur yang sama persis.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (tanpa root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Direkomendasikan untuk sebagian besar ponsel. Memerlukan penyiapan sekali melalui debugging nirkabel.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Jika perangkat Anda sudah di-root, MoniTune akan mendeteksinya secara otomatis.';

  @override
  String get onboardingShizukuStepsTitle => 'Menyiapkan Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Instal Shizuku lalu jalankan sekali. MoniTune akan memandu Anda untuk langkah selanjutnya.';

  @override
  String get onboardingShizukuStep1 =>
      'Instal Shizuku dari situs web resmi atau GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Buka Shizuku dan mulai melalui Debugging nirkabel (Android 11+) atau ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Kembali ke MoniTune dan ketuk \"Otorisasi dengan Shizuku\".';

  @override
  String get onboardingShizukuGuideButton => 'Buka panduan penyiapan Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Penyiapan sekali saja';

  @override
  String get onboardingOneTimeBody =>
      'Selama Shizuku (atau root) tersedia, MoniTune dapat memberikan dirinya sendiri izin WRITE_SECURE_SETTINGS permanen.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Berikan sekali — setelah itu MoniTune bekerja tanpa Shizuku, tanpa ADB, dan tanpa Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'Izin tetap bertahan meskipun ponsel dimulai ulang.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku hanya perlu berjalan pada saat izin tersebut diberikan.';

  @override
  String get onboardingSafetyTitle => 'Perlindungan terintegrasi';

  @override
  String get onboardingSafetyBody =>
      'Mengubah ukuran layar dapat membuat layar tidak terbaca untuk sementara; oleh karena itu MoniTune menyertakan pengaman otomatis.';

  @override
  String get onboardingSafetyBullet1 =>
      'Mode uji otomatis kembali setelah 15 detik kecuali Anda mengetuk \"Pertahankan Setelan\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Mematikan layar langsung memulihkan resolusi asli ponsel Anda.';

  @override
  String get onboardingSafetyBullet3 =>
      'Mode aman peluncur melewati perubahan kepadatan agar ikon MIUI/HyperOS tidak berantakan.';

  @override
  String get onboardingReadyTitle => 'Anda siap memulai';

  @override
  String get onboardingReadyBody =>
      'Konfigurasikan akses istimewa dan dua izin khusus berikut. Kemudian pilih resolusi dan skala Anda, lalu uji dengan aman bersama penghitung waktu mundur 15 detik sebelum menyimpannya.';

  @override
  String get onboardingReadyBullet1 =>
      'Terapkan otomatis: menerapkan profil saat monitor terhubung dan mereset saat dilepas.';

  @override
  String get onboardingReadyBullet2 =>
      'Paksa Lanskap menimpa penguncian rotasi aplikasi apa pun — termasuk peluncur HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Pada Android 12+, MoniTune dapat menyesuaikan warnanya dengan wallpaper Anda (Material You).';

  @override
  String get onboardingReadyButton => 'Konfigurasikan akses sekarang';

  @override
  String infoVersion(String version) {
    return 'Versi $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versi $version · build $buildNumber';
  }

  @override
  String get infoChecking => 'Memeriksa…';

  @override
  String get infoCheckingForUpdates => 'Memeriksa pembaruan…';

  @override
  String get infoCheckForUpdates => 'Periksa pembaruan';

  @override
  String get infoDistributedVia => 'Didistribusikan melalui GitHub Releases';

  @override
  String get infoMitLicense => 'Berlisensi MIT · kode sumber terbuka';

  @override
  String get infoPrivacyNotice =>
      'Tidak ada data yang keluar dari perangkat ini, kecuali saat memeriksa pembaruan';

  @override
  String get infoOpenReleasePage => 'Buka halaman rilis';

  @override
  String get infoOpenReleases => 'Buka GitHub Releases';

  @override
  String get infoNoBrowser => 'Tidak ada browser web yang tersedia.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version telah tersedia.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Versi baru $version tersedia';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Anda menggunakan versi terbaru ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'Aplikasi sudah versi terbaru';

  @override
  String get infoUpdateFailed => 'Gagal memeriksa pembaruan';

  @override
  String get infoRateLimit =>
      'GitHub sedang membatasi permintaan dari jaringan ini. Coba lagi dalam beberapa menit.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub merespons dengan kode status $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Respons tidak terduga dari GitHub.';

  @override
  String get infoNoRelease => 'GitHub tidak melaporkan rilis apa pun.';

  @override
  String get infoTimeout => 'Waktu respons GitHub habis.';

  @override
  String get infoNoNetwork => 'Tidak ada koneksi jaringan.';

  @override
  String get infoGenericError => 'Tidak dapat memeriksa pembaruan.';

  @override
  String get safetyEmergencyRevertHint =>
      'Matikan layar (tombol Daya) untuk langsung membatalkan & mengembalikan';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Otomatis kembali dalam $seconds detik jika tidak dikonfirmasi';
  }
}
