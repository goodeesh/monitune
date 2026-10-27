// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Отмена';

  @override
  String get commonDone => 'Готово';

  @override
  String get commonSave => 'Сохранить';

  @override
  String get commonClose => 'Закрыть';

  @override
  String get commonRevert => 'Вернуть';

  @override
  String get commonReset => 'Сбросить';

  @override
  String get commonLearnMore => 'Подробнее';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonContinue => 'Продолжить';

  @override
  String get commonApply => 'Применить';

  @override
  String get commonGrant => 'Предоставить';

  @override
  String get commonOk => 'ОК';

  @override
  String get commonFailed => 'Сбой';

  @override
  String get commonEnabled => 'Включено';

  @override
  String get commonDisabled => 'Отключено';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · проверить обновления';
  }

  @override
  String get homeHeroTitle => 'Настройте экран для любого монитора';

  @override
  String get homeStatusPermanentAccessActive => 'Постоянный доступ активен';

  @override
  String get homeStatusPrivilegedAccessReady =>
      'Привилегированный доступ готов';

  @override
  String get homeStatusSetupRequired => 'Требуется настройка';

  @override
  String get homeApplyTestProfile => 'Применить тестовый профиль';

  @override
  String get homeApplyFailed =>
      'Не удалось применить. Проверьте привилегированный доступ.';

  @override
  String get homeResetDisplayToNative =>
      'Сбросить экран к стандартному для телефона';

  @override
  String get homeSectionQuickSettings => 'Быстрые настройки';

  @override
  String get homeSectionConfigure => 'Конфигурация';

  @override
  String get homeNavDisplayTitle => 'Экран';

  @override
  String get homeNavDisplaySubtitle =>
      'Разрешение, масштаб, внешний вид и безопасный режим лаунчера';

  @override
  String get homeNavAccessTitle => 'Доступ и разрешения';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, постоянный доступ и специальные разрешения';

  @override
  String get homeForceLandscapeTitle =>
      'Принудительный альбомный режим (блокировка)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Принудительно переводит в альбомный режим приложения, заблокированные в портретном (включая лаунчер HyperOS). Применяется при нажатии «Применить тестовый профиль».';

  @override
  String get homeAutoApplyTitle => 'Автоприменение при подключении монитора';

  @override
  String get homeAutoApplyWatching => 'Поиск внешних экранов в фоновом режиме.';

  @override
  String get homeAutoApplyDescription =>
      'Автоматически применять профиль при подключении внешнего экрана.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Затемнять экран телефона';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Снижает яркость экрана до минимума при подключении';

  @override
  String get homePermissionsRequiredDialogTitle => 'Требуются разрешения';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Принудительный альбомный режим можно включить только после предоставления обоих специальных разрешений:';

  @override
  String get homePermissionDisplayOverApps => '• Поверх других приложений';

  @override
  String get homePermissionModifySettings => '• Изменение системных настроек';

  @override
  String get homeGrantOverlay => 'Разрешить наложение';

  @override
  String get homeGrantSettings => 'Разрешить настройки';

  @override
  String get homeVersionCheckForUpdates =>
      'Проверить обновления · Лицензия MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Доступно обновление $version';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Тестовый профиль активен — возврат через $seconds с';
  }

  @override
  String get homeKeepSettings => 'Сохранить настройки';

  @override
  String get homeRevertNow => 'Вернуть сейчас';

  @override
  String get homeStatusConnected => 'Внешний экран подключен';

  @override
  String get homeStatusNotDetected => 'Внешний экран не обнаружен';

  @override
  String get homeStatusDisconnected => 'Отключено';

  @override
  String get homeWatcherActive => 'Служба мониторинга активна';

  @override
  String get homeWatcherStopped => 'Служба мониторинга остановлена';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Автоприменение профиля при подключении';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height при $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Тестовый профиль (15 с)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Автоматический возврат через $seconds с, если не подтверждено';
  }

  @override
  String get homeScreenOffHint =>
      'Выключите экран (кнопка питания), чтобы мгновенно отменить и вернуть настройки';

  @override
  String get homeOrientationLockActiveSummary =>
      'Блокировка ориентации активна. Главный экран и недавние приложения остаются в альбомном режиме, пока она включена.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Для принудительного альбомного режима требуются разрешения «Поверх других приложений» и «Изменение системных настроек» для MoniTune. Предоставьте их и повторите попытку.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Не удалось применить блокировку альбомной ориентации.';

  @override
  String get displayTitle => 'Экран';

  @override
  String get displaySectionTargetResolution => 'Целевое разрешение';

  @override
  String get displaySectionDesktopUiScaling => 'Масштабирование рабочего стола';

  @override
  String get displaySectionBehaviour => 'Поведение';

  @override
  String get displaySectionAppearance => 'Внешний вид';

  @override
  String get displaySectionLanguage => 'Язык';

  @override
  String get displaySectionPresets => 'Готовые профили экрана';

  @override
  String get displaySectionCustomResolution => 'Пользовательское разрешение';

  @override
  String get displaySectionUiScaling => 'Масштабирование интерфейса';

  @override
  String get displaySectionLauncherOrientation => 'Лаунчер и ориентация';

  @override
  String get displayDiagResolution => 'Разрешение';

  @override
  String get displayDiagDensity => 'Плотность';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Поворот';

  @override
  String get displayDiagExternalDisplay => 'Внешний экран';

  @override
  String get displayDiagNoneConnected => 'Не подключен';

  @override
  String get displayDiagCustomProfile => 'Пользовательский профиль';

  @override
  String get displayDiagActive => 'Активен';

  @override
  String get displayDiagNotApplied => 'Не применен';

  @override
  String get displayRotationLandscape90 => 'Альбомная (90°)';

  @override
  String get displayRotationPortrait180 => 'Портретная перевернутая (180°)';

  @override
  String get displayRotationLandscape270 => 'Альбомная перевернутая (270°)';

  @override
  String get displayRotationPortrait0 => 'Портретная стандартная (0°)';

  @override
  String get displayPreset1080p => '1080p Full HD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'Ультраширокий 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'Ультраширокий (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'Ультраширокий (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => 'Стандартный экран телефона';

  @override
  String get displayPresetNativeShort => 'Родное';

  @override
  String get displayPresetCustom => 'Пользовательское разрешение…';

  @override
  String get displayPresetCustomShort => 'Свое';

  @override
  String get displayWidthPx => 'Ширина (пикс)';

  @override
  String get displayHeightPx => 'Высота (пикс)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Область рендеринга: $width × $height пикселей';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Масштаб $scale%';
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
      '100% дает родную плотность интерфейса ПК без увеличения мобильных виджетов.';

  @override
  String get displayKeepUiDensityTitle =>
      'Сохранять плотность интерфейса Android (защита лаунчера)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Применяет разрешение, не изменяя плотность Android, благодаря чему значки на рабочем столе MIUI/HyperOS остаются на своих местах.';

  @override
  String get displayLauncherSafeMode => 'Безопасный режим лаунчера';

  @override
  String get displayLauncherSafeModeDesc =>
      'Сохраняет сетку значков лаунчера MIUI/HyperOS нетронутой';

  @override
  String get displayForceLandscape => 'Принудительный альбомный режим';

  @override
  String get displayForceLandscapeDesc =>
      'Предотвращает автоматический возврат лаунчера в портретный режим';

  @override
  String get displayMiuiDetectedTitle => 'Обнаружен лаунчер HyperOS / MIUI';

  @override
  String get displayMiuiDetectedMessage =>
      'Изменение плотности Android может нарушить порядок значков на главном экране и разбросать приложения по другим страницам. Включите «Сохранять плотность интерфейса Android» выше, чтобы предотвратить это — разрешение рабочего стола и дублирование экрана не изменятся.';

  @override
  String get displayMiuiDetectedTip =>
      'Совет: также включите Настройки → Главный экран → «Заблокировать макет главного экрана».';

  @override
  String get displayForceLandscapeTitle => 'Принудительный альбомный режим';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Включено — применяется при нажатии «Применить тестовый профиль» (Главная).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Переключается на главном экране. Требуются оба разрешения ориентации.';

  @override
  String get displayAutoResetOnExitTitle => 'Автосброс разрешения при выходе';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Возвращает стандартное разрешение телефона после завершения работы.';

  @override
  String get displayMaterialYouTitle => 'Цвета Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Используется палитра ваших обоев';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Используется выбранный акцент';

  @override
  String get displayUseWallpaperTitle => 'Использовать цвета обоев';

  @override
  String get displayUseWallpaperChecking =>
      'Проверка поддержки вашей версии Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Применяет выразительную палитру Material 3, сгенерированную на основе ваших обоев.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Требуется Android 12 или новее. Выберите акцентный цвет ниже.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Цвета обоев поддерживаются на Android 12 и более новых версиях.';

  @override
  String get displayAccent => 'Акцент';

  @override
  String get displayAccentColorSemantics => 'Акцентный цвет';

  @override
  String get displayPalette => 'Палитра';

  @override
  String get displayPaletteVibrant => 'Яркая';

  @override
  String get displayPaletteFidelity => 'Точная';

  @override
  String get displayPaletteExpressive => 'Выразительная';

  @override
  String get displayPaletteTonalSpot => 'Тональный акцент';

  @override
  String get displayPaletteNeutral => 'Нейтральная';

  @override
  String get displayPaletteContent => 'По контенту';

  @override
  String get displayPaletteDescription =>
      'Яркая делает акцент насыщенным, Точная сохраняет исходный цвет, а Выразительная позволяет Material 3 гармонично комбинировать оттенки для свежего вида.';

  @override
  String get displayContrast => 'Контрастность';

  @override
  String get displayContrastBoost => 'Повышение контрастности';

  @override
  String get displayContrastBoosted => 'Повышенная';

  @override
  String get displayContrastStandard => 'Стандартная';

  @override
  String get displayContrastDescription =>
      'Повышенная контрастность улучшает читаемость текста и интерфейса — полезно при очень светлых обоях или на большом мониторе издалека.';

  @override
  String get displayLanguage => 'Язык';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Системный по умолчанию ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Системный по умолчанию';

  @override
  String get accessTitle => 'Доступ и разрешения';

  @override
  String get accessSectionPrivileged => 'Привилегированный доступ';

  @override
  String get accessSectionSpecial => 'Специальные разрешения';

  @override
  String get accessSectionBackground => 'Фоновый режим';

  @override
  String get accessForceLandscapeHint =>
      'Для принудительного альбомного режима требуются оба этих разрешения.';

  @override
  String get accessPermDisplayOverApps => 'Поверх других приложений';

  @override
  String get accessPermModifySettings => 'Изменение системных настроек';

  @override
  String get accessPermBatteryOptimization =>
      'Исключение из оптимизации батареи';

  @override
  String get accessPermNotifications => 'Уведомления (служба автоприменения)';

  @override
  String get accessPermanentTitle => 'Постоянный доступ активен';

  @override
  String get accessPermanentSubtitle => 'Работает без Shizuku, ADB и Wi-Fi.';

  @override
  String get accessShizukuActiveTitle =>
      'Привилегированный доступ Shizuku активен';

  @override
  String get accessShizukuActiveSubtitle =>
      'Предоставьте постоянный доступ один раз, чтобы в дальнейшем обходиться без Shizuku.';

  @override
  String get accessRootActiveTitle => 'Доступ Root (su) доступен';

  @override
  String get accessRootActiveSubtitle =>
      'Изменение параметров экрана будет выполняться через root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Обнаружен Shizuku — требуется разрешение';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Авторизуйте один раз, затем предоставьте постоянный доступ.';

  @override
  String get accessNoAccessTitle => 'Нет привилегированного доступа';

  @override
  String get accessNoAccessSubtitle =>
      'Запустите Shizuku через беспроводную отладку или используйте root для включения изменений.';

  @override
  String get accessAuthorizeShizuku => 'Авторизовать через Shizuku';

  @override
  String get accessShizukuRequested => 'Запрошено разрешение Shizuku.';

  @override
  String get accessGrantPermanent =>
      'Предоставить постоянный доступ (без Shizuku в дальнейшем)';

  @override
  String get accessPermanentGranted =>
      'Постоянный доступ к экрану успешно предоставлен!';

  @override
  String get accessPermanentFailed =>
      'Не удалось предоставить. Shizuku запущен и авторизован?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Запись безопасных настроек (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Служба Shizuku';

  @override
  String get accessPrivilegeRoot => 'Права Root';

  @override
  String get accessPrivilegeOverlay => 'Поверх других приложений';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Изменение системных настроек';

  @override
  String get accessPrivilegeNotifications => 'Уведомления';

  @override
  String get accessPrivilegeBatteryOptimization => 'Оптимизация батареи';

  @override
  String get accessStatusGranted => 'Предоставлено';

  @override
  String get accessStatusMissing => 'Отсутствует';

  @override
  String get accessStatusNotRunning => 'Не запущено';

  @override
  String get accessStatusRequired => 'Обязательно';

  @override
  String get accessAdbInstruction =>
      'Выполните команду ADB с компьютера, если Shizuku недоступен.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingBack => 'Назад';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingGetStarted => 'Начать';

  @override
  String get onboardingWelcomeTitle => 'Добро пожаловать в MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Настройте отображение Android для любого внешнего монитора. Задавайте нужное разрешение и масштаб, сохраняйте порядок на главном экране и принудительно включайте широкоэкранный альбомный режим — в одном компактном приложении.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Предустановки разрешения и масштабирования UI';

  @override
  String get onboardingWelcomeBullet2 =>
      'Безопасный режим для лаунчеров MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 => 'Цвета, гармонирующие с вашими обоями';

  @override
  String get onboardingProblemTitle => 'Ограничения системы Android';

  @override
  String get onboardingProblemBody =>
      'При дублировании экрана на монитор Android сам задает разрешение, плотность и ориентацию — обычные приложения не могут их изменить.';

  @override
  String get onboardingProblemBullet1 =>
      'Изменение плотности на Xiaomi MIUI/HyperOS может раскидать значки главного экрана по другим страницам.';

  @override
  String get onboardingProblemBullet2 =>
      'Нет встроенного способа убрать черные полосы или выбрать широкоформатный размер.';

  @override
  String get onboardingWhyTitle => 'Зачем нужен Shizuku или Root?';

  @override
  String get onboardingWhyBody =>
      'Операции, выполняемые MoniTune, требуют разрешения WRITE_SECURE_SETTINGS, которое Android предоставляет только привилегированным приложениям.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku выполняет команды с привилегиями, выданными через беспроводную отладку — root не требуется.';

  @override
  String get onboardingWhyBullet2 =>
      'Если ваше устройство уже рутировано, MoniTune может использовать root напрямую.';

  @override
  String get onboardingWhyBullet3 =>
      'Полная прозрачность: MoniTune использует этот доступ исключительно для изменения размера экрана, плотности и ориентации.';

  @override
  String get onboardingPathsTitle => 'Выберите способ настройки';

  @override
  String get onboardingPathsBody =>
      'Оба способа открывают абсолютно одинаковый функционал.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (без Root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Рекомендуется для большинства телефонов. Требуется единоразовая настройка через беспроводную отладку.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Если устройство уже рутировано, MoniTune определит это автоматически.';

  @override
  String get onboardingShizukuStepsTitle => 'Настройка Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Установите Shizuku и запустите его один раз. MoniTune подскажет дальнейшие действия.';

  @override
  String get onboardingShizukuStep1 =>
      'Установите Shizuku с официального сайта или через GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Откройте Shizuku и запустите через «Беспроводная отладка» (Android 11+) или ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Вернитесь в MoniTune и нажмите «Авторизовать через Shizuku».';

  @override
  String get onboardingShizukuGuideButton =>
      'Открыть инструкцию по настройке Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Однократная настройка';

  @override
  String get onboardingOneTimeBody =>
      'Пока доступен Shizuku (или root), MoniTune может навсегда предоставить себе разрешение WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Предоставьте один раз — после этого MoniTune работает без Shizuku, без ADB и без Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'Разрешение сохраняется даже после перезагрузки устройства.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku должен быть запущен только в момент предоставления.';

  @override
  String get onboardingSafetyTitle => 'Встроенная безопасность';

  @override
  String get onboardingSafetyBody =>
      'Изменение размера экрана может временно сделать его нечитаемым, поэтому в MoniTune предусмотрены надежные средства защиты.';

  @override
  String get onboardingSafetyBullet1 =>
      'Тестовый режим автоматически откатывается через 15 секунд, если вы не нажмете «Сохранить настройки».';

  @override
  String get onboardingSafetyBullet2 =>
      'Выключение экрана мгновенно восстанавливает стандартное разрешение телефона.';

  @override
  String get onboardingSafetyBullet3 =>
      'Безопасный режим пропускает изменение плотности, чтобы значки MIUI/HyperOS оставались на своих местах.';

  @override
  String get onboardingReadyTitle => 'Все готово';

  @override
  String get onboardingReadyBody =>
      'Настройте привилегированный доступ и два специальных разрешения далее. Затем выберите разрешение и масштаб и протестируйте их с 15-секундным безопасным возвратом.';

  @override
  String get onboardingReadyBullet1 =>
      'Автоприменение: применяет профиль в момент подключения монитора и сбрасывает при отключении.';

  @override
  String get onboardingReadyBullet2 =>
      'Принудительный альбомный режим переопределяет ориентацию любых приложений — включая лаунчер HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'На Android 12+ MoniTune может подстраивать цвета под ваши обои (Material You).';

  @override
  String get onboardingReadyButton => 'Настроить доступ сейчас';

  @override
  String infoVersion(String version) {
    return 'Версия $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Версия $version · сборка $buildNumber';
  }

  @override
  String get infoChecking => 'Проверка…';

  @override
  String get infoCheckingForUpdates => 'Проверка обновлений…';

  @override
  String get infoCheckForUpdates => 'Проверить обновления';

  @override
  String get infoDistributedVia => 'Распространяется через GitHub Releases';

  @override
  String get infoMitLicense => 'Лицензия MIT · открытый исходный код';

  @override
  String get infoPrivacyNotice =>
      'Данные не покидают устройство, за исключением проверки обновлений';

  @override
  String get infoOpenReleasePage => 'Открыть страницу релиза';

  @override
  String get infoOpenReleases => 'Открыть GitHub Releases';

  @override
  String get infoNoBrowser => 'Веб-браузер не найден.';

  @override
  String infoUpdateAvailable(String version) {
    return 'Доступна версия MoniTune $version.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Доступна новая версия $version';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'У вас установлена последняя версия ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'У вас последняя версия';

  @override
  String get infoUpdateFailed => 'Не удалось проверить обновления';

  @override
  String get infoRateLimit =>
      'GitHub временно ограничил запросы из этой сети. Повторите попытку через пару минут.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub ответил кодом состояния $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Неожиданный ответ от GitHub.';

  @override
  String get infoNoRelease => 'GitHub не сообщил о наличии релизов.';

  @override
  String get infoTimeout => 'Время ожидания ответа GitHub истекло.';

  @override
  String get infoNoNetwork => 'Нет сетевого подключения.';

  @override
  String get infoGenericError => 'Не удалось проверить наличие обновлений.';

  @override
  String get safetyEmergencyRevertHint =>
      'Выключите экран (кнопка питания), чтобы мгновенно отменить и вернуть настройки';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Автоматический возврат через $seconds с, если не подтверждено';
  }
}
