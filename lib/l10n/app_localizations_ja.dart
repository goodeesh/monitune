// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'MoniTune';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonDone => '完了';

  @override
  String get commonSave => '保存';

  @override
  String get commonClose => '閉じる';

  @override
  String get commonRevert => '元に戻す';

  @override
  String get commonReset => 'リセット';

  @override
  String get commonLearnMore => '詳細';

  @override
  String get commonBack => '戻る';

  @override
  String get commonContinue => '次へ';

  @override
  String get commonApply => '適用';

  @override
  String get commonGrant => '許可';

  @override
  String get commonOk => 'OK';

  @override
  String get commonFailed => '失敗';

  @override
  String get commonEnabled => '有効';

  @override
  String get commonDisabled => '無効';

  @override
  String homeCheckForUpdatesTooltip(String version) {
    return 'MoniTune $version · 更新を確認';
  }

  @override
  String get homeHeroTitle => 'あらゆるモニターに合わせて画面を最適化';

  @override
  String get homeStatusPermanentAccessActive => '永続特権が有効です';

  @override
  String get homeStatusPrivilegedAccessReady => '特権アクセスの準備完了';

  @override
  String get homeStatusSetupRequired => 'セットアップが必要です';

  @override
  String get homeApplyTestProfile => 'テストプロファイルを適用';

  @override
  String get homeApplyFailed => '適用に失敗しました。特権アクセスを確認してください。';

  @override
  String get homeResetDisplayToNative => '画面をスマートフォンの標準設定にリセット';

  @override
  String get homeSectionQuickSettings => 'クイック設定';

  @override
  String get homeSectionConfigure => '詳細設定';

  @override
  String get homeNavDisplayTitle => 'ディスプレイ';

  @override
  String get homeNavDisplaySubtitle => '解像度、スケーリング、外観、ランチャー保護モード';

  @override
  String get homeNavAccessTitle => 'アクセスと権限';

  @override
  String get homeNavAccessSubtitle => 'Shizuku、永続特権、特別なアプリアクセス';

  @override
  String get homeForceLandscapeTitle => '強制横向き (ミラーリング固定)';

  @override
  String get homeForceLandscapeSubtitle =>
      '縦向き固定のアプリ（HyperOSランチャーを含む）を強制的に横向きにします。「テストプロファイルを適用」をタップすると有効になります。';

  @override
  String get homeAutoApplyTitle => 'モニター接続時に自動適用';

  @override
  String get homeAutoApplyWatching => 'バックグラウンドで外部ディスプレイの接続を監視中。';

  @override
  String get homeAutoApplyDescription => '外部ディスプレイ接続時に自動でプロファイルを適用します。';

  @override
  String get homeAutoApplyBlackoutTitle => 'スマホの画面を消灯';

  @override
  String get homeAutoApplyBlackoutSubtitle => '接続時に画面の明るさをゼロにします（AMOLED推奨）';

  @override
  String get homePermissionsRequiredDialogTitle => '権限が必要です';

  @override
  String get homePermissionsRequiredDialogMessage =>
      '強制横向きを有効にするには、以下の両方の特別なアクセス権限が必要です：';

  @override
  String get homePermissionDisplayOverApps => '• 他のアプリの上に重ねて表示';

  @override
  String get homePermissionModifySettings => '• システム設定の変更';

  @override
  String get homeGrantOverlay => 'オーバーレイを許可';

  @override
  String get homeGrantSettings => '設定変更を許可';

  @override
  String get homeVersionCheckForUpdates => '更新を確認 · MITライセンス';

  @override
  String homeVersionUpdateAvailable(String version) {
    return 'アップデート $version が利用可能です';
  }

  @override
  String homeTestRevertingBanner(int seconds) {
    return 'テストプロファイル適用中 — $seconds秒後に自動で元に戻ります';
  }

  @override
  String get homeKeepSettings => '設定を維持';

  @override
  String get homeRevertNow => '今すぐ元に戻す';

  @override
  String get homeStatusConnected => '外部ディスプレイ接続中';

  @override
  String get homeStatusNotDetected => '外部ディスプレイが検出されません';

  @override
  String get homeStatusDisconnected => '切断されました';

  @override
  String get homeWatcherActive => 'ディスプレイ監視サービス実行中';

  @override
  String get homeWatcherStopped => 'ディスプレイ監視サービス停止中';

  @override
  String get homeAutoApplyProfileOnConnection => '接続時にプロファイルを自動適用';

  @override
  String homeActiveProfileLabel(int width, int height, int scale, int dpi) {
    return '${width}x$height @ $scale% ($dpi DPI)';
  }

  @override
  String get homeTestProfile15s => 'テストプロファイル (15秒)';

  @override
  String homeRevertCountdown(int seconds) {
    return '確定しない場合、$seconds秒後に自動で元に戻ります';
  }

  @override
  String get homeScreenOffHint => '画面をオフ（電源ボタン）にすると即座にキャンセルして元の設定に戻ります';

  @override
  String get homeOrientationLockActiveSummary =>
      '横向き固定が有効です。有効中はホーム画面や最近使ったアプリ一覧も横向きを維持します。';

  @override
  String get homeOrientationLockNeedsPermissionsSummary =>
      '強制横向きを使用するには、MoniTuneに「他のアプリの上に重ねて表示」と「システム設定の変更」の権限が必要です。許可してから再試行してください。';

  @override
  String get homeOrientationLockFailedSummary => '横向き固定を適用できませんでした。';

  @override
  String get displayTitle => 'ディスプレイ';

  @override
  String get displaySectionTargetResolution => '目標解像度';

  @override
  String get displaySectionDesktopUiScaling => 'デスクトップUIスケーリング';

  @override
  String get displaySectionBehaviour => '動作設定';

  @override
  String get displaySectionAppearance => '外観';

  @override
  String get displaySectionLanguage => '言語';

  @override
  String get displaySectionPresets => 'プリセット解像度';

  @override
  String get displaySectionCustomResolution => 'カスタム解像度';

  @override
  String get displaySectionUiScaling => 'UIスケーリング';

  @override
  String get displaySectionLauncherOrientation => 'ランチャーと向き';

  @override
  String get displayDiagResolution => '解像度';

  @override
  String get displayDiagDensity => '画面密度';

  @override
  String displayDiagDensityValue(int dpi) {
    return '$dpi DPI';
  }

  @override
  String get displayDiagRotation => '回転';

  @override
  String get displayDiagExternalDisplay => '外部ディスプレイ';

  @override
  String get displayDiagNoneConnected => '未接続';

  @override
  String get displayDiagCustomProfile => 'カスタムプロファイル';

  @override
  String get displayDiagActive => '適用中';

  @override
  String get displayDiagNotApplied => '未適用';

  @override
  String get displayRotationLandscape90 => '横向き (90°)';

  @override
  String get displayRotationPortrait180 => '縦向き反転 (180°)';

  @override
  String get displayRotationLandscape270 => '横向き反転 (270°)';

  @override
  String get displayRotationPortrait0 => '標準の縦向き (0°)';

  @override
  String get displayPreset1080p => '1080p フルHD (1920 × 1080)';

  @override
  String get displayPreset1440p => '1440p 2K (2560 × 1440)';

  @override
  String get displayPreset4k => '4K Ultra HD (3840 × 2160)';

  @override
  String get displayPreset720p => '720p HD (1280 × 720)';

  @override
  String get displayPresetUltrawide => 'ウルトラワイド 21:9 (2560 × 1080)';

  @override
  String get displayPresetUltrawide1080p => 'ウルトラワイド (1080p)';

  @override
  String get displayPresetUltrawide1440p => 'ウルトラワイド (1440p)';

  @override
  String get displayPreset1080pShort => '1080p';

  @override
  String get displayPreset1440pShort => '1440p';

  @override
  String get displayPreset4kShort => '4K';

  @override
  String get displayPresetNative => '端末の標準解像度';

  @override
  String get displayPresetNativeShort => '標準';

  @override
  String get displayPresetCustom => 'カスタム解像度…';

  @override
  String get displayPresetCustomShort => 'カスタム';

  @override
  String get displayWidthPx => '幅 (px)';

  @override
  String get displayHeightPx => '高さ (px)';

  @override
  String displayTargetCanvas(int width, int height) {
    return '描画領域: $width × $height ピクセル';
  }

  @override
  String displayScaleFactor(int scale) {
    return '$scale% スケール倍率';
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
      '100%はモバイルウィジェットを拡大することなくPCネイティブの表示密度を再現します。';

  @override
  String get displayKeepUiDensityTitle => 'Android UI密度を維持 (ランチャー保護)';

  @override
  String get displayKeepUiDensitySubtitle =>
      '解像度のみを変更しAndroidの画面密度を維持することで、MIUI/HyperOSのホーム画面アイコンの崩れを防ぎます。';

  @override
  String get displayLauncherSafeMode => 'ランチャー保護モード';

  @override
  String get displayLauncherSafeModeDesc => 'MIUI/HyperOSのホーム画面グリッド配置を維持します';

  @override
  String get displayForceLandscape => '強制横向き';

  @override
  String get displayForceLandscapeDesc => 'ランチャーが縦向きに戻るのを防ぎます';

  @override
  String get displayMiuiDetectedTitle => 'HyperOS / MIUI ランチャーを検出';

  @override
  String get displayMiuiDetectedMessage =>
      'Androidの画面密度を変更すると、ホーム画面のアイコン配置が崩れたり他のページに散らばったりすることがあります。これを防ぐには、上の「Android UI密度を維持」をオンにしてください。デスクトップ解像度やミラーリングには影響しません。';

  @override
  String get displayMiuiDetectedTip =>
      'ヒント: 設定 → ホーム画面 →「ホーム画面のレイアウトをロック」も併せてオンにしてください。';

  @override
  String get displayForceLandscapeTitle => '強制横向き';

  @override
  String get displayForceLandscapeSubtitleEnabled =>
      '有効 — ホームで「テストプロファイルを適用」をタップすると反映されます。';

  @override
  String get displayForceLandscapeSubtitleDisabled =>
      'ホーム画面から切り替えられます。両方の画面の向きに関する権限が必要です。';

  @override
  String get displayAutoResetOnExitTitle => '終了時に解像度を自動リセット';

  @override
  String get displayAutoResetOnExitSubtitle => '利用終了時にスマートフォンの標準解像度へ自動で復元します。';

  @override
  String get displayMaterialYouTitle => 'Material You カラー';

  @override
  String get displayMaterialYouFollowingWallpaper => '壁紙のカラーパレットを適用中';

  @override
  String get displayMaterialYouUsingChosenAccent => '選択したアクセントカラーを適用中';

  @override
  String get displayUseWallpaperTitle => '壁紙の色を使用';

  @override
  String get displayUseWallpaperChecking => 'Android バージョンの対応状況を確認中…';

  @override
  String get displayUseWallpaperSupported =>
      '壁紙から生成された Material 3 の表現豊かなカラーパレットを適用します。';

  @override
  String get displayUseWallpaperNeedsAndroid12 =>
      'Android 12以降が必要です。下からアクセントカラーを選択してください。';

  @override
  String get displayWallpaperAndroid12Required => '壁紙からの配色にはAndroid 12以降が必要です。';

  @override
  String get displayAccent => 'アクセント';

  @override
  String get displayAccentColorSemantics => 'アクセントカラー';

  @override
  String get displayPalette => 'パレットのスタイル';

  @override
  String get displayPaletteVibrant => '鮮やか (Bold)';

  @override
  String get displayPaletteFidelity => '忠実 (Exact)';

  @override
  String get displayPaletteExpressive => '表現豊か (Expressive)';

  @override
  String get displayPaletteTonalSpot => 'トーン重視 (Tonal)';

  @override
  String get displayPaletteNeutral => '中間色 (Neutral)';

  @override
  String get displayPaletteContent => 'コンテンツ重視 (Content)';

  @override
  String get displayPaletteDescription =>
      '鮮やかはアクセントを際立たせ、忠実は元の色味を再現し、表現豊かはMaterial 3が色調を再構成して洗練された印象を与えます。';

  @override
  String get displayContrast => 'コントラスト';

  @override
  String get displayContrastBoost => 'コントラスト強調';

  @override
  String get displayContrastBoosted => '強調';

  @override
  String get displayContrastStandard => '標準';

  @override
  String get displayContrastDescription =>
      '強調にすると文字や背景のコントラストが向上し、明るい壁紙や離れた位置の大画面モニターでも視認しやすくなります。';

  @override
  String get displayLanguage => '言語';

  @override
  String displayLanguageSystemDefault(String language) {
    return 'システムのデフォルト ($language)';
  }

  @override
  String get displayLanguageSystemDefaultSimple => 'システムのデフォルト';

  @override
  String get accessTitle => 'アクセスと権限';

  @override
  String get accessSectionPrivileged => '特権アクセス';

  @override
  String get accessSectionSpecial => '特別なアクセス権限';

  @override
  String get accessSectionBackground => 'バックグラウンド';

  @override
  String get accessForceLandscapeHint => '強制横向きにはこの2つの権限が必要です。';

  @override
  String get accessPermDisplayOverApps => '他のアプリの上に重ねて表示';

  @override
  String get accessPermModifySettings => 'システム設定の変更';

  @override
  String get accessPermBatteryOptimization => 'バッテリー最適化の除外';

  @override
  String get accessPermNotifications => '通知 (自動適用監視サービス)';

  @override
  String get accessPermanentTitle => '永続特権が有効です';

  @override
  String get accessPermanentSubtitle => 'Shizuku、ADB、Wi-Fiなしで動作します。';

  @override
  String get accessShizukuActiveTitle => 'Shizuku特権アクセスが有効です';

  @override
  String get accessShizukuActiveSubtitle => '一度永続特権を付与すれば、以降はShizukuなしで実行できます。';

  @override
  String get accessRootActiveTitle => 'Root (su) アクセスが利用可能です';

  @override
  String get accessRootActiveSubtitle => '画面設定の変更はRoot権限経由で実行されます。';

  @override
  String get accessShizukuRequiredTitle => 'Shizukuを検出 — 権限が必要です';

  @override
  String get accessShizukuRequiredSubtitle => '一度許可した後に永続特権を付与してください。';

  @override
  String get accessNoAccessTitle => '特権アクセスがありません';

  @override
  String get accessNoAccessSubtitle =>
      'ワイヤレスデバッグ経由でShizukuを開始するか、Root権限を使用して変更を有効にしてください。';

  @override
  String get accessAuthorizeShizuku => 'Shizukuで許可する';

  @override
  String get accessShizukuRequested => 'Shizukuの権限を要求しました。';

  @override
  String get accessGrantPermanent => '永続特権を付与 (以降Shizuku不要)';

  @override
  String get accessPermanentGranted => '画面設定の永続特権が付与されました！';

  @override
  String get accessPermanentFailed => '付与に失敗しました。Shizukuは起動し許可されていますか？';

  @override
  String get accessPrivilegeWriteSecureSettings =>
      '安全な設定の書き込み (Write Secure Settings)';

  @override
  String get accessPrivilegeShizukuService => 'Shizukuサービス';

  @override
  String get accessPrivilegeRoot => 'Root特権';

  @override
  String get accessPrivilegeOverlay => '他のアプリの上に重ねて表示';

  @override
  String get accessPrivilegeModifySystemSettings => 'システム設定の変更';

  @override
  String get accessPrivilegeNotifications => '通知';

  @override
  String get accessPrivilegeBatteryOptimization => 'バッテリーの最適化';

  @override
  String get accessStatusGranted => '許可済み';

  @override
  String get accessStatusMissing => '未許可';

  @override
  String get accessStatusNotRunning => '停止中';

  @override
  String get accessStatusRequired => '必須';

  @override
  String get accessAdbInstruction => 'Shizukuが利用できない場合は、PCからADBコマンドを実行してください。';

  @override
  String get accessAdbGrantCommand =>
      'adb shell pm grant com.goodeesh.monitune android.permission.WRITE_SECURE_SETTINGS';

  @override
  String get onboardingSkip => 'スキップ';

  @override
  String get onboardingBack => '戻る';

  @override
  String get onboardingNext => '次へ';

  @override
  String get onboardingGetStarted => 'はじめる';

  @override
  String get onboardingWelcomeTitle => 'MoniTune へようこそ';

  @override
  String get onboardingWelcomeBody =>
      '外部モニターに合わせてAndroidの表示を自在にチューニング。理想の解像度とスケーリングを設定し、ホーム画面をきれいに保ちながら横向きワイド表示に固定できます。';

  @override
  String get onboardingWelcomeBullet1 => '解像度とUIスケーリングのプリセット';

  @override
  String get onboardingWelcomeBullet2 => 'MIUI / HyperOS ランチャー保護モード';

  @override
  String get onboardingWelcomeBullet3 => '壁紙にマッチするダイナミックカラー';

  @override
  String get onboardingProblemTitle => 'Android の制約';

  @override
  String get onboardingProblemBody =>
      'スマートフォンをモニターにミラーリングすると、Androidが解像度・密度・向きを自動決定し、通常のアプリでは変更できません。';

  @override
  String get onboardingProblemBullet1 =>
      'Xiaomi MIUI/HyperOSで画面密度を変更すると、ホーム画面のアイコンがバラバラになることがあります。';

  @override
  String get onboardingProblemBullet2 => '黒帯を消したりワイド解像度を選んだりする標準機能はありません。';

  @override
  String get onboardingWhyTitle => 'なぜ Shizuku や Root が必要なのか？';

  @override
  String get onboardingWhyBody =>
      'MoniTune が実行する操作には WRITE_SECURE_SETTINGS 権限が必要で、これは特権を持つアプリにのみ許可されます。';

  @override
  String get onboardingWhyBullet1 =>
      'Shizuku はワイヤレスデバッグ経由で付与された権限によりコマンドを実行します — Root化は不要です。';

  @override
  String get onboardingWhyBullet2 => '端末がすでにRoot化されている場合は、直接Root権限を利用できます。';

  @override
  String get onboardingWhyBullet3 =>
      '高い透明性: MoniTune は画面サイズ、密度、回転の変更にのみこの権限を使用します。';

  @override
  String get onboardingPathsTitle => 'セットアップ方法を選択';

  @override
  String get onboardingPathsBody => 'どちらの方法でも同じ機能が利用可能です。';

  @override
  String get onboardingPathsShizukuTitle => 'Shizuku (Root不要)';

  @override
  String get onboardingPathsShizukuSubtitle =>
      '一般的な端末におすすめです。ワイヤレスデバッグによる一回限りの設定が必要です。';

  @override
  String get onboardingPathsRootTitle => 'Root (Magisk / KernelSU)';

  @override
  String get onboardingPathsRootSubtitle =>
      '端末が既にRoot化されている場合、MoniTune が自動で検出します。';

  @override
  String get onboardingShizukuStepsTitle => 'Shizuku のセットアップ';

  @override
  String get onboardingShizukuStepsBody =>
      'Shizuku をインストールして一度起動してください。その後の手順は MoniTune が案内します。';

  @override
  String get onboardingShizukuStep1 =>
      '公式サイトまたは GitHub Releases から Shizuku をインストールします。';

  @override
  String get onboardingShizukuStep2 =>
      'Shizuku を開き、ワイヤレスデバッグ (Android 11+) または ADB 経由で開始します。';

  @override
  String get onboardingShizukuStep3 => 'MoniTune に戻り「Shizukuで許可する」をタップします。';

  @override
  String get onboardingShizukuGuideButton => 'Shizuku セットアップガイドを開く';

  @override
  String get onboardingOneTimeTitle => '一度きりの設定';

  @override
  String get onboardingOneTimeBody =>
      'Shizuku（またはRoot）が利用可能な間に、MoniTune は自身に永続的な WRITE_SECURE_SETTINGS 権限を付与できます。';

  @override
  String get onboardingOneTimeBullet1 =>
      '一度許可すれば、以降は Shizuku も ADB も Wi-Fi も不要です。';

  @override
  String get onboardingOneTimeBullet2 => '再起動後も権限は維持されます。';

  @override
  String get onboardingOneTimeBullet3 => 'Shizuku が動作している必要があるのは、その付与の瞬間だけです。';

  @override
  String get onboardingSafetyTitle => '安心の安全機能';

  @override
  String get onboardingSafetyBody =>
      '画面サイズの変更により一時的に操作不能になるのを防ぐため、二重の安全策を備えています。';

  @override
  String get onboardingSafetyBullet1 =>
      'テストモードは、「設定を維持」をタップしない限り15秒後に自動復元されます。';

  @override
  String get onboardingSafetyBullet2 => '電源ボタンで画面をオフにすると、即座に標準解像度へ戻ります。';

  @override
  String get onboardingSafetyBullet3 =>
      'ランチャー保護モードにより密度変更をスキップし、MIUI/HyperOSのアイコン配置を守ります。';

  @override
  String get onboardingReadyTitle => '準備完了';

  @override
  String get onboardingReadyBody =>
      '続いて特権アクセスと2つの特別な権限を設定してください。その後、希望の解像度とスケールを選び、15秒の安全タイマー付きでテストできます。';

  @override
  String get onboardingReadyBullet1 =>
      '自動適用: モニター接続時に即座にプロファイルを適用し、切断時にリセットします。';

  @override
  String get onboardingReadyBullet2 =>
      '強制横向き: HyperOSランチャーを含むあらゆるアプリの向き固定を上書きします (Android 12+)。';

  @override
  String get onboardingReadyBullet3 =>
      'Android 12+では、壁紙に合わせた配色を自動取得できます (Material You)。';

  @override
  String get onboardingReadyButton => '今すぐアクセスを設定';

  @override
  String infoVersion(String version) {
    return 'バージョン $version';
  }

  @override
  String infoVersionWithBuild(String version, String buildNumber) {
    return 'バージョン $version · ビルド $buildNumber';
  }

  @override
  String get infoChecking => '確認中…';

  @override
  String get infoCheckingForUpdates => 'アップデートを確認中…';

  @override
  String get infoCheckForUpdates => 'アップデートを確認';

  @override
  String get infoDistributedVia => 'GitHub Releases より配布';

  @override
  String get infoMitLicense => 'MITライセンス · ソースコード公開中';

  @override
  String get infoPrivacyNotice => '更新確認時を除き、端末外へデータが送信されることはありません';

  @override
  String get infoOpenReleasePage => 'リリースページを開く';

  @override
  String get infoOpenReleases => 'GitHub Releases を開く';

  @override
  String get infoNoBrowser => 'Webブラウザが見つかりません。';

  @override
  String infoUpdateAvailable(String version) {
    return 'MoniTune $version が利用可能です。';
  }

  @override
  String infoNewVersionAvailable(String version) {
    return '新しいバージョン $version があります';
  }

  @override
  String infoUpdateUpToDate(String version) {
    return '最新バージョン ($version) を使用しています。';
  }

  @override
  String get infoUpdateUpToDateShort => '最新です';

  @override
  String get infoUpdateFailed => 'アップデートの確認に失敗しました';

  @override
  String get infoRateLimit => '現在 GitHub のリクエスト制限にかかっています。数分後に再試行してください。';

  @override
  String infoStatusError(int statusCode) {
    return 'GitHub からエラーステータス $statusCode が返されました。';
  }

  @override
  String get infoUnexpectedResponse => 'GitHub から予期しない応答を受信しました。';

  @override
  String get infoNoRelease => 'リリース情報が見つかりませんでした。';

  @override
  String get infoTimeout => 'GitHub への接続がタイムアウトしました。';

  @override
  String get infoNoNetwork => 'ネットワークに接続されていません。';

  @override
  String get infoGenericError => 'アップデートを確認できませんでした。';

  @override
  String get safetyEmergencyRevertHint => '画面をオフ（電源ボタン）にすると即座にキャンセルして元の設定に戻ります';

  @override
  String safetyTestRevertCountdown(int seconds) {
    return '確定しない場合、$seconds秒後に自動で元に戻ります';
  }
}
