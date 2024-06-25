import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:steve_ai/core/global_widgets/bottom_bar_menu/bottom_bar_menu.dart';
import 'package:steve_ai/features/chat/presentation/chat_screen.dart';
import 'package:steve_ai/features/profile/presentation/profile_screen.dart';

@singleton
class RouteGenerator {
  RouteGenerator() {
    routes = _createRoutes();
  }
  GoRouter get getRoutes {
    return routes;
  }

  late GoRouter routes;
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  GoRouter _createRoutes() {
    return GoRouter(
      initialLocation: ChatScreen.path,
      navigatorKey: _rootNavigatorKey,
      routes: [
        GoRoute(
          path: ChatScreen.path,
          builder: (BuildContext context, GoRouterState state) {
            return ChatScreen();
          },
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomBarMenu(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: ProfileScreen.route,
                  builder: (context, state) => const ProfileScreen(),
                  routes: const <RouteBase>[],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
