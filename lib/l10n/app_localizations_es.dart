// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonDone => 'Listo';

  @override
  String get commonSave => 'Guardar';

  @override
  String get commonClose => 'Cerrar';

  @override
  String get commonRevert => 'Revertir';

  @override
  String get commonReset => 'Restablecer';

  @override
  String get commonLearnMore => 'Más información';

  @override
  String get commonBack => 'Atrás';

  @override
  String get commonContinue => 'Continuar';

  @override
  String get commonApply => 'Aplicar';

  @override
  String get commonGrant => 'Conceder';

  @override
  String get commonOk => 'Aceptar';

  @override
  String get commonFailed => 'Error';

  @override
  String get commonEnabled => 'Activado';

  @override
  String get commonDisabled => 'Desactivado';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · buscar actualizaciones';
  }

  @override
  String get homeHeroTitle => 'Adapta tu pantalla a cualquier monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Acceso permanente activo';

  @override
  String get homeStatusPrivilegedAccessReady => 'Acceso con privilegios listo';

  @override
  String get homeStatusSetupRequired => 'Configuración requerida';

  @override
  String get homeApplyTestProfile => 'Aplicar perfil de prueba';

  @override
  String get homeApplyFailed =>
      'Error al aplicar. Comprueba el acceso con privilegios.';

  @override
  String get homeResetDisplayToNative =>
      'Restablecer pantalla a los valores del teléfono';

  @override
  String get homeSectionQuickSettings => 'Ajustes rápidos';

  @override
  String get homeSectionConfigure => 'Configurar';

  @override
  String get homeNavDisplayTitle => 'Pantalla';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolución, escala, apariencia y modo seguro del iniciador';

  @override
  String get homeNavAccessTitle => 'Acceso y permisos';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, acceso permanente y permisos especiales';

  @override
  String get homeForceLandscapeTitle =>
      'Forzar modo horizontal (bloqueo de duplicación)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Fuerza el modo horizontal sobre apps bloqueadas en vertical (incluido el iniciador HyperOS). Se aplica al tocar Aplicar perfil de prueba.';

  @override
  String get homeAutoApplyTitle =>
      'Aplicar automáticamente al conectar monitor';

  @override
  String get homeAutoApplyWatching =>
      'Buscando pantallas externas en segundo plano.';

  @override
  String get homeAutoApplyDescription =>
      'Aplica tu perfil automáticamente cuando se conecte una pantalla externa.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Atenuar pantalla del teléfono';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Reduce el brillo al mínimo al conectar';

  @override
  String get homePermissionsRequiredDialogTitle => 'Permisos necesarios';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Forzar horizontal solo se puede habilitar si se conceden ambos permisos especiales:';

  @override
  String get homePermissionDisplayOverApps =>
      '• Mostrar sobre otras aplicaciones';

  @override
  String get homePermissionModifySettings => '• Modificar ajustes del sistema';

  @override
  String get homeGrantOverlay => 'Conceder superposición';

  @override
  String get homeGrantSettings => 'Conceder ajustes';

  @override
  String get homeVersionCheckForUpdates =>
      'Buscar actualizaciones · Licencia MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Actualización $version disponible';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Perfil de prueba activo — se revertirá en $seconds s';
  }

  @override
  String get homeKeepSettings => 'Mantener ajustes';

  @override
  String get homeRevertNow => 'Revertir ahora';

  @override
  String get homeStatusConnected => 'Pantalla externa conectada';

  @override
  String get homeStatusNotDetected =>
      'No se ha detectado ninguna pantalla externa';

  @override
  String get homeStatusDisconnected => 'Desconectado';

  @override
  String get homeWatcherActive => 'Monitor de pantalla activo';

  @override
  String get homeWatcherStopped => 'Monitor de pantalla detenido';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Aplicar perfil automáticamente al conectar';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height al $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Perfil de prueba (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Se revertirá automáticamente en $seconds s si no se confirma';
  }

  @override
  String get homeScreenOffHint =>
      'Apaga la pantalla (botón de encendido) para cancelar y revertir al instante';

  @override
  String get homeOrientationLockActiveSummary =>
      'Bloqueo horizontal activo. La pantalla de inicio y recientes se mantendrán en horizontal mientras esté activado.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Forzar horizontal necesita los permisos \"Mostrar sobre otras aplicaciones\" y \"Modificar ajustes del sistema\" para MoniTune. Concédelos y vuelve a intentarlo.';

  @override
  String get homeOrientationLockFailedSummary =>
      'No se pudo aplicar el bloqueo en modo horizontal.';

  @override
  String get displayTitle => 'Pantalla';

  @override
  String get displaySectionTargetResolution => 'Resolución de destino';

  @override
  String get displaySectionDesktopUiScaling =>
      'Escala de interfaz de escritorio';

  @override
  String get displaySectionBehaviour => 'Comportamiento';

  @override
  String get displaySectionAppearance => 'Apariencia';

  @override
  String get displaySectionLanguage => 'Idioma';

  @override
  String get displaySectionPresets => 'Preajustes de pantalla';

  @override
  String get displaySectionCustomResolution => 'Resolución personalizada';

  @override
  String get displaySectionUiScaling => 'Escala de interfaz';

  @override
  String get displaySectionLauncherOrientation => 'Iniciador y orientación';

  @override
  String get displayDiagResolution => 'Resolución';

  @override
  String get displayDiagDensity => 'Densidad';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotación';

  @override
  String get displayDiagExternalDisplay => 'Pantalla externa';

  @override
  String get displayDiagNoneConnected => 'Ninguna conectada';

  @override
  String get displayDiagCustomProfile => 'Perfil personalizado';

  @override
  String get displayDiagActive => 'Activo';

  @override
  String get displayDiagNotApplied => 'No aplicado';

  @override
  String get displayRotationLandscape90 => 'Horizontal (90°)';

  @override
  String get displayRotationPortrait180 => 'Vertical invertido (180°)';

  @override
  String get displayRotationLandscape270 => 'Horizontal inverso (270°)';

  @override
  String get displayRotationPortrait0 => 'Vertical estándar (0°)';

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
  String get displayPresetNative => 'Pantalla nativa del teléfono';

  @override
  String get displayPresetNativeShort => 'Nativa';

  @override
  String get displayPresetCustom => 'Resolución personalizada…';

  @override
  String get displayPresetCustomShort => 'Personalizada';

  @override
  String get displayWidthPx => 'Anchura (px)';

  @override
  String get displayHeightPx => 'Altura (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Lienzo de destino: $width × $height píxeles';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Factor de escala del $scale%';
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
      'El 100% proporciona la densidad nativa de un PC sin aumentar los widgets del móvil.';

  @override
  String get displayKeepUiDensityTitle =>
      'Mantener densidad de interfaz Android (modo seguro)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Aplica la resolución sin modificar la densidad de Android, preservando la cuadrícula de iconos del iniciador MIUI/HyperOS.';

  @override
  String get displayLauncherSafeMode => 'Modo seguro del iniciador';

  @override
  String get displayLauncherSafeModeDesc =>
      'Mantiene intacta la cuadrícula de iconos del iniciador MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Forzar horizontal';

  @override
  String get displayForceLandscapeDesc =>
      'Evita que el iniciador vuelva automáticamente al modo vertical';

  @override
  String get displayMiuiDetectedTitle => 'Iniciador HyperOS / MIUI detectado';

  @override
  String get displayMiuiDetectedMessage =>
      'Cambiar la densidad de Android puede desorganizar los iconos de la pantalla de inicio y repartirlos entre varias páginas. Activa \"Mantener densidad de interfaz Android\" arriba para evitarlo; la resolución del escritorio y la duplicación no se verán afectadas.';

  @override
  String get displayMiuiDetectedTip =>
      'Consejo: activa también Ajustes → Pantalla de inicio → \"Bloquear diseño de la pantalla de inicio\".';

  @override
  String get displayForceLandscapeTitle => 'Forzar horizontal';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Activado — se aplicará al pulsar Aplicar perfil de prueba (Inicio).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Actívalo desde la pantalla de Inicio. Requiere ambos permisos de orientación.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Restablecer resolución automáticamente al salir';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Restaura la resolución predeterminada del teléfono al finalizar.';

  @override
  String get displayMaterialYouTitle => 'Colores de Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Siguiendo la paleta del fondo de pantalla';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Usando el color de contraste seleccionado';

  @override
  String get displayUseWallpaperTitle => 'Usar colores del fondo de pantalla';

  @override
  String get displayUseWallpaperChecking =>
      'Comprobando compatibilidad de tu versión de Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Aplica la paleta expresiva de Material 3 basada en tu fondo de pantalla.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Requiere Android 12 o superior. Elige un color de acento abajo.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Los colores basados en el fondo requieren Android 12 o superior.';

  @override
  String get displayAccent => 'Acento';

  @override
  String get displayAccentColorSemantics => 'Color de acento';

  @override
  String get displayPalette => 'Paleta';

  @override
  String get displayPaletteVibrant => 'Vibrante';

  @override
  String get displayPaletteFidelity => 'Exacta';

  @override
  String get displayPaletteExpressive => 'Expresiva';

  @override
  String get displayPaletteTonalSpot => 'Toque tonal';

  @override
  String get displayPaletteNeutral => 'Neutra';

  @override
  String get displayPaletteContent => 'Contenido';

  @override
  String get displayPaletteDescription =>
      'Vibrante mantiene los tonos intensos, Exacta se ajusta fielmente al color elegido y Expresiva permite a Material 3 variar los matices para un diseño distintivo.';

  @override
  String get displayContrast => 'Contraste';

  @override
  String get displayContrastBoost => 'Aumento de contraste';

  @override
  String get displayContrastBoosted => 'Aumentado';

  @override
  String get displayContrastStandard => 'Estándar';

  @override
  String get displayContrastDescription =>
      'Aumentado mejora la legibilidad del texto y los elementos de interfaz, ideal con fondos muy claros o en monitores grandes a distancia.';

  @override
  String get displayLanguage => 'Idioma';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Predeterminado del sistema ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Predeterminado del sistema';

  @override
  String get accessTitle => 'Acceso y permisos';

  @override
  String get accessSectionPrivileged => 'Acceso con privilegios';

  @override
  String get accessSectionSpecial => 'Permisos especiales';

  @override
  String get accessSectionBackground => 'Segundo plano';

  @override
  String get accessForceLandscapeHint =>
      'Forzar horizontal necesita ambos permisos.';

  @override
  String get accessPermDisplayOverApps => 'Mostrar sobre otras aplicaciones';

  @override
  String get accessPermModifySettings => 'Modificar ajustes del sistema';

  @override
  String get accessPermBatteryOptimization =>
      'Exención de optimización de batería';

  @override
  String get accessPermNotifications =>
      'Notificaciones (servicio de autoaplicación)';

  @override
  String get accessPermanentTitle => 'Acceso permanente activo';

  @override
  String get accessPermanentSubtitle => 'Funciona sin Shizuku, ADB ni Wi-Fi.';

  @override
  String get accessShizukuActiveTitle =>
      'Acceso con privilegios de Shizuku activo';

  @override
  String get accessShizukuActiveSubtitle =>
      'Concede acceso permanente una vez para prescindir de Shizuku en adelante.';

  @override
  String get accessRootActiveTitle => 'Acceso Root (su) disponible';

  @override
  String get accessRootActiveSubtitle =>
      'Los cambios de pantalla se aplicarán mediante root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku detectado — permiso necesario';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autoriza una vez y luego concede el acceso permanente.';

  @override
  String get accessNoAccessTitle => 'Sin acceso con privilegios';

  @override
  String get accessNoAccessSubtitle =>
      'Inicia Shizuku mediante depuración inalámbrica o usa root para permitir cambios.';

  @override
  String get accessAuthorizeShizuku => 'Autorizar con Shizuku';

  @override
  String get accessShizukuRequested => 'Permiso de Shizuku solicitado.';

  @override
  String get accessGrantPermanent =>
      'Conceder acceso permanente (sin Shizuku después)';

  @override
  String get accessPermanentGranted =>
      '¡Acceso permanente a pantalla concedido con éxito!';

  @override
  String get accessPermanentFailed =>
      'Fallo al conceder. ¿Está Shizuku ejecutándose y autorizado?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Escribir ajustes seguros (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Servicio Shizuku';

  @override
  String get accessPrivilegeRoot => 'Privilegio Root';

  @override
  String get accessPrivilegeOverlay => 'Mostrar sobre otras aplicaciones';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modificar ajustes del sistema';

  @override
  String get accessPrivilegeNotifications => 'Notificaciones';

  @override
  String get accessPrivilegeBatteryOptimization => 'Optimización de batería';

  @override
  String get accessStatusGranted => 'Concedido';

  @override
  String get accessStatusMissing => 'Pendiente';

  @override
  String get accessStatusNotRunning => 'No ejecutándose';

  @override
  String get accessStatusRequired => 'Requerido';

  @override
  String get accessAdbInstruction =>
      'Ejecuta el comando ADB desde un ordenador si Shizuku no está disponible.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Saltar';

  @override
  String get onboardingBack => 'Atrás';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get onboardingGetStarted => 'Empezar';

  @override
  String get onboardingWelcomeTitle => 'Te damos la bienvenida a MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Ajusta la salida de pantalla de tu Android para cualquier monitor externo. Define la resolución y escala deseadas, mantén tu pantalla de inicio ordenada y fuerza el modo horizontal panorámico, todo desde una aplicación ligera.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Preajustes de resolución y escala de interfaz';

  @override
  String get onboardingWelcomeBullet2 =>
      'Modo seguro para iniciadores MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Colores armonizados con tu fondo de pantalla';

  @override
  String get onboardingProblemTitle => 'Android impone restricciones';

  @override
  String get onboardingProblemBody =>
      'Al duplicar la pantalla en un monitor, Android escoge automáticamente la resolución, densidad y rotación, y las aplicaciones estándar no pueden modificarlas.';

  @override
  String get onboardingProblemBullet1 =>
      'Modificar la densidad en dispositivos Xiaomi MIUI/HyperOS puede dispersar los iconos de tu pantalla de inicio en otras páginas.';

  @override
  String get onboardingProblemBullet2 =>
      'No hay opción nativa para quitar barras negras ni para fijar un formato panorámico.';

  @override
  String get onboardingWhyTitle => '¿Por qué se necesita Shizuku o Root?';

  @override
  String get onboardingWhyBody =>
      'Las acciones que realiza MoniTune requieren el permiso WRITE_SECURE_SETTINGS, que Android solo concede a aplicaciones con privilegios especiales.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku ejecuta comandos con los privilegios concedidos mediante depuración inalámbrica, sin necesidad de root.';

  @override
  String get onboardingWhyBullet2 =>
      'Si tu dispositivo ya tiene permisos de root, MoniTune puede utilizarlos directamente.';

  @override
  String get onboardingWhyBullet3 =>
      'Total transparencia: MoniTune solo utiliza este acceso para ajustar el tamaño de pantalla, la densidad y la orientación.';

  @override
  String get onboardingPathsTitle => 'Elige tu método de acceso';

  @override
  String get onboardingPathsBody =>
      'Cualquiera de las dos opciones desbloquea las mismas funciones.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (sin root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Recomendado para la mayoría de teléfonos. Solo requiere una configuración inicial mediante depuración inalámbrica.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Si tu dispositivo ya está rooteado, MoniTune lo detectará de forma automática.';

  @override
  String get onboardingShizukuStepsTitle => 'Configuración de Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Instala Shizuku e inícialo una vez. MoniTune te guiará en los pasos siguientes.';

  @override
  String get onboardingShizukuStep1 =>
      'Instala Shizuku desde su sitio web oficial o desde GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Abre Shizuku e inícialo a través de Depuración inalámbrica (Android 11+) o ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Vuelve a MoniTune y pulsa \"Autorizar con Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Abrir guía de configuración de Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Configuración única';

  @override
  String get onboardingOneTimeBody =>
      'Mientras Shizuku (o root) esté activo, MoniTune puede concederse a sí mismo el permiso permanente WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Concédelo una sola vez; después, MoniTune funcionará sin Shizuku, sin ADB y sin conexión Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'La autorización persiste tras reiniciar el dispositivo.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku solo necesita estar en ejecución en ese preciso instante.';

  @override
  String get onboardingSafetyTitle => 'Seguridad integrada';

  @override
  String get onboardingSafetyBody =>
      'Modificar el tamaño de pantalla puede dejarla temporalmente ilegible; por eso MoniTune incorpora protección preventiva.';

  @override
  String get onboardingSafetyBullet1 =>
      'El modo de prueba se revierte a los 15 segundos si no confirmas en \"Mantener ajustes\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Apagar la pantalla restaura de inmediato la resolución nativa de tu teléfono.';

  @override
  String get onboardingSafetyBullet3 =>
      'El modo seguro omite los cambios de densidad para que los iconos de MIUI/HyperOS no se muevan.';

  @override
  String get onboardingReadyTitle => 'Todo listo';

  @override
  String get onboardingReadyBody =>
      'Configura el acceso con privilegios y los dos permisos especiales a continuación. Luego elige la resolución y escala deseadas, y pruébalas con el temporizador de seguridad de 15 segundos antes de guardarlas.';

  @override
  String get onboardingReadyBullet1 =>
      'Autoaplicación: aplica tu perfil al conectar el monitor y restablece al desconectar.';

  @override
  String get onboardingReadyBullet2 =>
      'Forzar horizontal se superpone a cualquier app, incluido el iniciador HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'En Android 12+, MoniTune puede adoptar los colores de tu fondo de pantalla (Material You).';

  @override
  String get onboardingReadyButton => 'Configurar accesos ahora';

  @override
  String infoVersion(String version) {
    return 'Versión $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versión $version · compilación $buildNumber';
  }

  @override
  String get infoChecking => 'Comprobando…';

  @override
  String get infoCheckingForUpdates => 'Buscando actualizaciones…';

  @override
  String get infoCheckForUpdates => 'Buscar actualizaciones';

  @override
  String get infoDistributedVia => 'Distribuido a través de GitHub Releases';

  @override
  String get infoMitLicense => 'Licencia MIT · código fuente abierto';

  @override
  String get infoPrivacyNotice =>
      'Ningún dato sale de tu dispositivo, salvo al buscar actualizaciones';

  @override
  String get infoOpenReleasePage => 'Abrir página de versiones';

  @override
  String get infoOpenReleases => 'Abrir GitHub Releases';

  @override
  String get infoNoBrowser => 'No se encontró ningún navegador web.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version ya está disponible.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nueva versión $version disponible';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Ya tienes instalada la versión más reciente ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'La app está al día';

  @override
  String get infoUpdateFailed => 'Error al buscar actualizaciones';

  @override
  String get infoRateLimit =>
      'GitHub está limitando las peticiones de esta red temporalmente. Inténtalo de nuevo en unos minutos.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub respondió con el estado $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Respuesta inesperada de GitHub.';

  @override
  String get infoNoRelease => 'GitHub no indicó ninguna versión publicada.';

  @override
  String get infoTimeout => 'Se agotó el tiempo de espera de GitHub.';

  @override
  String get infoNoNetwork => 'Sin conexión de red.';

  @override
  String get infoGenericError =>
      'No se pudieron comprobar las actualizaciones.';

  @override
  String get safetyEmergencyRevertHint =>
      'Apaga la pantalla (botón de encendido) para cancelar y revertir al instante';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Se revertirá automáticamente en $seconds s si no se confirma';
  }
}
