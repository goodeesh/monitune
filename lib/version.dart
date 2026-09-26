/// The single source of truth for the user-facing version string.
///
/// Kept in sync with `pubspec.yaml` by a test (`test/version_test.dart`), which
/// fails the build if the two ever disagree.
class AppVersion {
  AppVersion._();

  static const String current = '1.0.1';
}
