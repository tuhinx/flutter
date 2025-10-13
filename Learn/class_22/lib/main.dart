import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'GridView Count Class',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text("1", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),

    );
  }
}
