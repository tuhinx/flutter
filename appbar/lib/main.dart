import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

mySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        //leading: Icon(Icons.menu),
        leading: IconButton(onPressed: (){mySnackBar("Simple Drawer", context);}, icon: Icon(Icons.menu)),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Home Activity",
          style: TextStyle(color: Colors.white, letterSpacing: 1.6),
        ),
        actions: [
          IconButton(onPressed: () {mySnackBar("Notification See", context);}, icon: Icon(Icons.notifications)),
        ],
      ),
    );
  }
}
