// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'İptal';

  @override
  String get commonDone => 'Bitti';

  @override
  String get commonSave => 'Kaydet';

  @override
  String get commonClose => 'Kapat';

  @override
  String get commonRevert => 'Geri Al';

  @override
  String get commonReset => 'Sıfırla';

  @override
  String get commonLearnMore => 'Daha fazla bilgi';

  @override
  String get commonBack => 'Geri';

  @override
  String get commonContinue => 'Devam Et';

  @override
  String get commonApply => 'Uygula';

  @override
  String get commonGrant => 'İzin Ver';

  @override
  String get commonOk => 'Tamam';

  @override
  String get commonFailed => 'Başarısız';

  @override
  String get commonEnabled => 'Etkin';

  @override
  String get commonDisabled => 'Devre Dışı';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · güncellemeleri denetle';
  }

  @override
  String get homeHeroTitle => 'Ekranınızı her monitöre göre uyarlayın';

  @override
  String get homeStatusPermanentAccessActive => 'Kalıcı erişim etkin';

  @override
  String get homeStatusPrivilegedAccessReady => 'Ayrıcalıklı erişim hazır';

  @override
  String get homeStatusSetupRequired => 'Kurulum gerekli';

  @override
  String get homeApplyTestProfile => 'Test Profilini Uygula';

  @override
  String get homeApplyFailed =>
      'Uygulanamadı. Ayrıcalıklı erişiminizi kontrol edin.';

  @override
  String get homeResetDisplayToNative => 'Ekranı Telefon Varsayılanına Sıfırla';

  @override
  String get homeSectionQuickSettings => 'Hızlı ayarlar';

  @override
  String get homeSectionConfigure => 'Yapılandır';

  @override
  String get homeNavDisplayTitle => 'Ekran';

  @override
  String get homeNavDisplaySubtitle =>
      'Çözünürlük, ölçeklendirme, görünüm ve başlatıcı güvenli modu';

  @override
  String get homeNavAccessTitle => 'Erişim ve İzinler';

  @override
  String get homeNavAccessSubtitle => 'Shizuku, kalıcı erişim ve özel izinler';

  @override
  String get homeForceLandscapeTitle => 'Yatay Modu Zorla (Yansıtma Kilidi)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Dikey kilitli uygulamaları (HyperOS başlatıcı dahil) yatay moda zorlar. Test Profilini Uygula\'ya dokunulduğunda geçerli olur.';

  @override
  String get homeAutoApplyTitle => 'Monitör bağlandığında otomatik uygula';

  @override
  String get homeAutoApplyWatching => 'Arka planda harici ekranlar izleniyor.';

  @override
  String get homeAutoApplyDescription =>
      'Harici bir ekran bağlandığında profilinizi otomatik olarak uygulayın.';

  @override
  String get homePermissionsRequiredDialogTitle => 'İzinler gerekli';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Yatay Modu Zorla yalnızca her iki özel izin verildikten sonra etkinleştirilebilir:';

  @override
  String get homePermissionDisplayOverApps =>
      '• Diğer uygulamaların üzerinde görüntüleme';

  @override
  String get homePermissionModifySettings => '• Sistem ayarlarını değiştirme';

  @override
  String get homeGrantOverlay => 'Üstte gösterme izni ver';

  @override
  String get homeGrantSettings => 'Ayar değiştirme izni ver';

  @override
  String get homeVersionCheckForUpdates =>
      'Güncellemeleri denetle · MIT lisanslı';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Güncelleme $version mevcut';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Test profili etkin — $seconds sn içinde geri alınıyor';
  }

  @override
  String get homeKeepSettings => 'Ayarları Koru';

  @override
  String get homeRevertNow => 'Şimdi Geri Al';

  @override
  String get homeStatusConnected => 'Harici ekran bağlandı';

  @override
  String get homeStatusNotDetected => 'Harici ekran algılanmadı';

  @override
  String get homeStatusDisconnected => 'Bağlantı kesildi';

  @override
  String get homeWatcherActive => 'Ekran izleme etkin';

  @override
  String get homeWatcherStopped => 'Ekran izleme durduruldu';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Bağlantıda profili otomatik uygula';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ %$scale ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Test Profili (15 sn)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Onaylanmazsa $seconds sn içinde otomatik geri alınacak';
  }

  @override
  String get homeScreenOffHint =>
      'Hemen iptal edip geri almak için ekranı kapatın (Güç tuşu)';

  @override
  String get homeOrientationLockActiveSummary =>
      'Yatay kilit etkin. Açık olduğu sürece ana ekran ve son uygulamalar yatay kalır.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Yatay Modu Zorla, MoniTune için \"Diğer uygulamaların üzerinde görüntüleme\" ve \"Sistem ayarlarını değiştirme\" izinlerine ihtiyaç duyar. İzin verip tekrar deneyin.';

  @override
  String get homeOrientationLockFailedSummary => 'Yatay kilit uygulanamadı.';

  @override
  String get displayTitle => 'Ekran';

  @override
  String get displaySectionTargetResolution => 'Hedef çözünürlük';

  @override
  String get displaySectionDesktopUiScaling => 'Masaüstü arayüz ölçeklendirme';

  @override
  String get displaySectionBehaviour => 'Davranış';

  @override
  String get displaySectionAppearance => 'Görünüm';

  @override
  String get displaySectionLanguage => 'Dil';

  @override
  String get displaySectionPresets => 'Ekran Ön Ayarları';

  @override
  String get displaySectionCustomResolution => 'Özel Çözünürlük';

  @override
  String get displaySectionUiScaling => 'Arayüz Ölçeklendirme';

  @override
  String get displaySectionLauncherOrientation => 'Başlatıcı ve Yönlendirme';

  @override
  String get displayDiagResolution => 'Çözünürlük';

  @override
  String get displayDiagDensity => 'Yoğunluk';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Döndürme';

  @override
  String get displayDiagExternalDisplay => 'Harici ekran';

  @override
  String get displayDiagNoneConnected => 'Bağlı değil';

  @override
  String get displayDiagCustomProfile => 'Özel profil';

  @override
  String get displayDiagActive => 'Etkin';

  @override
  String get displayDiagNotApplied => 'Uygulanmadı';

  @override
  String get displayRotationLandscape90 => 'Yatay (90°)';

  @override
  String get displayRotationPortrait180 => 'Ters Dikey (180°)';

  @override
  String get displayRotationLandscape270 => 'Ters Yatay (270°)';

  @override
  String get displayRotationPortrait0 => 'Standart Dikey (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'Ultra Geniş 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'Ultra Geniş (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'Ultra Geniş (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'Telefonun Kendi Ekranı';

  @override
  String get displayPresetNativeShort => 'Varsayılan';

  @override
  String get displayPresetCustom => 'Özel Çözünürlük…';

  @override
  String get displayPresetCustomShort => 'Özel';

  @override
  String get displayWidthPx => 'Genişlik (px)';

  @override
  String get displayHeightPx => 'Yükseklik (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Hedef tuval: $width × $height piksel';
  }

  @override
  String displayScaleFactor(int scale) {
    return '%$scale Ölçek Çarpanı';
  }

  @override
  String displayScalePercent(int scale) {
    return '%$scale';
  }

  @override
  String displayDpiValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String displayScaleDpiIndicator(int scale, int dpi) {
    return '%$scale ($dpi DPI)';
  }

  @override
  String get displayScaleNativeHint =>
      '%100, mobil araçları büyütmeden doğal masaüstü yoğunluğunu sunar.';

  @override
  String get displayKeepUiDensityTitle =>
      'Android Arayüz Yoğunluğunu Koru (Başlatıcı Güvenli)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Çözünürlüğü uygular ancak Android yoğunluğuna dokunmaz, böylece MIUI/HyperOS ana ekran simge düzeni bozulmaz.';

  @override
  String get displayLauncherSafeMode => 'Başlatıcı güvenli modu';

  @override
  String get displayLauncherSafeModeDesc =>
      'MIUI/HyperOS başlatıcı simge ızgarasını korur';

  @override
  String get displayForceLandscape => 'Yatay Modu Zorla';

  @override
  String get displayForceLandscapeDesc =>
      'Başlatıcının dikey moda geri dönmesini önler';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI Başlatıcı Algılandı';

  @override
  String get displayMiuiDetectedMessage =>
      'Android yoğunluğunu değiştirmek ana ekran simgelerinizin düzenini bozabilir ve uygulamaları diğer sayfalara dağıtabilir. Bunu önlemek için yukarıdaki \"Android Arayüz Yoğunluğunu Koru\" seçeneğini açın — masaüstü çözünürlüğü ve ekran yansıtma bundan etkilenmez.';

  @override
  String get displayMiuiDetectedTip =>
      'İpucu: Ayarlar → Ana ekran → \"Ana Ekran Düzenini Kilitle\" ayarını da etkinleştirmeniz önerilir.';

  @override
  String get displayForceLandscapeTitle => 'Yatay Modu Zorla';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Etkin — Ana ekranda Test Profilini Uygula\'ya dokunulduğunda geçerli olur.';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Ana ekrandan açıp kapatabilirsiniz. Her iki yönlendirme iznini gerektirir.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Çıkışta Çözünürlüğü Otomatik Sıfırla';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'İşiniz bittiğinde telefonunuzu varsayılan çözünürlüğüne geri döndürür.';

  @override
  String get displayMaterialYouTitle => 'Material You renkleri';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Duvar kağıdı paletiniz uygulanıyor';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Seçilen vurgu rengi kullanılıyor';

  @override
  String get displayUseWallpaperTitle => 'Duvar kağıdı renklerini kullan';

  @override
  String get displayUseWallpaperChecking =>
      'Android sürümünüzün desteği kontrol ediliyor…';

  @override
  String get displayUseWallpaperSupported =>
      'Duvar kağıdınızdan oluşturulan Material 3 etkileyici paletini uygular.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Android 12 veya üzerini gerektirir. Aşağıdan bir vurgu rengi seçin.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Duvar kağıdı renkleri için Android 12 veya daha yenisi gerekir.';

  @override
  String get displayAccent => 'Vurgu';

  @override
  String get displayAccentColorSemantics => 'Vurgu rengi';

  @override
  String get displayPalette => 'Palet tarzı';

  @override
  String get displayPaletteVibrant => 'Canlı';

  @override
  String get displayPaletteFidelity => 'Birebir';

  @override
  String get displayPaletteExpressive => 'Etkileyici';

  @override
  String get displayPaletteTonalSpot => 'Tonal nokta';

  @override
  String get displayPaletteNeutral => 'Nötr';

  @override
  String get displayPaletteContent => 'İçerik';

  @override
  String get displayPaletteDescription =>
      'Canlı vurgu rengini parlak tutar, Birebir rengi aslına uygun eşler, Etkileyici ise Material 3\'ün tonları dinamik biçimde harmanlamasını sağlar.';

  @override
  String get displayContrast => 'Kontrast';

  @override
  String get displayContrastBoost => 'Kontrast Artırma';

  @override
  String get displayContrastBoosted => 'Artırılmış';

  @override
  String get displayContrastStandard => 'Standart';

  @override
  String get displayContrastDescription =>
      'Artırılmış, metin ve yüzey kontrastını yükseltir — çok parlak duvar kağıtlarında veya uzaktaki büyük monitörlerde oldukça yararlıdır.';

  @override
  String get displayLanguage => 'Dil';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Sistem varsayılanı ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Sistem varsayılanı';

  @override
  String get accessTitle => 'Erişim ve İzinler';

  @override
  String get accessSectionPrivileged => 'Ayrıcalıklı erişim';

  @override
  String get accessSectionSpecial => 'Özel izinler';

  @override
  String get accessSectionBackground => 'Arka plan';

  @override
  String get accessForceLandscapeHint =>
      'Yatay Modu Zorla için bu iki izin de gereklidir.';

  @override
  String get accessPermDisplayOverApps =>
      'Diğer uygulamaların üzerinde görüntüleme';

  @override
  String get accessPermModifySettings => 'Sistem ayarlarını değiştirme';

  @override
  String get accessPermBatteryOptimization => 'Pil optimizasyonu muafiyeti';

  @override
  String get accessPermNotifications =>
      'Bildirimler (otomatik uygulama izleyicisi)';

  @override
  String get accessPermanentTitle => 'Kalıcı Erişim Etkin';

  @override
  String get accessPermanentSubtitle =>
      'Shizuku, ADB veya Wi-Fi olmadan çalışır.';

  @override
  String get accessShizukuActiveTitle => 'Shizuku Ayrıcalıklı Erişimi Etkin';

  @override
  String get accessShizukuActiveSubtitle =>
      'Daha sonra Shizuku olmadan çalıştırmak için bir kez kalıcı erişim verin.';

  @override
  String get accessRootActiveTitle => 'Root (su) Erişimi Mevcut';

  @override
  String get accessRootActiveSubtitle =>
      'Ekran değişiklikleri root üzerinden uygulanacaktır.';

  @override
  String get accessShizukuRequiredTitle => 'Shizuku Algılandı — İzin Gerekli';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Bir kez yetkilendirin, ardından kalıcı erişim verin.';

  @override
  String get accessNoAccessTitle => 'Ayrıcalıklı Erişim Yok';

  @override
  String get accessNoAccessSubtitle =>
      'Kablosuz hata ayıklama ile Shizuku\'yu başlatın veya değişiklikleri etkinleştirmek için root kullanın.';

  @override
  String get accessAuthorizeShizuku => 'Shizuku ile Yetkilendir';

  @override
  String get accessShizukuRequested => 'Shizuku izni istendi.';

  @override
  String get accessGrantPermanent =>
      'Kalıcı Erişim Ver (sonrasında Shizuku gerekmez)';

  @override
  String get accessPermanentGranted =>
      'Kalıcı ekran erişimi başarıyla verildi!';

  @override
  String get accessPermanentFailed =>
      'İzin verme başarısız. Shizuku çalışıyor ve yetkilendirildi mi?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Güvenli Ayarları Yaz (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizuku Hizmeti';

  @override
  String get accessPrivilegeRoot => 'Root Ayrıcalığı';

  @override
  String get accessPrivilegeOverlay =>
      'Diğer Uygulamaların Üzerinde Görüntüleme';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Sistem Ayarlarını Değiştirme';

  @override
  String get accessPrivilegeNotifications => 'Bildirimler';

  @override
  String get accessPrivilegeBatteryOptimization => 'Pil Optimizasyonu';

  @override
  String get accessStatusGranted => 'Verildi';

  @override
  String get accessStatusMissing => 'Eksik';

  @override
  String get accessStatusNotRunning => 'Çalışmıyor';

  @override
  String get accessStatusRequired => 'Gerekli';

  @override
  String get accessAdbInstruction =>
      'Shizuku mevcut değilse bilgisayardan ADB komutunu çalıştırın.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Atla';

  @override
  String get onboardingBack => 'Geri';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get onboardingGetStarted => 'Başla';

  @override
  String get onboardingWelcomeTitle => 'MoniTune\'a Hoş Geldiniz';

  @override
  String get onboardingWelcomeBody =>
      'Android ekranınızı herhangi bir harici monitör için mükemmel şekilde ayarlayın. İstediğiniz çözünürlüğü ve ölçeği belirleyin, ana ekranınızı düzenli tutun ve geniş ekran yatay modu zorlayın — hepsi hafif bir uygulamada.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Çözünürlük ve arayüz ölçekleme ön ayarları';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI/HyperOS başlatıcı güvenli modu';

  @override
  String get onboardingWelcomeBullet3 =>
      'Duvar kağıdınızla uyumlu dinamik renkler';

  @override
  String get onboardingProblemTitle => 'Android\'in kısıtlamaları';

  @override
  String get onboardingProblemBody =>
      'Telefonunuzu bir monitöre yansıttığınızda Android çözünürlüğü, yoğunluğu ve yönlendirmeyi sizin yerinize seçer — ve standart uygulamaların bunları değiştirmesine izin verilmez.';

  @override
  String get onboardingProblemBullet1 =>
      'Xiaomi MIUI/HyperOS cihazlarda yoğunluğu değiştirmek ana ekran simgelerinizi farklı sayfalara dağıtabilir.';

  @override
  String get onboardingProblemBullet2 =>
      'Siyah çubukları kaldırmak veya geniş ekran boyutu seçmek için yerleşik bir seçenek yoktur.';

  @override
  String get onboardingWhyTitle => 'Neden Shizuku veya Root?';

  @override
  String get onboardingWhyBody =>
      'MoniTune\'un gerçekleştirdiği işlemler, Android\'in yalnızca ayrıcalıklı uygulamalara verdiği WRITE_SECURE_SETTINGS iznini gerektirir.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku, kablosuz hata ayıklama ile verdiğiniz yetkilerle komutları çalıştırır — root gerekmez.';

  @override
  String get onboardingWhyBullet2 =>
      'Telefonunuz zaten rootluysa MoniTune doğrudan root yetkisini kullanabilir.';

  @override
  String get onboardingWhyBullet3 =>
      'Tam şeffaflık: MoniTune bu erişimi yalnızca ekran boyutu, yoğunluğu ve döndürmesini ayarlamak için kullanır.';

  @override
  String get onboardingPathsTitle => 'Kurulum yönteminizi seçin';

  @override
  String get onboardingPathsBody =>
      'Her iki yöntem de tamamen aynı özellikleri kullanıma açar.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (rootsuz)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Çoğu telefon için önerilir. Kablosuz hata ayıklama ile tek seferlik kurulum gerektirir.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Cihazınız zaten rootluysa MoniTune bunu otomatik olarak algılar.';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku\'yu kurma';

  @override
  String get onboardingShizukuStepsBody =>
      'Shizuku\'yu yükleyin ve bir kez başlatın. MoniTune sonrasını size adım adım gösterecektir.';

  @override
  String get onboardingShizukuStep1 =>
      'Shizuku\'yu resmi web sitesinden veya GitHub Releases üzerinden yükleyin.';

  @override
  String get onboardingShizukuStep2 =>
      'Shizuku\'yu açın ve Kablosuz hata ayıklama (Android 11+) veya ADB ile başlatın.';

  @override
  String get onboardingShizukuStep3 =>
      'MoniTune\'a dönün ve \"Shizuku ile Yetkilendir\"e dokunun.';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku kurulum kılavuzunu aç';

  @override
  String get onboardingOneTimeTitle => 'Tek seferlik kurulum';

  @override
  String get onboardingOneTimeBody =>
      'Shizuku (veya root) aktifken MoniTune kendisine kalıcı WRITE_SECURE_SETTINGS izni verebilir.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Bir kez izin verin — ardından MoniTune; Shizuku, ADB veya Wi-Fi olmadan çalışmaya devam eder.';

  @override
  String get onboardingOneTimeBullet2 =>
      'İzin, cihaz yeniden başlatılsa bile geçerli kalır.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku\'nun sadece izin verildiği o anda çalışıyor olması yeterlidir.';

  @override
  String get onboardingSafetyTitle => 'Dahili güvenlik';

  @override
  String get onboardingSafetyBody =>
      'Ekran boyutunu değiştirmek ekranı geçici olarak okunamaz hale getirebilir; bu yüzden MoniTune sizi korur.';

  @override
  String get onboardingSafetyBullet1 =>
      'Test modu, \"Ayarları Koru\"ya dokunmadığınız sürece 15 saniye sonra otomatik olarak geri döner.';

  @override
  String get onboardingSafetyBullet2 =>
      'Ekranı kapatmak telefonun varsayılan çözünürlüğünü hemen geri yükler.';

  @override
  String get onboardingSafetyBullet3 =>
      'Başlatıcı güvenli modu, MIUI/HyperOS simgelerinin yerinde kalması için yoğunluk değişimini atlar.';

  @override
  String get onboardingReadyTitle => 'Hazırsınız';

  @override
  String get onboardingReadyBody =>
      'Şimdi ayrıcalıklı erişiminizi ve iki özel izni ayarlayın. Ardından istediğiniz çözünürlük ve ölçeği seçip 15 saniyelik güvenlik sayacıyla güvenle test edin.';

  @override
  String get onboardingReadyBullet1 =>
      'Otomatik uygula: Monitör takıldığı anda profilinizi uygular ve çıkarıldığında sıfırlar.';

  @override
  String get onboardingReadyBullet2 =>
      'Yatay Modu Zorla, HyperOS başlatıcı (Android 12+) dahil her uygulamanın yön kilidini geçersiz kılar.';

  @override
  String get onboardingReadyBullet3 =>
      'Android 12+ üzerinde MoniTune renklerini duvar kağıdınızdan alabilir (Material You).';

  @override
  String get onboardingReadyButton => 'Erişimi şimdi yapılandır';

  @override
  String infoVersion(String version) {
    return 'Sürüm $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Sürüm $version · derleme $buildNumber';
  }

  @override
  String get infoChecking => 'Kontrol ediliyor…';

  @override
  String get infoCheckingForUpdates => 'Güncellemeler denetleniyor…';

  @override
  String get infoCheckForUpdates => 'Güncellemeleri denetle';

  @override
  String get infoDistributedVia => 'GitHub Releases üzerinden dağıtılmaktadır';

  @override
  String get infoMitLicense => 'MIT lisanslı · açık kaynak kodlu';

  @override
  String get infoPrivacyNotice =>
      'Güncellemeleri kontrol etme haricinde bu cihazdan hiçbir veri çıkmaz';

  @override
  String get infoOpenReleasePage => 'Sürüm sayfasını aç';

  @override
  String get infoOpenReleases => 'GitHub Releases sayfasını aç';

  @override
  String get infoNoBrowser => 'Web tarayıcısı bulunamadı.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version mevcut.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Yeni $version sürümü mevcut';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'En son sürümü ($version) kullanıyorsunuz.';
  }

  @override
  String get infoUpdateUpToDateShort => 'Uygulama güncel';

  @override
  String get infoUpdateFailed => 'Güncelleme denetimi başarısız';

  @override
  String get infoRateLimit =>
      'GitHub şu anda bu ağdan gelen istekleri sınırlandırıyor. Birkaç dakika sonra tekrar deneyin.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub $statusCode durum koduyla yanıt verdi.';
  }

  @override
  String get infoUnexpectedResponse => 'GitHub\'dan beklenmeyen yanıt alındı.';

  @override
  String get infoNoRelease => 'GitHub herhangi bir sürüm bildirmedi.';

  @override
  String get infoTimeout => 'GitHub bağlantısı zaman aşımına uğradı.';

  @override
  String get infoNoNetwork => 'Ağ bağlantısı yok.';

  @override
  String get infoGenericError => 'Güncellemeler denetlenemedi.';

  @override
  String get safetyEmergencyRevertHint =>
      'Hemen iptal edip geri almak için ekranı kapatın (Güç tuşu)';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Onaylanmazsa $seconds sn içinde otomatik geri alınacak';
  }
}
