import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  //Snackbar
  mySnackBar(message, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, letterSpacing: 1.5),
        ),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Notification Clicked", context);
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
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("Refat Jahan Tuhin"),
                accountEmail: Text("demo@gmail.com"),
                currentAccountPicture: Image.network(
                  "https://docs.flutter.dev/assets/images/flutter-logo-sharing.png",
                ),
                currentAccountPictureSize: Size(100, 50),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sell),
              title: Text("Sell"),
              onTap: () {
                mySnackBar("Sell Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                mySnackBar("Profile Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text("Report"),
              onTap: () {
                mySnackBar("Report Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text("Dev Info"),
              onTap: () {
                mySnackBar("Dev Info Clicked", context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
