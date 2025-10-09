import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoom_drawer/main_screen.dart';

import 'menu_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = ZoomDrawerController();

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: ZoomDrawer(
        borderRadius: 20,
        controller: ZoomDrawerController(),
        menuScreen: MenuScreen(),
        mainScreen: MainScreen(),
        showShadow: false,
        mainScreenTapClose: true,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        // Can Change Drawer Style
        style: DrawerStyle.defaultStyle,
        angle: 0,
        mainScreenScale: 0.1,

      )
    );
  }
}
