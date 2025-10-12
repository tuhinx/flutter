import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView & ListTile",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: HomePage2(),
      ),
    ),
  );
}

// HomePage Section
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),

              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              "1",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          title: Text("Item 1"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              "2",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          title: Text("Item 2"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              "3",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          title: Text("Item 3"),
          trailing: Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),

              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Text(
              "4",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          title: Text("Item 4"),
          trailing: Icon(Icons.arrow_forward),
        ),

      ],
    );
  }
}


class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

  List<int> list = [];

  @override
  void initState() {
    // TODO: implement initState

    for (int i = 1; i < 10; i++) {
      list.add(i);
      super.initState();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 2),

                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              alignment: Alignment.center,
              child: Text(
                "${list[index]}",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            title: Text("Item ${list[index]}"),
            trailing: Icon(Icons.arrow_forward),
          );
        }
    );
  }

}
