
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../routes/routes.dart';

enum TemplateMenu {
  listTypeA,
  listTypeB,
  gridTypeA,
  toast,
  modalType,
  bottomSheet;

  String get routePath {
    switch (this) {
      case listTypeA:
        return RoutePath.listTypeA;
      case listTypeB:
        return RoutePath.listTypeB;
      case gridTypeA:
        return RoutePath.gridTypeA;
      case toast:
        return RoutePath.toast;
      case modalType:
        return RoutePath.modalType;
      case bottomSheet:
        return RoutePath.bottomSheet;
    }
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const _MainScreenView();
  }
}

class _MainScreenView extends StatelessWidget {
  const _MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Flutter Template".text.make(),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: TemplateMenu.values
                  .map(
                    (menu) => _MenuCell(menu, onTap: handleMenuTap),
                  )
                  .toList(
                    growable: false,
                  ),
            ),
          ],
        ).pSymmetric(v: 24),
      ),
    );
  }

  void handleMenuTap(TemplateMenu menu, BuildContext context) {
    context.push(menu.routePath);
  }
}

class _MenuCell extends StatelessWidget {
  final TemplateMenu menu;
  final Function(TemplateMenu, BuildContext) onTap; // Define a callback function

  const _MenuCell(this.menu, {required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: menu.name.text.bold.color(Colors.black).size(16).make(),
      onTap: () {
        onTap(menu, context);
      },
    );
  }
}