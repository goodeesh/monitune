// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Annulla';

  @override
  String get commonDone => 'Fine';

  @override
  String get commonSave => 'Salva';

  @override
  String get commonClose => 'Chiudi';

  @override
  String get commonRevert => 'Ripristina';

  @override
  String get commonReset => 'Reimposta';

  @override
  String get commonLearnMore => 'Scopri di più';

  @override
  String get commonBack => 'Indietro';

  @override
  String get commonContinue => 'Continua';

  @override
  String get commonApply => 'Applica';

  @override
  String get commonGrant => 'Concedi';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Non riuscito';

  @override
  String get commonEnabled => 'Attivato';

  @override
  String get commonDisabled => 'Disattivato';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · controlla aggiornamenti';
  }

  @override
  String get homeHeroTitle => 'Adatta lo schermo a qualsiasi monitor';

  @override
  String get homeStatusPermanentAccessActive => 'Accesso permanente attivo';

  @override
  String get homeStatusPrivilegedAccessReady => 'Accesso con privilegi pronto';

  @override
  String get homeStatusSetupRequired => 'Configurazione richiesta';

  @override
  String get homeApplyTestProfile => 'Applica profilo di prova';

  @override
  String get homeApplyFailed =>
      'Impossibile applicare. Verifica l\'accesso con privilegi.';

  @override
  String get homeResetDisplayToNative =>
      'Reimposta schermo ai valori del telefono';

  @override
  String get homeSectionQuickSettings => 'Impostazioni rapide';

  @override
  String get homeSectionConfigure => 'Configura';

  @override
  String get homeNavDisplayTitle => 'Schermo';

  @override
  String get homeNavDisplaySubtitle =>
      'Risoluzione, scala, aspetto e modalità sicura per il launcher';

  @override
  String get homeNavAccessTitle => 'Accesso e autorizzazioni';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, accesso permanente e permessi speciali';

  @override
  String get homeForceLandscapeTitle =>
      'Forza modalità orizzontale (blocco mirroring)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Forza la rotazione orizzontale sulle app bloccate in verticale (incluso il launcher HyperOS). Si applica toccando Applica profilo di prova.';

  @override
  String get homeAutoApplyTitle =>
      'Applica automaticamente alla connessione monitor';

  @override
  String get homeAutoApplyWatching =>
      'Monitoraggio display esterni in background.';

  @override
  String get homeAutoApplyDescription =>
      'Applica automaticamente il tuo profilo quando viene collegato un monitor esterno.';

  @override
  String get homePermissionsRequiredDialogTitle => 'Autorizzazioni richieste';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Forza orizzontale può essere attivato solo dopo aver concesso entrambi i permessi speciali:';

  @override
  String get homePermissionDisplayOverApps => '• Mostra sopra altre app';

  @override
  String get homePermissionModifySettings =>
      '• Modifica impostazioni di sistema';

  @override
  String get homeGrantOverlay => 'Concedi sovrapposizione';

  @override
  String get homeGrantSettings => 'Concedi impostazioni';

  @override
  String get homeVersionCheckForUpdates =>
      'Controlla aggiornamenti · Licenza MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Aggiornamento $version disponibile';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Profilo di prova attivo — ripristino tra $seconds s';
  }

  @override
  String get homeKeepSettings => 'Mantieni impostazioni';

  @override
  String get homeRevertNow => 'Ripristina ora';

  @override
  String get homeStatusConnected => 'Monitor esterno collegato';

  @override
  String get homeStatusNotDetected => 'Nessun monitor esterno rilevato';

  @override
  String get homeStatusDisconnected => 'Disconnesso';

  @override
  String get homeWatcherActive => 'Monitoraggio display attivo';

  @override
  String get homeWatcherStopped => 'Monitoraggio display arrestato';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Applica profilo automaticamente alla connessione';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height al $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Profilo di prova (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Ripristino automatico tra $seconds s salvo conferma';
  }

  @override
  String get homeScreenOffHint =>
      'Spegni lo schermo (tasto accensione) per annullare e ripristinare all\'istante';

  @override
  String get homeOrientationLockActiveSummary =>
      'Blocco orizzontale attivo. La schermata iniziale e le app recenti rimarranno in orizzontale mentre è abilitato.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Forza orizzontale richiede i permessi \"Mostra sopra altre app\" e \"Modifica impostazioni di sistema\" per MoniTune. Concedili e riprova.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Impossibile applicare il blocco orizzontale.';

  @override
  String get displayTitle => 'Schermo';

  @override
  String get displaySectionTargetResolution => 'Risoluzione di destinazione';

  @override
  String get displaySectionDesktopUiScaling => 'Scala interfaccia desktop';

  @override
  String get displaySectionBehaviour => 'Comportamento';

  @override
  String get displaySectionAppearance => 'Aspetto';

  @override
  String get displaySectionLanguage => 'Lingua';

  @override
  String get displaySectionPresets => 'Preset display';

  @override
  String get displaySectionCustomResolution => 'Risoluzione personalizzata';

  @override
  String get displaySectionUiScaling => 'Scala interfaccia utente';

  @override
  String get displaySectionLauncherOrientation => 'Launcher e orientamento';

  @override
  String get displayDiagResolution => 'Risoluzione';

  @override
  String get displayDiagDensity => 'Densità';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotazione';

  @override
  String get displayDiagExternalDisplay => 'Schermo esterno';

  @override
  String get displayDiagNoneConnected => 'Nessuno collegato';

  @override
  String get displayDiagCustomProfile => 'Profilo personalizzato';

  @override
  String get displayDiagActive => 'Attivo';

  @override
  String get displayDiagNotApplied => 'Non applicato';

  @override
  String get displayRotationLandscape90 => 'Orizzontale (90°)';

  @override
  String get displayRotationPortrait180 => 'Verticale capovolto (180°)';

  @override
  String get displayRotationLandscape270 => 'Orizzontale inverso (270°)';

  @override
  String get displayRotationPortrait0 => 'Verticale standard (0°)';

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
  String get displayPresetNative => 'Schermo nativo del telefono';

  @override
  String get displayPresetNativeShort => 'Nativo';

  @override
  String get displayPresetCustom => 'Risoluzione personalizzata…';

  @override
  String get displayPresetCustomShort => 'Personalizzata';

  @override
  String get displayWidthPx => 'Larghezza (px)';

  @override
  String get displayHeightPx => 'Altezza (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Area di rendering: $width × $height pixel';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Fattore di scala $scale%';
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
      'Il 100% offre la densità nativa da PC senza ingrandire i widget mobili.';

  @override
  String get displayKeepUiDensityTitle =>
      'Mantieni densità interfaccia Android (sicuro per launcher)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Applica la risoluzione senza modificare la densità Android, preservando la disposizione delle icone del launcher MIUI/HyperOS.';

  @override
  String get displayLauncherSafeMode => 'Modalità sicura per il launcher';

  @override
  String get displayLauncherSafeModeDesc =>
      'Mantiene intatta la griglia icone del launcher MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Forza modalità orizzontale';

  @override
  String get displayForceLandscapeDesc =>
      'Impedisce al launcher di ritornare all\'orientamento verticale';

  @override
  String get displayMiuiDetectedTitle => 'Launcher HyperOS / MIUI rilevato';

  @override
  String get displayMiuiDetectedMessage =>
      'La modifica della densità di Android può scombinare le icone della schermata iniziale e disperderle su altre pagine. Attiva \"Mantieni densità interfaccia Android\" in alto per evitarlo: la risoluzione desktop e il mirroring rimangono invariati.';

  @override
  String get displayMiuiDetectedTip =>
      'Suggerimento: attiva anche Impostazioni → Schermata Home → \"Blocca layout Schermata Home\".';

  @override
  String get displayForceLandscapeTitle => 'Forza modalità orizzontale';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Attivato — si applica toccando Applica profilo di prova (Home).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Puoi attivarlo dalla schermata Home. Richiede entrambi i permessi di orientamento.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Reimposta risoluzione automaticamente all\'uscita';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Ripristina la risoluzione nativa del telefono al termine.';

  @override
  String get displayMaterialYouTitle => 'Colori Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Adattamento alla palette dello sfondo';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Utilizzo del colore di accento scelto';

  @override
  String get displayUseWallpaperTitle => 'Usa colori dello sfondo';

  @override
  String get displayUseWallpaperChecking =>
      'Controllo compatibilità con la versione Android in uso…';

  @override
  String get displayUseWallpaperSupported =>
      'Applica la palette espressiva Material 3 generata dal tuo sfondo.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Richiede Android 12 o successivo. Seleziona un accento in basso.';

  @override
  String get displayWallpaperAndroid12Required =>
      'I colori dello sfondo richiedono Android 12 o versioni successive.';

  @override
  String get displayAccent => 'Accento';

  @override
  String get displayAccentColorSemantics => 'Colore di accento';

  @override
  String get displayPalette => 'Palette';

  @override
  String get displayPaletteVibrant => 'Vivace';

  @override
  String get displayPaletteFidelity => 'Fedele';

  @override
  String get displayPaletteExpressive => 'Espressiva';

  @override
  String get displayPaletteTonalSpot => 'Punto tonale';

  @override
  String get displayPaletteNeutral => 'Neutra';

  @override
  String get displayPaletteContent => 'Contenuto';

  @override
  String get displayPaletteDescription =>
      'Vivace esalta l\'intensità del colore, Fedele lo riproduce con accuratezza, ed Espressiva permette a Material 3 di variare i toni per uno stile sorprendente.';

  @override
  String get displayContrast => 'Contrasto';

  @override
  String get displayContrastBoost => 'Aumento contrasto';

  @override
  String get displayContrastBoosted => 'Aumentato';

  @override
  String get displayContrastStandard => 'Standard';

  @override
  String get displayContrastDescription =>
      'Aumentato migliora la leggibilità di testi e superfici — ideale con sfondi molto chiari o su monitor ampi a distanza.';

  @override
  String get displayLanguage => 'Lingua';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Predefinita di sistema ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Predefinita di sistema';

  @override
  String get accessTitle => 'Accesso e autorizzazioni';

  @override
  String get accessSectionPrivileged => 'Accesso con privilegi';

  @override
  String get accessSectionSpecial => 'Autorizzazioni speciali';

  @override
  String get accessSectionBackground => 'Background';

  @override
  String get accessForceLandscapeHint =>
      'Forza orizzontale richiede entrambe le autorizzazioni.';

  @override
  String get accessPermDisplayOverApps => 'Mostra sopra altre app';

  @override
  String get accessPermModifySettings => 'Modifica impostazioni di sistema';

  @override
  String get accessPermBatteryOptimization =>
      'Esenzione ottimizzazione batteria';

  @override
  String get accessPermNotifications =>
      'Notifiche (servizio di monitoraggio auto-applicazione)';

  @override
  String get accessPermanentTitle => 'Accesso permanente attivo';

  @override
  String get accessPermanentSubtitle =>
      'Funziona senza Shizuku, senza ADB e senza Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Accesso con privilegi Shizuku attivo';

  @override
  String get accessShizukuActiveSubtitle =>
      'Concedi l\'accesso permanente una volta sola per eseguire senza Shizuku in seguito.';

  @override
  String get accessRootActiveTitle => 'Accesso Root (su) disponibile';

  @override
  String get accessRootActiveSubtitle =>
      'Le modifiche allo schermo verranno eseguite tramite root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku rilevato — autorizzazione richiesta';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autorizza una volta, poi concedi l\'accesso permanente.';

  @override
  String get accessNoAccessTitle => 'Nessun accesso con privilegi';

  @override
  String get accessNoAccessSubtitle =>
      'Avvia Shizuku tramite debug wireless o usa root per abilitare le modifiche.';

  @override
  String get accessAuthorizeShizuku => 'Autorizza con Shizuku';

  @override
  String get accessShizukuRequested => 'Autorizzazione Shizuku richiesta.';

  @override
  String get accessGrantPermanent =>
      'Concedi accesso permanente (senza Shizuku in seguito)';

  @override
  String get accessPermanentGranted =>
      'Accesso permanente allo schermo concesso con successo!';

  @override
  String get accessPermanentFailed =>
      'Concessione non riuscita. Shizuku è in esecuzione e autorizzato?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Scrittura impostazioni protette (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Servizio Shizuku';

  @override
  String get accessPrivilegeRoot => 'Privilegi di Root';

  @override
  String get accessPrivilegeOverlay => 'Mostra sopra altre app';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modifica impostazioni di sistema';

  @override
  String get accessPrivilegeNotifications => 'Notifiche';

  @override
  String get accessPrivilegeBatteryOptimization => 'Ottimizzazione batteria';

  @override
  String get accessStatusGranted => 'Concesso';

  @override
  String get accessStatusMissing => 'Mancante';

  @override
  String get accessStatusNotRunning => 'Non in esecuzione';

  @override
  String get accessStatusRequired => 'Richiesto';

  @override
  String get accessAdbInstruction =>
      'Esegui il comando ADB dal computer se Shizuku non è disponibile.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Salta';

  @override
  String get onboardingBack => 'Indietro';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get onboardingGetStarted => 'Inizia';

  @override
  String get onboardingWelcomeTitle => 'Benvenuto in MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Ottimizza la visualizzazione del tuo dispositivo Android per qualsiasi monitor esterno. Imposta risoluzione e scala ideali, tieni ordinata la schermata iniziale e forza il formato panoramico orizzontale — tutto da una sola app leggera.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Preset di risoluzione e scala interfaccia';

  @override
  String get onboardingWelcomeBullet2 =>
      'Modalità sicura per launcher MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 => 'Colori coordinati con il tuo sfondo';

  @override
  String get onboardingProblemTitle => 'I vincoli imposti da Android';

  @override
  String get onboardingProblemBody =>
      'Quando colleghi il telefono a un monitor, Android sceglie automaticamente risoluzione, densità e rotazione — e le app ordinarie non possono modificarle.';

  @override
  String get onboardingProblemBullet1 =>
      'Modificare la densità su Xiaomi MIUI/HyperOS può sparpagliare le icone su più pagine della schermata iniziale.';

  @override
  String get onboardingProblemBullet2 =>
      'Nessuna opzione integrata per rimuovere le bande nere o scegliere un rapporto d\'aspetto widescreen.';

  @override
  String get onboardingWhyTitle => 'Perché serve Shizuku o Root?';

  @override
  String get onboardingWhyBody =>
      'Le operazioni di MoniTune richiedono il permesso WRITE_SECURE_SETTINGS, che Android concede soltanto ad app con privilegi elevati.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku esegue comandi con i privilegi concessi tramite debug wireless — nessun root necessario.';

  @override
  String get onboardingWhyBullet2 =>
      'Se il dispositivo è già rootato, MoniTune può sfruttare direttamente l\'accesso root.';

  @override
  String get onboardingWhyBullet3 =>
      'Massima trasparenza: MoniTune utilizza questo accesso esclusivamente per regolare dimensioni schermo, densità e rotazione.';

  @override
  String get onboardingPathsTitle => 'Scegli il metodo di accesso';

  @override
  String get onboardingPathsBody =>
      'Entrambi i percorsi sbloccano le stesse identiche funzionalità.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (senza root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Consigliato per la maggior parte dei telefoni. Richiede una sola configurazione tramite debug wireless.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Se il dispositivo è già provvisto di permessi di root, MoniTune lo rileva in automatico.';

  @override
  String get onboardingShizukuStepsTitle => 'Configurazione di Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Installa Shizuku e avvialo una prima volta. MoniTune ti guiderà nei passaggi successivi.';

  @override
  String get onboardingShizukuStep1 =>
      'Installa Shizuku dal sito web ufficiale o dalle Release su GitHub.';

  @override
  String get onboardingShizukuStep2 =>
      'Apri Shizuku e avvialo tramite Debug wireless (Android 11+) o ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Torna su MoniTune e tocca \"Autorizza con Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Apri guida configurazione Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Configurazione una tantum';

  @override
  String get onboardingOneTimeBody =>
      'Mentre Shizuku (o il root) è attivo, MoniTune può concedersi in modo permanente l\'autorizzazione WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Concedilo una sola volta: successivamente MoniTune funzionerà senza Shizuku, senza ADB e senza Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'L\'autorizzazione resta valida anche dopo il riavvio.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku deve essere attivo unicamente durante questo singolo passaggio.';

  @override
  String get onboardingSafetyTitle => 'Protezione integrata';

  @override
  String get onboardingSafetyBody =>
      'Modificare le dimensioni dello schermo può renderlo temporaneamente illeggibile; per questo MoniTune include salvaguardie automatiche.';

  @override
  String get onboardingSafetyBullet1 =>
      'La modalità di prova si ripristina automaticamente dopo 15 secondi a meno che non si prema \"Mantieni impostazioni\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Spegnere lo schermo ripristina immediatamente la risoluzione nativa del telefono.';

  @override
  String get onboardingSafetyBullet3 =>
      'La modalità sicura salta la variazione di densità per mantenere intatte le icone su MIUI/HyperOS.';

  @override
  String get onboardingReadyTitle => 'Sei pronto';

  @override
  String get onboardingReadyBody =>
      'Configura il tuo accesso con privilegi e le due autorizzazioni speciali di seguito. Poi scegli risoluzione e scala, testandole in sicurezza con il ripristino automatico a 15 secondi prima di confermare.';

  @override
  String get onboardingReadyBullet1 =>
      'Applicazione automatica: applica il profilo non appena viene collegato un monitor e ripristina allo scollegamento.';

  @override
  String get onboardingReadyBullet2 =>
      'Forza orizzontale supera l\'orientamento di qualsiasi app, incluso il launcher HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Su Android 12+, MoniTune acquisisce i colori direttamente dal tuo sfondo (Material You).';

  @override
  String get onboardingReadyButton => 'Configura accessi ora';

  @override
  String infoVersion(String version) {
    return 'Versione $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Versione $version · build $buildNumber';
  }

  @override
  String get infoChecking => 'Controllo in corso…';

  @override
  String get infoCheckingForUpdates => 'Ricerca aggiornamenti…';

  @override
  String get infoCheckForUpdates => 'Controlla aggiornamenti';

  @override
  String get infoDistributedVia => 'Distribuito tramite GitHub Releases';

  @override
  String get infoMitLicense => 'Licenza MIT · codice open source disponibile';

  @override
  String get infoPrivacyNotice =>
      'Nessun dato lascia questo dispositivo, tranne durante la verifica aggiornamenti';

  @override
  String get infoOpenReleasePage => 'Apri pagina delle versioni';

  @override
  String get infoOpenReleases => 'Apri GitHub Releases';

  @override
  String get infoNoBrowser => 'Nessun browser web disponibile.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version è disponibile.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nuova versione $version disponibile';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Stai utilizzando l\'ultima versione disponibile ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'L\'app è aggiornata';

  @override
  String get infoUpdateFailed => 'Controllo aggiornamenti non riuscito';

  @override
  String get infoRateLimit =>
      'GitHub sta limitando temporaneamente le richieste da questa rete. Riprova tra qualche minuto.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub ha risposto con codice di stato $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Risposta imprevista da GitHub.';

  @override
  String get infoNoRelease => 'GitHub non ha rilevato alcun rilascio.';

  @override
  String get infoTimeout => 'Tempo di risposta di GitHub scaduto.';

  @override
  String get infoNoNetwork => 'Nessuna connessione di rete.';

  @override
  String get infoGenericError =>
      'Impossibile verificare la presenza di aggiornamenti.';

  @override
  String get safetyEmergencyRevertHint =>
      'Spegni lo schermo (tasto accensione) per annullare e ripristinare all\'istante';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Ripristino automatico tra $seconds s salvo conferma';
  }
}
