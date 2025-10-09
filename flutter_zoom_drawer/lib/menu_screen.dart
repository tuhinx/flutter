
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget{
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("Menu Screen",style: TextStyle(color: Colors.white),),
      ),
    );
  }

}