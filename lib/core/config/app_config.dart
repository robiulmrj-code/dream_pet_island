/// Static, build-time configuration values for Dream Pet Island.
///
/// These are compile-time constants only. There is no environment loading,
/// no remote configuration, and no runtime logic here — just the fixed
/// identity values for this application.
///
/// Keep [appVersion] and [buildNumber] in sync with the `version` field in
/// `pubspec.yaml`.
abstract final class AppConfig {
  /// The display name of the application.
  static const String appName = 'Dream Pet Island';

  /// The name of the studio publishing the application.
  static const String studioName = 'Dream Pet Studio';

  /// The semantic version of the application, matching `pubspec.yaml`.
  static const String appVersion = '1.0.0';

  /// The build number of the application, matching `pubspec.yaml`.
  static const String buildNumber = '1';

  /// The email address for user support inquiries.
  static const String supportEmail = 'support@dreampetstudio.example';

  /// The public website for Dream Pet Studio.
  static const String companyWebsite = 'https://www.dreampetstudio.example';
}
