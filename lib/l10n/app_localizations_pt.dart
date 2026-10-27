// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonDone => 'Concluído';

  @override
  String get commonSave => 'Salvar';

  @override
  String get commonClose => 'Fechar';

  @override
  String get commonRevert => 'Reverter';

  @override
  String get commonReset => 'Redefinir';

  @override
  String get commonLearnMore => 'Saiba mais';

  @override
  String get commonBack => 'Voltar';

  @override
  String get commonContinue => 'Continuar';

  @override
  String get commonApply => 'Aplicar';

  @override
  String get commonGrant => 'Conceder';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Falhou';

  @override
  String get commonEnabled => 'Ativado';

  @override
  String get commonDisabled => 'Desativado';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · verificar atualizações';
  }

  @override
  String get homeHeroTitle => 'Ajuste sua tela para qualquer monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Acesso permanente ativo';

  @override
  String get homeStatusPrivilegedAccessReady => 'Acesso privilegiado pronto';

  @override
  String get homeStatusSetupRequired => 'Configuração necessária';

  @override
  String get homeApplyTestProfile => 'Aplicar perfil de teste';

  @override
  String get homeApplyFailed =>
      'Falha ao aplicar. Verifique o acesso privilegiado.';

  @override
  String get homeResetDisplayToNative =>
      'Redefinir tela para o padrão do celular';

  @override
  String get homeSectionQuickSettings => 'Configurações rápidas';

  @override
  String get homeSectionConfigure => 'Configurar';

  @override
  String get homeNavDisplayTitle => 'Tela';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolução, escala, aparência e modo seguro do inicializador';

  @override
  String get homeNavAccessTitle => 'Acesso e permissões';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, acesso permanente e permissões especiais';

  @override
  String get homeForceLandscapeTitle =>
      'Forçar modo paisagem (bloqueio de espelhamento)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Força modo paisagem sobre apps que travam em retrato (incluindo o inicializador HyperOS). Aplicado ao tocar em Aplicar perfil de teste.';

  @override
  String get homeAutoApplyTitle =>
      'Aplicar automaticamente ao conectar monitor';

  @override
  String get homeAutoApplyWatching =>
      'Monitorando telas externas em segundo plano.';

  @override
  String get homeAutoApplyDescription =>
      'Aplica seu perfil automaticamente quando uma tela externa for conectada.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Apagar tela do celular';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Reduz o brilho da tela a zero ao conectar (recomendado para AMOLED)';

  @override
  String get homePermissionsRequiredDialogTitle => 'Permissões necessárias';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'O recurso Forçar modo paisagem só pode ser ativado após conceder ambas as permissões especiais:';

  @override
  String get homePermissionDisplayOverApps => '• Sobrepor a outros apps';

  @override
  String get homePermissionModifySettings =>
      '• Modificar configurações do sistema';

  @override
  String get homeGrantOverlay => 'Conceder sobreposição';

  @override
  String get homeGrantSettings => 'Conceder configurações';

  @override
  String get homeVersionCheckForUpdates =>
      'Verificar atualizações · Licença MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Atualização $version disponível';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Perfil de teste ativo — revertendo em ${seconds}s';
  }

  @override
  String get homeKeepSettings => 'Manter configurações';

  @override
  String get homeRevertNow => 'Reverter agora';

  @override
  String get homeStatusConnected => 'Tela externa conectada';

  @override
  String get homeStatusNotDetected => 'Nenhuma tela externa detectada';

  @override
  String get homeStatusDisconnected => 'Desconectado';

  @override
  String get homeWatcherActive => 'Monitoramento de tela ativo';

  @override
  String get homeWatcherStopped => 'Monitoramento de tela interrompido';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Aplicar perfil automaticamente ao conectar';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height a $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Perfil de teste (15s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Revertendo automaticamente em ${seconds}s a menos que confirmado';
  }

  @override
  String get homeScreenOffHint =>
      'Desligue a tela (botão Liga/Desliga) para cancelar e reverter instantaneamente';

  @override
  String get homeOrientationLockActiveSummary =>
      'Bloqueio de paisagem ativo. A tela inicial e os apps recentes devem permanecer em modo paisagem enquanto estiver ativo.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'O recurso Forçar modo paisagem requer as permissões \"Sobrepor a outros apps\" e \"Modificar configurações do sistema\" para o MoniTune. Conceda-as e tente novamente.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Não foi possível aplicar o bloqueio em modo paisagem.';

  @override
  String get displayTitle => 'Tela';

  @override
  String get displaySectionTargetResolution => 'Resolução de destino';

  @override
  String get displaySectionDesktopUiScaling => 'Escala de interface do desktop';

  @override
  String get displaySectionBehaviour => 'Comportamento';

  @override
  String get displaySectionAppearance => 'Aparência';

  @override
  String get displaySectionLanguage => 'Idioma';

  @override
  String get displaySectionPresets => 'Predefinições de tela';

  @override
  String get displaySectionCustomResolution => 'Resolução personalizada';

  @override
  String get displaySectionUiScaling => 'Escala de interface';

  @override
  String get displaySectionLauncherOrientation => 'Inicializador e orientação';

  @override
  String get displayDiagResolution => 'Resolução';

  @override
  String get displayDiagDensity => 'Densidade';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotação';

  @override
  String get displayDiagExternalDisplay => 'Tela externa';

  @override
  String get displayDiagNoneConnected => 'Nenhuma conectada';

  @override
  String get displayDiagCustomProfile => 'Perfil personalizado';

  @override
  String get displayDiagActive => 'Ativo';

  @override
  String get displayDiagNotApplied => 'Não aplicado';

  @override
  String get displayRotationLandscape90 => 'Paisagem (90°)';

  @override
  String get displayRotationPortrait180 => 'Retrato (180°)';

  @override
  String get displayRotationLandscape270 => 'Paisagem (270°)';

  @override
  String get displayRotationPortrait0 => 'Retrato (0°)';

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
  String get displayPresetNative => 'Tela padrão do celular';

  @override
  String get displayPresetNativeShort => 'Padrão';

  @override
  String get displayPresetCustom => 'Resolução personalizada…';

  @override
  String get displayPresetCustomShort => 'Personalizado';

  @override
  String get displayWidthPx => 'Largura (px)';

  @override
  String get displayHeightPx => 'Altura (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Área de renderização de destino: $width × $height pixels';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Fator de escala de $scale%';
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
      '100% oferece a densidade nativa de PC sem ampliar os widgets do celular.';

  @override
  String get displayKeepUiDensityTitle =>
      'Manter densidade da UI do Android (seguro para o inicializador)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Aplica a resolução, mas não altera a densidade do Android, mantendo a organização dos ícones da tela inicial do MIUI/HyperOS.';

  @override
  String get displayLauncherSafeMode => 'Modo seguro do inicializador';

  @override
  String get displayLauncherSafeModeDesc =>
      'Mantém intacta a grade de ícones do inicializador MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Forçar modo paisagem';

  @override
  String get displayForceLandscapeDesc =>
      'Impede que o inicializador retorne à orientação de retrato';

  @override
  String get displayMiuiDetectedTitle =>
      'Inicializador HyperOS / MIUI detectado';

  @override
  String get displayMiuiDetectedMessage =>
      'Alterar a densidade do Android pode reorganizar os ícones da sua tela inicial e espalhar aplicativos por outras páginas. Ative \"Manter densidade da UI do Android\" acima para evitar isso — a resolução do desktop e o espelhamento não serão afetados.';

  @override
  String get displayMiuiDetectedTip =>
      'Dica: ative também Configurações → Tela inicial → \"Bloquear layout da tela inicial\".';

  @override
  String get displayForceLandscapeTitle => 'Forçar modo paisagem';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Ativado — aplicado ao tocar em Aplicar perfil de teste (Início).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Alterne na tela Início. Requer ambas as permissões de paisagem.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Redefinir resolução automaticamente ao sair';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Restaura a resolução padrão do celular quando terminar.';

  @override
  String get displayMaterialYouTitle => 'Cores do Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Seguindo a paleta do papel de parede';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Usando o destaque selecionado';

  @override
  String get displayUseWallpaperTitle => 'Usar cores do papel de parede';

  @override
  String get displayUseWallpaperChecking =>
      'Verificando suporte da sua versão do Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Aplica a paleta expressiva do Material 3 baseada no seu papel de parede.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Requer o Android 12 ou mais recente. Selecione um destaque abaixo.';

  @override
  String get displayWallpaperAndroid12Required =>
      'As cores do papel de parede requerem o Android 12 ou mais recente.';

  @override
  String get displayAccent => 'Destaque';

  @override
  String get displayAccentColorSemantics => 'Cor de destaque';

  @override
  String get displayPalette => 'Paleta';

  @override
  String get displayPaletteVibrant => 'Vibrante';

  @override
  String get displayPaletteFidelity => 'Exata';

  @override
  String get displayPaletteExpressive => 'Expressiva';

  @override
  String get displayPaletteTonalSpot => 'Ponto tonal';

  @override
  String get displayPaletteNeutral => 'Neutra';

  @override
  String get displayPaletteContent => 'Conteúdo';

  @override
  String get displayPaletteDescription =>
      'Vibrante mantém o tom de destaque vívido, Exata reproduz fielmente a cor, e Expressiva permite ao Material 3 variar os tons para um visual dinâmico.';

  @override
  String get displayContrast => 'Contraste';

  @override
  String get displayContrastBoost => 'Aumento de contraste';

  @override
  String get displayContrastBoosted => 'Aumentado';

  @override
  String get displayContrastStandard => 'Padrão';

  @override
  String get displayContrastDescription =>
      'Aumentado melhora a nitidez do texto e das superfícies — muito útil com papéis de parede claros ou em monitores grandes distantes.';

  @override
  String get displayLanguage => 'Idioma';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Padrão do sistema ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Padrão do sistema';

  @override
  String get accessTitle => 'Acesso e permissões';

  @override
  String get accessSectionPrivileged => 'Acesso privilegiado';

  @override
  String get accessSectionSpecial => 'Permissões especiais';

  @override
  String get accessSectionBackground => 'Segundo plano';

  @override
  String get accessForceLandscapeHint =>
      'O recurso Forçar modo paisagem precisa de ambas as permissões.';

  @override
  String get accessPermDisplayOverApps => 'Sobrepor a outros apps';

  @override
  String get accessPermModifySettings => 'Modificar configurações do sistema';

  @override
  String get accessPermBatteryOptimization =>
      'Isenção de otimização de bateria';

  @override
  String get accessPermNotifications =>
      'Notificações (monitor de aplicação automática)';

  @override
  String get accessPermanentTitle => 'Acesso permanente ativo';

  @override
  String get accessPermanentSubtitle => 'Funciona sem Shizuku, ADB ou Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Acesso privilegiado do Shizuku ativo';

  @override
  String get accessShizukuActiveSubtitle =>
      'Conceda acesso permanente uma vez para executar sem o Shizuku depois.';

  @override
  String get accessRootActiveTitle => 'Acesso Root (su) disponível';

  @override
  String get accessRootActiveSubtitle =>
      'Alterações de tela serão executadas via root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku detectado — permissão necessária';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autorize uma vez e depois conceda o acesso permanente.';

  @override
  String get accessNoAccessTitle => 'Sem acesso privilegiado';

  @override
  String get accessNoAccessSubtitle =>
      'Inicie o Shizuku via depuração sem fio ou use root para habilitar alterações.';

  @override
  String get accessAuthorizeShizuku => 'Autorizar com Shizuku';

  @override
  String get accessShizukuRequested => 'Permissão do Shizuku solicitada.';

  @override
  String get accessGrantPermanent =>
      'Conceder acesso permanente (dispensa o Shizuku depois)';

  @override
  String get accessPermanentGranted => 'Acesso permanente à tela concedido!';

  @override
  String get accessPermanentFailed =>
      'Falha na concessão. O Shizuku está em execução e autorizado?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Gravar configurações seguras';

  @override
  String get accessPrivilegeShizukuService => 'Serviço Shizuku';

  @override
  String get accessPrivilegeRoot => 'Privilégio de Root';

  @override
  String get accessPrivilegeOverlay => 'Sobrepor a outros apps';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modificar configurações do sistema';

  @override
  String get accessPrivilegeNotifications => 'Notificações';

  @override
  String get accessPrivilegeBatteryOptimization => 'Otimização de bateria';

  @override
  String get accessStatusGranted => 'Concedido';

  @override
  String get accessStatusMissing => 'Pendente';

  @override
  String get accessStatusNotRunning => 'Não está em execução';

  @override
  String get accessStatusRequired => 'Necessário';

  @override
  String get accessAdbInstruction =>
      'Execute o comando ADB no computador se o Shizuku não estiver disponível.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingBack => 'Voltar';

  @override
  String get onboardingNext => 'Avançar';

  @override
  String get onboardingGetStarted => 'Começar';

  @override
  String get onboardingWelcomeTitle => 'Boas-vindas ao MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Ajuste a exibição do seu Android para qualquer monitor externo. Defina a resolução e a escala ideais, mantenha sua tela inicial organizada e force o formato widescreen em modo paisagem — tudo em um app leve.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Predefinições de resolução e escala da interface';

  @override
  String get onboardingWelcomeBullet2 =>
      'Modo seguro para inicializadores MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Cores harmonizadas com o papel de parede';

  @override
  String get onboardingProblemTitle => 'O Android impõe restrições';

  @override
  String get onboardingProblemBody =>
      'Ao espelhar o celular em um monitor, o Android define resolução, densidade e rotação automaticamente — e aplicativos comuns não podem alterá-las.';

  @override
  String get onboardingProblemBullet1 =>
      'Alterar a densidade na MIUI/HyperOS da Xiaomi pode desorganizar os ícones da tela inicial entre várias páginas.';

  @override
  String get onboardingProblemBullet2 =>
      'Não há ferramenta nativa para eliminar barras pretas ou escolher um formato widescreen.';

  @override
  String get onboardingWhyTitle => 'Por que usar Shizuku ou Root?';

  @override
  String get onboardingWhyBody =>
      'As operações executadas pelo MoniTune exigem a permissão WRITE_SECURE_SETTINGS, concedida pelo Android apenas a aplicativos privilegiados.';

  @override
  String get onboardingWhyBullet1 =>
      'O Shizuku executa comandos com os privilégios concedidos via depuração sem fio — sem necessidade de root.';

  @override
  String get onboardingWhyBullet2 =>
      'Se o seu dispositivo já tiver root, o MoniTune pode usá-lo diretamente.';

  @override
  String get onboardingWhyBullet3 =>
      'Total transparência: o MoniTune usa esse acesso exclusivamente para ajustar tamanho de tela, densidade e rotação.';

  @override
  String get onboardingPathsTitle => 'Escolha o seu método';

  @override
  String get onboardingPathsBody =>
      'Qualquer uma das opções libera todos os recursos.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (sem root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Recomendado para a maioria dos aparelhos. Requer configuração única via depuração sem fio.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Se o seu aparelho já tiver root, o MoniTune o detectará automaticamente.';

  @override
  String get onboardingShizukuStepsTitle => 'Configurando o Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Instale o Shizuku e inicie-o uma vez. O MoniTune guiará os próximos passos.';

  @override
  String get onboardingShizukuStep1 =>
      'Instale o Shizuku pelo site oficial ou pelo GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Abra o Shizuku e inicie-o via Depuração sem fio (Android 11+) ou ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Retorne ao MoniTune e toque em \"Autorizar com Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Abrir guia de configuração do Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Configuração única';

  @override
  String get onboardingOneTimeBody =>
      'Enquanto o Shizuku (ou root) estiver disponível, o MoniTune pode conceder a si mesmo a permissão permanente WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Conceda uma única vez — depois disso, o MoniTune funcionará sem Shizuku, sem ADB e sem Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'A permissão permanece ativa mesmo após reiniciar.';

  @override
  String get onboardingOneTimeBullet3 =>
      'O Shizuku só precisa estar ativo no momento da concessão.';

  @override
  String get onboardingSafetyTitle => 'Segurança integrada';

  @override
  String get onboardingSafetyBody =>
      'Alterar o tamanho da tela pode deixá-la ilegível; por isso, o MoniTune conta com proteção automática.';

  @override
  String get onboardingSafetyBullet1 =>
      'O modo de teste é revertido em 15 segundos a menos que você confirme em \"Manter configurações\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Desligar a tela restaura a resolução nativa do celular imediatamente.';

  @override
  String get onboardingSafetyBullet3 =>
      'O modo seguro do inicializador mantém a densidade para que os ícones da MIUI/HyperOS fiquem no lugar.';

  @override
  String get onboardingReadyTitle => 'Tudo pronto';

  @override
  String get onboardingReadyBody =>
      'Configure seu acesso privilegiado e as duas permissões especiais a seguir. Depois, escolha a resolução e escala desejadas e teste com a reversão de segurança de 15 segundos antes de fixar suas preferências.';

  @override
  String get onboardingReadyBullet1 =>
      'Aplicação automática: aplica seu perfil assim que um monitor for conectado e restaura ao desconectar.';

  @override
  String get onboardingReadyBullet2 =>
      'Forçar modo paisagem se sobrepõe a qualquer aplicativo — incluindo o inicializador HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'No Android 12+, o MoniTune pode extrair suas cores do papel de parede (Material You).';

  @override
  String get onboardingReadyButton => 'Configurar acesso agora';

  @override
  String infoVersion(String version) {
    return 'Versão $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versão $version · compilação $buildNumber';
  }

  @override
  String get infoChecking => 'Verificando…';

  @override
  String get infoCheckingForUpdates => 'Verificando atualizações…';

  @override
  String get infoCheckForUpdates => 'Verificar atualizações';

  @override
  String get infoDistributedVia => 'Distribuído via GitHub Releases';

  @override
  String get infoMitLicense => 'Licença MIT · código aberto disponível';

  @override
  String get infoPrivacyNotice =>
      'Nenhum dado sai deste dispositivo, exceto ao verificar atualizações';

  @override
  String get infoOpenReleasePage => 'Abrir página de versões';

  @override
  String get infoOpenReleases => 'Abrir GitHub Releases';

  @override
  String get infoNoBrowser => 'Nenhum navegador disponível.';

  @override
  String infoUpdateAvailable(String version) {
    return 'O MoniTune $version está disponível.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nova versão $version disponível';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Você está usando a versão mais recente ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'O app está atualizado';

  @override
  String get infoUpdateFailed => 'Falha na verificação de atualização';

  @override
  String get infoRateLimit =>
      'O GitHub está limitando requisições nesta rede no momento. Tente novamente em alguns minutos.';

  @override
  String infoStatusError(int statusCode) {
    return 'O GitHub respondeu com o status $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Resposta inesperada do GitHub.';

  @override
  String get infoNoRelease => 'O GitHub não retornou nenhum lançamento.';

  @override
  String get infoTimeout => 'Tempo limite de resposta do GitHub esgotado.';

  @override
  String get infoNoNetwork => 'Sem conexão de rede.';

  @override
  String get infoGenericError => 'Não foi possível verificar atualizações.';

  @override
  String get safetyEmergencyRevertHint =>
      'Desligue a tela (botão Liga/Desliga) para cancelar e reverter instantaneamente';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Revertendo automaticamente em ${seconds}s a menos que confirmado';
  }
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonDone => 'Concluído';

  @override
  String get commonSave => 'Salvar';

  @override
  String get commonClose => 'Fechar';

  @override
  String get commonRevert => 'Reverter';

  @override
  String get commonReset => 'Redefinir';

  @override
  String get commonLearnMore => 'Saiba mais';

  @override
  String get commonBack => 'Voltar';

  @override
  String get commonContinue => 'Continuar';

  @override
  String get commonApply => 'Aplicar';

  @override
  String get commonGrant => 'Conceder';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Falhou';

  @override
  String get commonEnabled => 'Ativado';

  @override
  String get commonDisabled => 'Desativado';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · verificar atualizações';
  }

  @override
  String get homeHeroTitle => 'Ajuste sua tela para qualquer monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Acesso permanente ativo';

  @override
  String get homeStatusPrivilegedAccessReady => 'Acesso privilegiado pronto';

  @override
  String get homeStatusSetupRequired => 'Configuração necessária';

  @override
  String get homeApplyTestProfile => 'Aplicar perfil de teste';

  @override
  String get homeApplyFailed =>
      'Falha ao aplicar. Verifique o acesso privilegiado.';

  @override
  String get homeResetDisplayToNative =>
      'Redefinir tela para o padrão do celular';

  @override
  String get homeSectionQuickSettings => 'Configurações rápidas';

  @override
  String get homeSectionConfigure => 'Configurar';

  @override
  String get homeNavDisplayTitle => 'Tela';

  @override
  String get homeNavDisplaySubtitle =>
      'Resolução, escala, aparência e modo seguro do inicializador';

  @override
  String get homeNavAccessTitle => 'Acesso e permissões';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, acesso permanente e permissões especiais';

  @override
  String get homeForceLandscapeTitle =>
      'Forçar modo paisagem (bloqueio de espelhamento)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Força modo paisagem sobre apps que travam em retrato (incluindo o inicializador HyperOS). Aplicado ao tocar em Aplicar perfil de teste.';

  @override
  String get homeAutoApplyTitle =>
      'Aplicar automaticamente ao conectar monitor';

  @override
  String get homeAutoApplyWatching =>
      'Monitorando telas externas em segundo plano.';

  @override
  String get homeAutoApplyDescription =>
      'Aplica seu perfil automaticamente quando uma tela externa for conectada.';

  @override
  String get homeAutoApplyBlackoutTitle => 'Apagar tela do celular';

  @override
  String get homeAutoApplyBlackoutSubtitle =>
      'Reduz o brilho da tela a zero ao conectar (recomendado para AMOLED)';

  @override
  String get homePermissionsRequiredDialogTitle => 'Permissões necessárias';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'O recurso Forçar modo paisagem só pode ser ativado após conceder ambas as permissões especiais:';

  @override
  String get homePermissionDisplayOverApps => '• Sobrepor a outros apps';

  @override
  String get homePermissionModifySettings =>
      '• Modificar configurações do sistema';

  @override
  String get homeGrantOverlay => 'Conceder sobreposição';

  @override
  String get homeGrantSettings => 'Conceder configurações';

  @override
  String get homeVersionCheckForUpdates =>
      'Verificar atualizações · Licença MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Atualização $version disponível';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Perfil de teste ativo — revertendo em ${seconds}s';
  }

  @override
  String get homeKeepSettings => 'Manter configurações';

  @override
  String get homeRevertNow => 'Reverter agora';

  @override
  String get homeStatusConnected => 'Tela externa conectada';

  @override
  String get homeStatusNotDetected => 'Nenhuma tela externa detectada';

  @override
  String get homeStatusDisconnected => 'Desconectado';

  @override
  String get homeWatcherActive => 'Monitoramento de tela ativo';

  @override
  String get homeWatcherStopped => 'Monitoramento de tela interrompido';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Aplicar perfil automaticamente ao conectar';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height a $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Perfil de teste (15s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Revertendo automaticamente em ${seconds}s a menos que confirmado';
  }

  @override
  String get homeScreenOffHint =>
      'Desligue a tela (botão Liga/Desliga) para cancelar e reverter instantaneamente';

  @override
  String get homeOrientationLockActiveSummary =>
      'Bloqueio de paisagem ativo. A tela inicial e os apps recentes devem permanecer em modo paisagem enquanto estiver ativo.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'O recurso Forçar modo paisagem requer as permissões \"Sobrepor a outros apps\" e \"Modificar configurações do sistema\" para o MoniTune. Conceda-as e tente novamente.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Não foi possível aplicar o bloqueio em modo paisagem.';

  @override
  String get displayTitle => 'Tela';

  @override
  String get displaySectionTargetResolution => 'Resolução de destino';

  @override
  String get displaySectionDesktopUiScaling => 'Escala de interface do desktop';

  @override
  String get displaySectionBehaviour => 'Comportamento';

  @override
  String get displaySectionAppearance => 'Aparência';

  @override
  String get displaySectionLanguage => 'Idioma';

  @override
  String get displaySectionPresets => 'Predefinições de tela';

  @override
  String get displaySectionCustomResolution => 'Resolução personalizada';

  @override
  String get displaySectionUiScaling => 'Escala de interface';

  @override
  String get displaySectionLauncherOrientation => 'Inicializador e orientação';

  @override
  String get displayDiagResolution => 'Resolução';

  @override
  String get displayDiagDensity => 'Densidade';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotação';

  @override
  String get displayDiagExternalDisplay => 'Tela externa';

  @override
  String get displayDiagNoneConnected => 'Nenhuma conectada';

  @override
  String get displayDiagCustomProfile => 'Perfil personalizado';

  @override
  String get displayDiagActive => 'Ativo';

  @override
  String get displayDiagNotApplied => 'Não aplicado';

  @override
  String get displayRotationLandscape90 => 'Paisagem (90°)';

  @override
  String get displayRotationPortrait180 => 'Retrato (180°)';

  @override
  String get displayRotationLandscape270 => 'Paisagem (270°)';

  @override
  String get displayRotationPortrait0 => 'Retrato (0°)';

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
  String get displayPresetNative => 'Tela padrão do celular';

  @override
  String get displayPresetNativeShort => 'Padrão';

  @override
  String get displayPresetCustom => 'Resolução personalizada…';

  @override
  String get displayPresetCustomShort => 'Personalizado';

  @override
  String get displayWidthPx => 'Largura (px)';

  @override
  String get displayHeightPx => 'Altura (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Área de renderização de destino: $width × $height pixels';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Fator de escala de $scale%';
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
      '100% oferece a densidade nativa de PC sem ampliar os widgets do celular.';

  @override
  String get displayKeepUiDensityTitle =>
      'Manter densidade da UI do Android (seguro para o inicializador)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Aplica a resolução, mas não altera a densidade do Android, mantendo a organização dos ícones da tela inicial do MIUI/HyperOS.';

  @override
  String get displayLauncherSafeMode => 'Modo seguro do inicializador';

  @override
  String get displayLauncherSafeModeDesc =>
      'Mantém intacta a grade de ícones do inicializador MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Forçar modo paisagem';

  @override
  String get displayForceLandscapeDesc =>
      'Impede que o inicializador retorne à orientação de retrato';

  @override
  String get displayMiuiDetectedTitle =>
      'Inicializador HyperOS / MIUI detectado';

  @override
  String get displayMiuiDetectedMessage =>
      'Alterar a densidade do Android pode reorganizar os ícones da sua tela inicial e espalhar aplicativos por outras páginas. Ative \"Manter densidade da UI do Android\" acima para evitar isso — a resolução do desktop e o espelhamento não serão afetados.';

  @override
  String get displayMiuiDetectedTip =>
      'Dica: ative também Configurações → Tela inicial → \"Bloquear layout da tela inicial\".';

  @override
  String get displayForceLandscapeTitle => 'Forçar modo paisagem';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Ativado — aplicado ao tocar em Aplicar perfil de teste (Início).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Alterne na tela Início. Requer ambas as permissões de paisagem.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Redefinir resolução automaticamente ao sair';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Restaura a resolução padrão do celular quando terminar.';

  @override
  String get displayMaterialYouTitle => 'Cores do Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Seguindo a paleta do papel de parede';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Usando o destaque selecionado';

  @override
  String get displayUseWallpaperTitle => 'Usar cores do papel de parede';

  @override
  String get displayUseWallpaperChecking =>
      'Verificando suporte da sua versão do Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Aplica a paleta expressiva do Material 3 baseada no seu papel de parede.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Requer o Android 12 ou mais recente. Selecione um destaque abaixo.';

  @override
  String get displayWallpaperAndroid12Required =>
      'As cores do papel de parede requerem o Android 12 ou mais recente.';

  @override
  String get displayAccent => 'Destaque';

  @override
  String get displayAccentColorSemantics => 'Cor de destaque';

  @override
  String get displayPalette => 'Paleta';

  @override
  String get displayPaletteVibrant => 'Vibrante';

  @override
  String get displayPaletteFidelity => 'Exata';

  @override
  String get displayPaletteExpressive => 'Expressiva';

  @override
  String get displayPaletteTonalSpot => 'Ponto tonal';

  @override
  String get displayPaletteNeutral => 'Neutra';

  @override
  String get displayPaletteContent => 'Conteúdo';

  @override
  String get displayPaletteDescription =>
      'Vibrante mantém o tom de destaque vívido, Exata reproduz fielmente a cor, e Expressiva permite ao Material 3 variar os tons para um visual dinâmico.';

  @override
  String get displayContrast => 'Contraste';

  @override
  String get displayContrastBoost => 'Aumento de contraste';

  @override
  String get displayContrastBoosted => 'Aumentado';

  @override
  String get displayContrastStandard => 'Padrão';

  @override
  String get displayContrastDescription =>
      'Aumentado melhora a nitidez do texto e das superfícies — muito útil com papéis de parede claros ou em monitores grandes distantes.';

  @override
  String get displayLanguage => 'Idioma';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Padrão do sistema ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Padrão do sistema';

  @override
  String get accessTitle => 'Acesso e permissões';

  @override
  String get accessSectionPrivileged => 'Acesso privilegiado';

  @override
  String get accessSectionSpecial => 'Permissões especiais';

  @override
  String get accessSectionBackground => 'Segundo plano';

  @override
  String get accessForceLandscapeHint =>
      'O recurso Forçar modo paisagem precisa de ambas as permissões.';

  @override
  String get accessPermDisplayOverApps => 'Sobrepor a outros apps';

  @override
  String get accessPermModifySettings => 'Modificar configurações do sistema';

  @override
  String get accessPermBatteryOptimization =>
      'Isenção de otimização de bateria';

  @override
  String get accessPermNotifications =>
      'Notificações (monitor de aplicação automática)';

  @override
  String get accessPermanentTitle => 'Acesso permanente ativo';

  @override
  String get accessPermanentSubtitle => 'Funciona sem Shizuku, ADB ou Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Acesso privilegiado do Shizuku ativo';

  @override
  String get accessShizukuActiveSubtitle =>
      'Conceda acesso permanente uma vez para executar sem o Shizuku depois.';

  @override
  String get accessRootActiveTitle => 'Acesso Root (su) disponível';

  @override
  String get accessRootActiveSubtitle =>
      'Alterações de tela serão executadas via root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku detectado — permissão necessária';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autorize uma vez e depois conceda o acesso permanente.';

  @override
  String get accessNoAccessTitle => 'Sem acesso privilegiado';

  @override
  String get accessNoAccessSubtitle =>
      'Inicie o Shizuku via depuração sem fio ou use root para habilitar alterações.';

  @override
  String get accessAuthorizeShizuku => 'Autorizar com Shizuku';

  @override
  String get accessShizukuRequested => 'Permissão do Shizuku solicitada.';

  @override
  String get accessGrantPermanent =>
      'Conceder acesso permanente (dispensa o Shizuku depois)';

  @override
  String get accessPermanentGranted => 'Acesso permanente à tela concedido!';

  @override
  String get accessPermanentFailed =>
      'Falha na concessão. O Shizuku está em execução e autorizado?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Gravar configurações seguras';

  @override
  String get accessPrivilegeShizukuService => 'Serviço Shizuku';

  @override
  String get accessPrivilegeRoot => 'Privilégio de Root';

  @override
  String get accessPrivilegeOverlay => 'Sobrepor a outros apps';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modificar configurações do sistema';

  @override
  String get accessPrivilegeNotifications => 'Notificações';

  @override
  String get accessPrivilegeBatteryOptimization => 'Otimização de bateria';

  @override
  String get accessStatusGranted => 'Concedido';

  @override
  String get accessStatusMissing => 'Pendente';

  @override
  String get accessStatusNotRunning => 'Não está em execução';

  @override
  String get accessStatusRequired => 'Necessário';

  @override
  String get accessAdbInstruction =>
      'Execute o comando ADB no computador se o Shizuku não estiver disponível.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingBack => 'Voltar';

  @override
  String get onboardingNext => 'Avançar';

  @override
  String get onboardingGetStarted => 'Começar';

  @override
  String get onboardingWelcomeTitle => 'Boas-vindas ao MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Ajuste a exibição do seu Android para qualquer monitor externo. Defina a resolução e a escala ideais, mantenha sua tela inicial organizada e force o formato widescreen em modo paisagem — tudo em um app leve.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Predefinições de resolução e escala da interface';

  @override
  String get onboardingWelcomeBullet2 =>
      'Modo seguro para inicializadores MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Cores harmonizadas com o papel de parede';

  @override
  String get onboardingProblemTitle => 'O Android impõe restrições';

  @override
  String get onboardingProblemBody =>
      'Ao espelhar o celular em um monitor, o Android define resolução, densidade e rotação automaticamente — e aplicativos comuns não podem alterá-las.';

  @override
  String get onboardingProblemBullet1 =>
      'Alterar a densidade na MIUI/HyperOS da Xiaomi pode desorganizar os ícones da tela inicial entre várias páginas.';

  @override
  String get onboardingProblemBullet2 =>
      'Não há ferramenta nativa para eliminar barras pretas ou escolher um formato widescreen.';

  @override
  String get onboardingWhyTitle => 'Por que usar Shizuku ou Root?';

  @override
  String get onboardingWhyBody =>
      'As operações executadas pelo MoniTune exigem a permissão WRITE_SECURE_SETTINGS, concedida pelo Android apenas a aplicativos privilegiados.';

  @override
  String get onboardingWhyBullet1 =>
      'O Shizuku executa comandos com os privilégios concedidos via depuração sem fio — sem necessidade de root.';

  @override
  String get onboardingWhyBullet2 =>
      'Se o seu dispositivo já tiver root, o MoniTune pode usá-lo diretamente.';

  @override
  String get onboardingWhyBullet3 =>
      'Total transparência: o MoniTune usa esse acesso exclusivamente para ajustar tamanho de tela, densidade e rotação.';

  @override
  String get onboardingPathsTitle => 'Escolha o seu método';

  @override
  String get onboardingPathsBody =>
      'Qualquer uma das opções libera todos os recursos.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (sem root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Recomendado para a maioria dos aparelhos. Requer configuração única via depuração sem fio.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Se o seu aparelho já tiver root, o MoniTune o detectará automaticamente.';

  @override
  String get onboardingShizukuStepsTitle => 'Configurando o Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Instale o Shizuku e inicie-o uma vez. O MoniTune guiará os próximos passos.';

  @override
  String get onboardingShizukuStep1 =>
      'Instale o Shizuku pelo site oficial ou pelo GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Abra o Shizuku e inicie-o via Depuração sem fio (Android 11+) ou ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Retorne ao MoniTune e toque em \"Autorizar com Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Abrir guia de configuração do Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Configuração única';

  @override
  String get onboardingOneTimeBody =>
      'Enquanto o Shizuku (ou root) estiver disponível, o MoniTune pode conceder a si mesmo a permissão permanente WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Conceda uma única vez — depois disso, o MoniTune funcionará sem Shizuku, sem ADB e sem Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'A permissão permanece ativa mesmo após reiniciar.';

  @override
  String get onboardingOneTimeBullet3 =>
      'O Shizuku só precisa estar ativo no momento da concessão.';

  @override
  String get onboardingSafetyTitle => 'Segurança integrada';

  @override
  String get onboardingSafetyBody =>
      'Alterar o tamanho da tela pode deixá-la ilegível; por isso, o MoniTune conta com proteção automática.';

  @override
  String get onboardingSafetyBullet1 =>
      'O modo de teste é revertido em 15 segundos a menos que você confirme em \"Manter configurações\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Desligar a tela restaura a resolução nativa do celular imediatamente.';

  @override
  String get onboardingSafetyBullet3 =>
      'O modo seguro do inicializador mantém a densidade para que os ícones da MIUI/HyperOS fiquem no lugar.';

  @override
  String get onboardingReadyTitle => 'Tudo pronto';

  @override
  String get onboardingReadyBody =>
      'Configure seu acesso privilegiado e as duas permissões especiais a seguir. Depois, escolha a resolução e escala desejadas e teste com a reversão de segurança de 15 segundos antes de fixar suas preferências.';

  @override
  String get onboardingReadyBullet1 =>
      'Aplicação automática: aplica seu perfil assim que um monitor for conectado e restaura ao desconectar.';

  @override
  String get onboardingReadyBullet2 =>
      'Forçar modo paisagem se sobrepõe a qualquer aplicativo — incluindo o inicializador HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'No Android 12+, o MoniTune pode extrair suas cores do papel de parede (Material You).';

  @override
  String get onboardingReadyButton => 'Configurar acesso agora';

  @override
  String infoVersion(String version) {
    return 'Versão $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versão $version · compilação $buildNumber';
  }

  @override
  String get infoChecking => 'Verificando…';

  @override
  String get infoCheckingForUpdates => 'Verificando atualizações…';

  @override
  String get infoCheckForUpdates => 'Verificar atualizações';

  @override
  String get infoDistributedVia => 'Distribuído via GitHub Releases';

  @override
  String get infoMitLicense => 'Licença MIT · código aberto disponível';

  @override
  String get infoPrivacyNotice =>
      'Nenhum dado sai deste dispositivo, exceto ao verificar atualizações';

  @override
  String get infoOpenReleasePage => 'Abrir página de versões';

  @override
  String get infoOpenReleases => 'Abrir GitHub Releases';

  @override
  String get infoNoBrowser => 'Nenhum navegador disponível.';

  @override
  String infoUpdateAvailable(String version) {
    return 'O MoniTune $version está disponível.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nova versão $version disponível';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Você está usando a versão mais recente ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'O app está atualizado';

  @override
  String get infoUpdateFailed => 'Falha na verificação de atualização';

  @override
  String get infoRateLimit =>
      'O GitHub está limitando requisições nesta rede no momento. Tente novamente em alguns minutos.';

  @override
  String infoStatusError(int statusCode) {
    return 'O GitHub respondeu com o status $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Resposta inesperada do GitHub.';

  @override
  String get infoNoRelease => 'O GitHub não retornou nenhum lançamento.';

  @override
  String get infoTimeout => 'Tempo limite de resposta do GitHub esgotado.';

  @override
  String get infoNoNetwork => 'Sem conexão de rede.';

  @override
  String get infoGenericError => 'Não foi possível verificar atualizações.';

  @override
  String get safetyEmergencyRevertHint =>
      'Desligue a tela (botão Liga/Desliga) para cancelar e reverter instantaneamente';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Revertendo automaticamente em ${seconds}s a menos que confirmado';
  }
}
