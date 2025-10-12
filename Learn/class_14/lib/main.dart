import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainActivity());
  }
}

// StateLess Widgets
class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Class 14", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
          child: MainActivity2()
      ),
    );
  }
}
// SnackBar Section
mySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), duration: Duration(seconds: 2)),
  );
}

// StateFull widgets
class MainActivity2 extends StatefulWidget {
  const MainActivity2({super.key});

  @override
  State<MainActivity2> createState() => _MainActivity2State();
}

class _MainActivity2State extends State<MainActivity2> {
  String myName = "";
  String myNames = "";

  @override
  void initState() {
    // TODO: implement initState
    myName = "Hello";
    myNames = "My Name is Tuhin";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // InkWell With Container Section
          InkWell(
            onTap: () {
              setState(() {
                myName = "Tuhin";
                mySnackBar(myName, context);
              });
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(myName, style: TextStyle(color: Colors.white)),
            ),
          ),

          // Button Section With Changeable Text
          Column(
            children: [
              Text(myNames),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      myNames = "My Name is Tuhinx";
                      mySnackBar(myNames, context);
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  ),
                  child: Text("Click Button", style: TextStyle(color: Colors.white))
              ),
            ],
          ),


        ],
      ),
    );
  }
}
