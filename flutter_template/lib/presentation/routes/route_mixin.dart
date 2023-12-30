import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/main_app.dart';
import 'package:go_router/go_router.dart';

import '../scenes/common/scenes_common_export.dart';
import '../scenes/grid_type_a/grid_type_a.screen.dart';
import '../scenes/list_type_a/list_type_a.screen.dart';
import '../scenes/main/main.screen.dart';
import '../scenes/splash/splash.screen.dart';
import 'routes.dart';

mixin RouteMixin on State<MainApp> {
  final _routeConfig = GoRouter(
    initialLocation: "/splash",
      errorBuilder: (context, state) {
        return ErrorScreen(error: state.error.toString());
      },
      routes: [
        GoRoute(
          path: RoutePath.splash,
          name: "splash",
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: RoutePath.main,
          name: "main",
          builder: (context, state) => const MainScreen(),
        ),
        GoRoute(
          path: RoutePath.listTypeA,
          name: "listTypeA",
          builder: (context, state) => const ListTypeAScreen(),
        ),
        GoRoute(
          path: RoutePath.gridTypeA,
          name: "gridTypeA",
          builder: (context, state) => const GridTypeAScreen(),
        )
      ]);

  GoRouter get routeConfig => _routeConfig;
}
