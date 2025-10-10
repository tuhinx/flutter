import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainActivity());
  }
}

// AlertDialog Widget
myAlartDialog(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Expanded(
        child: AlertDialog(
          title: Text("Alart Dialog"),
          content: Text("Are you Sure "),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                mySnackBar("Successful", context);
              },
              child: Text("Yes"),
            ),
          ],
        ),
      );
    },
  );
}

final ButtonStyle buttonmy = ElevatedButton.styleFrom(
  padding: EdgeInsets.all(20),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  backgroundColor: Colors.blue,
);
final ButtonStyle buttonout = OutlinedButton.styleFrom(
  padding: EdgeInsets.all(20),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  backgroundColor: Colors.blue,
);

final ButtonStyle buttontxt = TextButton.styleFrom(
  padding: EdgeInsets.all(20),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  backgroundColor: Colors.blue,
);

void mySnackBar(String message, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Notification", context);
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("accountName"),
                accountEmail: Text("accountEmail"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home", context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            myAlartDialog(context);
          },
          style: buttonmy,
          child: Text("ElevatedButton", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
