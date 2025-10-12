import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage2());
  }
}

 // Main HomePage Section
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Class", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16),
          width: 200,
          height: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.red, width: 2),
          ),
          transform: Matrix4.rotationZ(.4),
          child: Text("Hello", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

// For Practice HomePage -2
class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Class"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.redAccent, width: 4),
          ),
          transform: Matrix4.rotationZ(.2),
          child: Text("Hello",style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
