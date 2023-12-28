import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_template/dependency_injection.dart';

import 'main_app.dart';

void main(name, options) {
  final bindings = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: bindings);

  configureDependencies();

  runApp(const MainApp());
}

