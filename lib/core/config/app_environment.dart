/// The set of environments Dream Pet Island can be built and run for.
enum AppEnvironment {
  /// The environment used for local development.
  development,

  /// The environment used for pre-release testing and QA.
  staging,

  /// The environment used for the live, released application.
  production,
}

/// The environment configuration for the current build.
///
/// This is a compile-time constant only. There is no environment variable
/// loading, no `.env` file parsing, and no runtime logic here — changing
/// the active environment means changing [current] directly.
abstract final class EnvironmentConfig {
  /// The environment the application is currently configured to run as.
  static const AppEnvironment current = AppEnvironment.development;
}
