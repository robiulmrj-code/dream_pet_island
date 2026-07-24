/// A common contract for application-level services.
///
/// Concrete services (e.g. storage, audio, analytics) implement this
/// interface so they can be initialized through a single, consistent
/// lifecycle method. This defines the shape only — it has no service
/// registry, no dependency injection, and no concrete implementations.
abstract interface class AppService {
  /// Performs any setup required before this service can be used.
  Future<void> init();
}
