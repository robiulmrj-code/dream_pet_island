import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';

/// Production navigation foundation for Dream Pet Island.
///
/// This only wires up the global [navigatorKey] and a Navigator
/// 2.0-compatible `onGenerateRoute` pipeline. Only the default route is
/// mapped to a real screen ([HomePage]) so far; every other route
/// resolves to the same placeholder page.
abstract final class AppRouter {
  /// Global navigator key so navigation can be triggered without a
  /// [BuildContext] (e.g. from services outside the widget tree).
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// Resolves [settings] into a [Route].
  ///
  /// The default route resolves to [HomePage]; every other route
  /// currently resolves to the same "not implemented" placeholder
  /// because no further screens have been built yet.
  static Route<void> onGenerateRoute(RouteSettings settings) {
    if (settings.name == Navigator.defaultRouteName) {
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (context) => const HomePage(),
      );
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (context) => const _NotImplementedPage(),
    );
  }
}

/// Placeholder page shown for any route with no screen implemented yet.
class _NotImplementedPage extends StatelessWidget {
  const _NotImplementedPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Not implemented')),
    );
  }
}
