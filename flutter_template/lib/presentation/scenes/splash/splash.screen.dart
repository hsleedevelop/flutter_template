import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/async/flutter_async.dart';
import '../../../core/mixins/after_layout.mixin.dart';
import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const _SplashScreenView();
  }
}

class _SplashScreenView extends StatelessWidget {
  const _SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    delay(() {
      context.go(RoutePath.main);
    }, 1000.milliseconds,);

    return simpleSplash();
  }

  Widget simpleSplash() {
    return Scaffold(
      body: Center(child: "Splash".text.size(50).bold.make()),
    );
  }
}
