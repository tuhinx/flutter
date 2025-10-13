import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> myList = [];
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    for (int i = 1; i < 50; i++) {
      myList.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar Section
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("ListView Class", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      // Body Section
      body: buidlistViews(),
      // BottomNavigationBar Section
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: "ListView",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: "Vertical",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.line_style),
            label: "Horizontal",
          ),
        ],
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }

  Widget? buidlistViews() {
    if (index == 0) {
      return listViews();
    } else if (index == 1) {
      return verticalListView();
    } else {
      return horizontalListView();
    }
  }

  Widget? listViews() {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("Ak", style: TextStyle(color: Colors.white)),
          ),
          title: Text("Ab Karim"),
          subtitle: Text("Flutter Dev"),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("Bk", style: TextStyle(color: Colors.white)),
          ),
          title: Text("Bb Karim"),
          subtitle: Text("Flutter Dev"),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("Ck", style: TextStyle(color: Colors.white)),
          ),
          title: Text("Cb Karim"),
          subtitle: Text("Flutter Dev"),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text("Dk", style: TextStyle(color: Colors.white)),
          ),
          title: Text("Db Karim"),
          subtitle: Text("Flutter Dev"),
          trailing: Icon(Icons.star, color: Colors.orange),
        ),
      ],
    );
  }

  // For Vertical ListView
  Widget? verticalListView() {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(color: Colors.grey);
      },
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Text(
              "${myList[index]}",
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text("Ab Karim"),
          subtitle: Text("Flutter Dev"),
          trailing: Icon(Icons.star, color: Colors.orange),
        );
      },
    );
  }

  // For Horizontal ListView
  Widget? horizontalListView() {
    return ListView.separated(
      padding: EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 100,
          height: 50,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "${myList[index]}",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(color: Colors.grey),
      itemCount: myList.length,
    );
  }
}
