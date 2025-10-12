import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(
    appBar: AppBar(title: Text("Row & Column",style: TextStyle(color: Colors.white),),
    backgroundColor: Colors.blue,
    centerTitle: true,),
    body: HomePage(),
  ),));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Refat"),
        Text("Jahan"),
        Text("Tuhin"),

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Refat-1"),
            Text("Jahan-1"),
            Text("Tuhin-1"),
          ],
        )
      ],
    );
  }
}
