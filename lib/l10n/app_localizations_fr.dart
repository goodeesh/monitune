// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonDone => 'Terminé';

  @override
  String get commonSave => 'Enregistrer';

  @override
  String get commonClose => 'Fermer';

  @override
  String get commonRevert => 'Rétablir';

  @override
  String get commonReset => 'Réinitialiser';

  @override
  String get commonLearnMore => 'En savoir plus';

  @override
  String get commonBack => 'Retour';

  @override
  String get commonContinue => 'Continuer';

  @override
  String get commonApply => 'Appliquer';

  @override
  String get commonGrant => 'Accorder';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => 'Échec';

  @override
  String get commonEnabled => 'Activé';

  @override
  String get commonDisabled => 'Désactivé';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · vérifier les mises à jour';
  }

  @override
  String get homeHeroTitle => 'Adaptez votre écran à n\'importe quel moniteur';

  @override
  String get homeStatusPermanentAccessActive => 'Accès permanent actif';

  @override
  String get homeStatusPrivilegedAccessReady => 'Accès privilégié prêt';

  @override
  String get homeStatusSetupRequired => 'Configuration requise';

  @override
  String get homeApplyTestProfile => 'Appliquer le profil de test';

  @override
  String get homeApplyFailed =>
      'Échec de l\'application. Vérifiez votre accès privilégié.';

  @override
  String get homeResetDisplayToNative =>
      'Rétablir l\'écran par défaut du téléphone';

  @override
  String get homeSectionQuickSettings => 'Paramètres rapides';

  @override
  String get homeSectionConfigure => 'Configurer';

  @override
  String get homeNavDisplayTitle => 'Affichage';

  @override
  String get homeNavDisplaySubtitle =>
      'Résolution, mise à l\'échelle, apparence et mode sécurisé du lanceur';

  @override
  String get homeNavAccessTitle => 'Accès et autorisations';

  @override
  String get homeNavAccessSubtitle =>
      'Shizuku, accès permanent et autorisations spéciales';

  @override
  String get homeForceLandscapeTitle =>
      'Forcer le mode paysage (verrouillage miroir)';

  @override
  String get homeForceLandscapeSubtitle =>
      'Force le mode paysage sur les applications bloquées en portrait (y compris le lanceur HyperOS). Appliqué dès que vous touchez Appliquer le profil de test.';

  @override
  String get homeAutoApplyTitle =>
      'Appliquer automatiquement à la connexion d\'un écran';

  @override
  String get homeAutoApplyWatching =>
      'Surveillance des écrans externes en arrière-plan.';

  @override
  String get homeAutoApplyDescription =>
      'Applique automatiquement votre profil lorsqu\'un écran externe est connecté.';

  @override
  String get homePermissionsRequiredDialogTitle => 'Autorisations requises';

  @override
  String get homePermissionsRequiredDialogMessage =>
      'Le mode Forcer le mode paysage ne peut être activé qu\'après avoir accordé ces deux autorisations spéciales :';

  @override
  String get homePermissionDisplayOverApps =>
      '• Afficher sur d\'autres applications';

  @override
  String get homePermissionModifySettings =>
      '• Modifier les paramètres système';

  @override
  String get homeGrantOverlay => 'Accorder la superposition';

  @override
  String get homeGrantSettings => 'Accorder les paramètres';

  @override
  String get homeVersionCheckForUpdates =>
      'Vérifier les mises à jour · Licence MIT';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'Mise à jour $version disponible';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'Profil de test actif — rétablissement dans $seconds s';
  }

  @override
  String get homeKeepSettings => 'Conserver les réglages';

  @override
  String get homeRevertNow => 'Rétablir maintenant';

  @override
  String get homeStatusConnected => 'Écran externe connecté';

  @override
  String get homeStatusNotDetected => 'Aucun écran externe détecté';

  @override
  String get homeStatusDisconnected => 'Déconnecté';

  @override
  String get homeWatcherActive => 'Surveillance d\'écran active';

  @override
  String get homeWatcherStopped => 'Surveillance d\'écran arrêtée';

  @override
  String get homeAutoApplyProfileOnConnection =>
      'Appliquer le profil automatiquement à la connexion';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height à $scale % ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'Profil de test (15 s)';

  @override
  String homeRevertCountdown(int seconds) {
    return 'Rétablissement automatique dans $seconds s sans confirmation';
  }

  @override
  String get homeScreenOffHint =>
      'Éteignez l\'écran (bouton Marche/Arrêt) pour annuler et rétablir instantanément';

  @override
  String get homeOrientationLockActiveSummary =>
      'Verrouillage paysage actif. L\'écran d\'accueil et les applications récentes restent en paysage tant qu\'il est activé.';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      'Forcer le mode paysage nécessite les autorisations \"Afficher sur d\'autres applications\" et \"Modifier les paramètres système\" pour MoniTune. Accordez-les puis réessayez.';

  @override
  String get homeOrientationLockFailedSummary =>
      'Impossible d\'appliquer le verrouillage en mode paysage.';

  @override
  String get displayTitle => 'Affichage';

  @override
  String get displaySectionTargetResolution => 'Résolution cible';

  @override
  String get displaySectionDesktopUiScaling => 'Échelle de l\'interface bureau';

  @override
  String get displaySectionBehaviour => 'Comportement';

  @override
  String get displaySectionAppearance => 'Apparence';

  @override
  String get displaySectionLanguage => 'Langue';

  @override
  String get displaySectionPresets => 'Préréglages d\'affichage';

  @override
  String get displaySectionCustomResolution => 'Résolution personnalisée';

  @override
  String get displaySectionUiScaling => 'Mise à l\'échelle de l\'interface';

  @override
  String get displaySectionLauncherOrientation => 'Lanceur et orientation';

  @override
  String get displayDiagResolution => 'Résolution';

  @override
  String get displayDiagDensity => 'Densité';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => 'Rotation';

  @override
  String get displayDiagExternalDisplay => 'Écran externe';

  @override
  String get displayDiagNoneConnected => 'Aucun connecté';

  @override
  String get displayDiagCustomProfile => 'Profil personnalisé';

  @override
  String get displayDiagActive => 'Actif';

  @override
  String get displayDiagNotApplied => 'Non appliqué';

  @override
  String get displayRotationLandscape90 => 'Paysage (90°)';

  @override
  String get displayRotationPortrait180 => 'Portrait inversé (180°)';

  @override
  String get displayRotationLandscape270 => 'Paysage inversé (270°)';

  @override
  String get displayRotationPortrait0 => 'Portrait standard (0°)';

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
  String get displayPresetNative => 'Écran natif du téléphone';

  @override
  String get displayPresetNativeShort => 'Natif';

  @override
  String get displayPresetCustom => 'Résolution personnalisée…';

  @override
  String get displayPresetCustomShort => 'Personnalisée';

  @override
  String get displayWidthPx => 'Largeur (px)';

  @override
  String get displayHeightPx => 'Hauteur (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return 'Zone de rendu cible : $width × $height pixels';
  }

  @override
  String displayScaleFactor(int scale) {
    return 'Facteur d\'échelle de $scale %';
  }

  @override
  String displayScalePercent(int scale) {
    return '$scale %';
  }

  @override
  String displayDpiValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String displayScaleDpiIndicator(int scale, int dpi) {
    return '$scale % ($dpi DPI)';
  }

  @override
  String get displayScaleNativeHint =>
      '100 % correspond à la densité native PC sans agrandir les widgets mobiles.';

  @override
  String get displayKeepUiDensityTitle =>
      'Conserver la densité de l\'interface Android (mode sécurisé)';

  @override
  String get displayKeepUiDensitySubtitle =>
      'Applique la résolution sans toucher à la densité Android, afin de préserver l\'agencement des icônes du lanceur MIUI/HyperOS.';

  @override
  String get displayLauncherSafeMode => 'Mode sécurisé pour le lanceur';

  @override
  String get displayLauncherSafeModeDesc =>
      'Préserve la grille d\'icônes du lanceur MIUI/HyperOS';

  @override
  String get displayForceLandscape => 'Forcer le mode paysage';

  @override
  String get displayForceLandscapeDesc =>
      'Empêche le lanceur de basculer à nouveau en mode portrait';

  @override
  String get displayMiuiDetectedTitle => 'Lanceur HyperOS / MIUI détecté';

  @override
  String get displayMiuiDetectedMessage =>
      'La modification de la densité Android peut désorganiser les icônes de votre écran d\'accueil et les disperser sur d\'autres pages. Activez \"Conserver la densité de l\'interface Android\" ci-dessus pour éviter cela — la résolution du bureau et la duplication restent intactes.';

  @override
  String get displayMiuiDetectedTip =>
      'Astuce : activez également Paramètres → Écran d\'accueil → \"Verrouiller la disposition de l\'écran d\'accueil\".';

  @override
  String get displayForceLandscapeTitle => 'Forcer le mode paysage';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      'Activé — appliqué lorsque vous appuyez sur Appliquer le profil de test (Accueil).';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'Basculez-le depuis l\'écran d\'accueil. Requiert les deux autorisations d\'orientation.';

  @override
  String get displayAutoResetOnExitTitle =>
      'Réinitialiser la résolution en quittant';

  @override
  String get displayAutoResetOnExitSubtitle =>
      'Restaure la résolution native de votre téléphone lorsque vous avez terminé.';

  @override
  String get displayMaterialYouTitle => 'Couleurs Material You';

  @override
  String get displayMaterialYouFollowingWallpaper =>
      'Harmonisé avec votre fond d\'écran';

  @override
  String get displayMaterialYouUsingChosenAccent =>
      'Utilisation de votre couleur d\'accentuation';

  @override
  String get displayUseWallpaperTitle =>
      'Utiliser les couleurs du fond d\'écran';

  @override
  String get displayUseWallpaperChecking =>
      'Vérification de la compatibilité avec votre version d\'Android…';

  @override
  String get displayUseWallpaperSupported =>
      'Applique la palette expressive Material 3 générée à partir de votre fond d\'écran.';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Nécessite Android 12 ou supérieur. Choisissez une nuance d\'accent ci-dessous.';

  @override
  String get displayWallpaperAndroid12Required =>
      'Les couleurs du fond d\'écran requièrent Android 12 ou plus récent.';

  @override
  String get displayAccent => 'Accentuation';

  @override
  String get displayAccentColorSemantics => 'Couleur d\'accentuation';

  @override
  String get displayPalette => 'Palette';

  @override
  String get displayPaletteVibrant => 'Vif';

  @override
  String get displayPaletteFidelity => 'Fidèle';

  @override
  String get displayPaletteExpressive => 'Expressif';

  @override
  String get displayPaletteTonalSpot => 'Touche tonale';

  @override
  String get displayPaletteNeutral => 'Neutre';

  @override
  String get displayPaletteContent => 'Contenu';

  @override
  String get displayPaletteDescription =>
      'Le style Vif préserve l\'éclat de l\'accent, Fidèle reste au plus près de la teinte choisie, et Expressif invite Material 3 à recomposer les tons pour un aspect inédit.';

  @override
  String get displayContrast => 'Contraste';

  @override
  String get displayContrastBoost => 'Renforcement du contraste';

  @override
  String get displayContrastBoosted => 'Renforcé';

  @override
  String get displayContrastStandard => 'Standard';

  @override
  String get displayContrastDescription =>
      'Renforcé améliore la lisibilité du texte et des éléments de surface — particulièrement efficace avec un fond d\'écran lumineux ou sur un grand écran à distance.';

  @override
  String get displayLanguage => 'Langue';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'Par défaut du système ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'Par défaut du système';

  @override
  String get accessTitle => 'Accès et autorisations';

  @override
  String get accessSectionPrivileged => 'Accès privilégié';

  @override
  String get accessSectionSpecial => 'Autorisations spéciales';

  @override
  String get accessSectionBackground => 'Arrière-plan';

  @override
  String get accessForceLandscapeHint =>
      'Forcer le mode paysage nécessite ces deux autorisations.';

  @override
  String get accessPermDisplayOverApps => 'Afficher sur d\'autres applications';

  @override
  String get accessPermModifySettings => 'Modifier les paramètres système';

  @override
  String get accessPermBatteryOptimization =>
      'Exemption d\'optimisation de batterie';

  @override
  String get accessPermNotifications =>
      'Notifications (surveillance d\'auto-application)';

  @override
  String get accessPermanentTitle => 'Accès permanent actif';

  @override
  String get accessPermanentSubtitle =>
      'Fonctionne sans Shizuku, sans ADB et sans Wi-Fi.';

  @override
  String get accessShizukuActiveTitle => 'Accès privilégié Shizuku actif';

  @override
  String get accessShizukuActiveSubtitle =>
      'Accordez l\'accès permanent une seule fois pour vous passer de Shizuku par la suite.';

  @override
  String get accessRootActiveTitle => 'Accès Root (su) disponible';

  @override
  String get accessRootActiveSubtitle =>
      'Les modifications d\'affichage s\'exécuteront via root.';

  @override
  String get accessShizukuRequiredTitle =>
      'Shizuku détecté — autorisation requise';

  @override
  String get accessShizukuRequiredSubtitle =>
      'Autorisez une fois, puis accordez l\'accès permanent.';

  @override
  String get accessNoAccessTitle => 'Aucun accès privilégié';

  @override
  String get accessNoAccessSubtitle =>
      'Démarrez Shizuku via le débogage sans fil ou utilisez root pour autoriser les modifications.';

  @override
  String get accessAuthorizeShizuku => 'Autoriser avec Shizuku';

  @override
  String get accessShizukuRequested => 'Autorisation Shizuku demandée.';

  @override
  String get accessGrantPermanent =>
      'Accorder l\'accès permanent (sans Shizuku ensuite)';

  @override
  String get accessPermanentGranted => 'Accès d\'affichage permanent accordé !';

  @override
  String get accessPermanentFailed =>
      'Échec de l\'octroi. Shizuku est-il actif et autorisé ?';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      'Écrire les paramètres sécurisés (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Service Shizuku';

  @override
  String get accessPrivilegeRoot => 'Privilège Root';

  @override
  String get accessPrivilegeOverlay => 'Afficher sur d\'autres applications';

  @override
  String get accessPrivilegeModifySystemSettings =>
      'Modifier les paramètres système';

  @override
  String get accessPrivilegeNotifications => 'Notifications';

  @override
  String get accessPrivilegeBatteryOptimization => 'Optimisation de batterie';

  @override
  String get accessStatusGranted => 'Accordé';

  @override
  String get accessStatusMissing => 'Manquant';

  @override
  String get accessStatusNotRunning => 'Non actif';

  @override
  String get accessStatusRequired => 'Requis';

  @override
  String get accessAdbInstruction =>
      'Exécutez la commande ADB depuis un ordinateur si Shizuku n\'est pas disponible.';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingBack => 'Retour';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingGetStarted => 'Commencer';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur MoniTune';

  @override
  String get onboardingWelcomeBody =>
      'Ajustez l\'affichage de votre appareil Android pour n\'importe quel écran externe. Définissez la résolution et l\'échelle parfaites, gardez votre écran d\'accueil ordonné et verrouillez le format paysage panoramique — le tout dans une application compacte.';

  @override
  String get onboardingWelcomeBullet1 =>
      'Préréglages de résolution et d\'échelle de l\'interface';

  @override
  String get onboardingWelcomeBullet2 =>
      'Mode sécurisé pour lanceurs MIUI/HyperOS';

  @override
  String get onboardingWelcomeBullet3 =>
      'Couleurs harmonisées avec votre fond d\'écran';

  @override
  String get onboardingProblemTitle => 'Les limites imposées par Android';

  @override
  String get onboardingProblemBody =>
      'Lorsque vous dupliquez votre téléphone sur un moniteur, Android choisit automatiquement la résolution, la densité et la rotation — et les applications classiques ne peuvent pas les modifier.';

  @override
  String get onboardingProblemBullet1 =>
      'Modifier la densité sur Xiaomi MIUI/HyperOS peut disperser vos icônes d\'accueil sur plusieurs pages.';

  @override
  String get onboardingProblemBullet2 =>
      'Aucune option intégrée pour supprimer les bandes noires ou choisir un ratio grand écran.';

  @override
  String get onboardingWhyTitle => 'Pourquoi Shizuku ou le Root ?';

  @override
  String get onboardingWhyBody =>
      'Les réglages effectués par MoniTune nécessitent l\'autorisation WRITE_SECURE_SETTINGS, qu\'Android réserve exclusivement aux applications privilégiées.';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku exécute les commandes avec les privilèges accordés via le débogage sans fil — aucun root requis.';

  @override
  String get onboardingWhyBullet2 =>
      'Si votre appareil est déjà rooté, MoniTune peut utiliser l\'accès root directement.';

  @override
  String get onboardingWhyBullet3 =>
      'Transparence totale : MoniTune utilise cet accès uniquement pour ajuster la résolution, la densité et la rotation.';

  @override
  String get onboardingPathsTitle => 'Choisissez votre méthode';

  @override
  String get onboardingPathsBody =>
      'Chaque méthode donne accès aux mêmes fonctionnalités.';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (sans root)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      'Recommandé pour la plupart des téléphones. Nécessite une configuration unique via le débogage sans fil.';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      'Si votre appareil est déjà rooté, MoniTune le détectera de façon automatique.';

  @override
  String get onboardingShizukuStepsTitle => 'Configuration de Shizuku';

  @override
  String get onboardingShizukuStepsBody =>
      'Installez Shizuku puis lancez-le une première fois. MoniTune vous guidera pour la suite.';

  @override
  String get onboardingShizukuStep1 =>
      'Installez Shizuku depuis le site officiel ou GitHub Releases.';

  @override
  String get onboardingShizukuStep2 =>
      'Ouvrez Shizuku et démarrez-le via Débogage sans fil (Android 11+) ou ADB.';

  @override
  String get onboardingShizukuStep3 =>
      'Revenez sur MoniTune et touchez \"Autoriser avec Shizuku\".';

  @override
  String get onboardingShizukuGuideButton =>
      'Ouvrir le guide d\'installation de Shizuku';

  @override
  String get onboardingOneTimeTitle => 'Configuration en une seule fois';

  @override
  String get onboardingOneTimeBody =>
      'Dès que Shizuku (ou le root) est accessible, MoniTune peut s\'octroyer de façon permanente l\'autorisation WRITE_SECURE_SETTINGS.';

  @override
  String get onboardingOneTimeBullet1 =>
      'Accordez-la une fois : MoniTune fonctionne ensuite sans Shizuku, sans ADB et sans Wi-Fi.';

  @override
  String get onboardingOneTimeBullet2 =>
      'L\'autorisation reste active même après un redémarrage.';

  @override
  String get onboardingOneTimeBullet3 =>
      'Shizuku a seulement besoin d\'être actif à cet instant précis.';

  @override
  String get onboardingSafetyTitle => 'Sécurité intégrée';

  @override
  String get onboardingSafetyBody =>
      'Modifier la taille d\'affichage peut rendre l\'écran momentanément illisible ; c\'est pourquoi MoniTune intègre des garde-fous automatiques.';

  @override
  String get onboardingSafetyBullet1 =>
      'Le mode test se rétablit automatiquement après 15 secondes sauf si vous validez \"Conserver les réglages\".';

  @override
  String get onboardingSafetyBullet2 =>
      'Éteindre l\'écran rétablit instantanément la résolution native de votre appareil.';

  @override
  String get onboardingSafetyBullet3 =>
      'Le mode sécurisé pour le lanceur préserve la densité pour que les icônes MIUI/HyperOS restent bien en place.';

  @override
  String get onboardingReadyTitle => 'Vous êtes prêt';

  @override
  String get onboardingReadyBody =>
      'Configurez votre accès privilégié ainsi que les deux autorisations spéciales ci-après. Choisissez ensuite votre résolution et votre échelle, et testez-les sereinement grâce au compte à rebours de sécurité de 15 secondes.';

  @override
  String get onboardingReadyBullet1 =>
      'Auto-application : votre profil s\'applique dès qu\'un moniteur est branché et se réinitialise au débranchement.';

  @override
  String get onboardingReadyBullet2 =>
      'Forcer le mode paysage outrepasse le verrouillage de chaque application — y compris le lanceur HyperOS (Android 12+).';

  @override
  String get onboardingReadyBullet3 =>
      'Sous Android 12+, MoniTune adopte les nuances de votre fond d\'écran (Material You).';

  @override
  String get onboardingReadyButton => 'Configurer les accès maintenant';

  @override
  String infoVersion(String version) {
    return 'Version $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'Version $version · build $buildNumber';
  }

  @override
  String get infoChecking => 'Vérification…';

  @override
  String get infoCheckingForUpdates => 'Recherche de mises à jour…';

  @override
  String get infoCheckForUpdates => 'Rechercher des mises à jour';

  @override
  String get infoDistributedVia => 'Distribué via GitHub Releases';

  @override
  String get infoMitLicense => 'Sous licence MIT · code source ouvert';

  @override
  String get infoPrivacyNotice =>
      'Aucune donnée ne quitte cet appareil, sauf lors de la recherche de mises à jour';

  @override
  String get infoOpenReleasePage => 'Ouvrir la page de version';

  @override
  String get infoOpenReleases => 'Ouvrir GitHub Releases';

  @override
  String get infoNoBrowser => 'Aucun navigateur web disponible.';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version est disponible.';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return 'Nouvelle version $version disponible';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return 'Vous disposez de la version la plus récente ($version).';
  }

  @override
  String get infoUpdateUpToDateShort => 'Votre application est à jour';

  @override
  String get infoUpdateFailed => 'Échec de la recherche de mise à jour';

  @override
  String get infoRateLimit =>
      'GitHub limite actuellement les requêtes sur ce réseau. Réessayez dans quelques minutes.';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub a répondu avec le statut $statusCode.';
  }

  @override
  String get infoUnexpectedResponse => 'Réponse inattendue de GitHub.';

  @override
  String get infoNoRelease => 'GitHub n\'a signalé aucune version publiée.';

  @override
  String get infoTimeout => 'Délai de réponse de GitHub dépassé.';

  @override
  String get infoNoNetwork => 'Aucune connexion réseau.';

  @override
  String get infoGenericError => 'Impossible de vérifier les mises à jour.';

  @override
  String get safetyEmergencyRevertHint =>
      'Éteignez l\'écran (bouton Marche/Arrêt) pour annuler et rétablir instantanément';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return 'Rétablissement automatique dans $seconds s sans confirmation';
  }
}
