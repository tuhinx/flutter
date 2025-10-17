import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),);
  }
}

mySuccessful(){
  Fluttertoast.showToast(
    msg: 'Worked Successful', // Message to display in the toast
    backgroundColor: Colors.white, // Background color of the toast
    textColor: Colors.black, // Text color of the toast
    toastLength: Toast.LENGTH_SHORT, // Duration of the toast
    gravity: ToastGravity.BOTTOM, // Position of the toast
    timeInSecForIosWeb: 1, // iOS-specific setting

  );
}


mySuccessfults(BuildContext context) {
  toastification.show(
    context: context, // optional if you use ToastificationWrapper
    title: Text('Hello, world!'),
    alignment: Alignment.bottomCenter,
    style: ToastificationStyle.flatColored,
    type: ToastificationType.success,
    autoCloseDuration: const Duration(seconds: 2),
    icon: Icon(Icons.verified),
    showIcon: true,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      ),

    ],
  );
}



mySnackBar(message,context){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container PP", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.orangeAccent,
      ),
      body: InkWell(
        onTap: () {
          print("gdf") ;
          //mySnackBar("Clicked", context);
         // mySuccessfults(context);
          mySuccessful();
        },
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            transform: Matrix4.rotationZ(0.2),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.deepOrange,width: 3),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
            ),
            child: Text(
              "Hello World",
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );

  }

}

