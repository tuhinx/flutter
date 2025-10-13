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
  int index = 0;
  List<int> myLists = [];

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      myLists.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "GridView Builder Class",
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: buttonNavBar(),
      body: viewBodyFrame(),
    );
  }

  Widget? viewBodyFrame() {
    if(index == 0){
      return gridViewBuilder();
    } else if (index == 1){
      return listViewBuilder();
    } else {
      return settingView();
    }
  }

  Widget? buttonNavBar() {
    return BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Grid"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
        ],
      onTap: (index){
          setState(() {
            this.index = index;
          });
      },
    );
  }

  Widget? gridViewBuilder() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: myLists.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 150,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              "${myLists[index]}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  Widget? listViewBuilder() {
    return Container(
      alignment: Alignment.center,
      child: Text("ListView Builder"),
    );
  }

  Widget? settingView() {
    return Container(
      alignment: Alignment.center,
      child: Text("Setting View"),
    );
  }


}

