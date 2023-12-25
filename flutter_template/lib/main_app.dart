import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: "Main App".text.make(),
        ),
      ),
    );
  }
}
