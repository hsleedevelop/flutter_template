import 'package:flutter/material.dart';

import 'presentation/routes/route_mixin.dart';
import 'utils/theme/app_theme.dart';

//1. riverpod
//2. table select
//3. change state
//4. load screen
//5. viewLoad > fetch > core > dio > inject..
//6. listing
//7. pagination

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with RouteMixin {
  @override
  Widget build(BuildContext context) {
    final mainAppKey = GlobalKey();

    return MaterialApp.router(
      theme: ThemeData(
        extensions: [AppTheme.appTexts, AppTheme.appColors],
        useMaterial3: false,
        fontFamily: 'inter'
      ),
      routerConfig: routeConfig,
      key: mainAppKey,
    );
  }
}
