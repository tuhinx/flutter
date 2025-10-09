import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainScreen extends StatelessWidget {
  bool isOpen = false;

   MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            if(ZoomDrawer.of(context)!.isOpen()){
              ZoomDrawer.of(context)!.close();
            }else{
              ZoomDrawer.of(context)!.open();
            }
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        title: Text("Main Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(child: Text("Main Screen")),
    );
  }
}
