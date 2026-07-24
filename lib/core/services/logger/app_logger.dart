import 'dart:developer' as developer;

/// A minimal, dependency-free logging utility for Dream Pet Island.
///
/// Wraps Dart's built-in [developer.log] with a consistent level prefix.
/// This is a static utility only — it holds no state and cannot be
/// instantiated.
abstract final class AppLogger {
  /// Logs an informational [message].
  static void info(String message) {
    developer.log('[INFO] $message', name: 'AppLogger', level: 800);
  }

  /// Logs a warning [message].
  static void warning(String message) {
    developer.log('[WARNING] $message', name: 'AppLogger', level: 900);
  }

  /// Logs an error [message].
  static void error(String message) {
    developer.log('[ERROR] $message', name: 'AppLogger', level: 1000);
  }
}
