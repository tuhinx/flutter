import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainActivity());
  }
}

//Snackbar
mMSnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

class MainActivity extends StatelessWidget {
  const MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar Section
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white, letterSpacing: 2),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              mMSnackBar("Notification Clicked", context);
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),

      // Drawer Section
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text("accountName"),
                accountEmail: Text("accountEmail"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mMSnackBar("Home Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mMSnackBar("Home Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mMSnackBar("Home Clicked", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mMSnackBar("Home Clicked", context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          mMSnackBar("Floating Clicked", context);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),

      // Body Section
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // GestureDetector & Container 1
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      mMSnackBar("Tree Clicked", context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Tree",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // GestureDetector & Container 2
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      mMSnackBar("House Clicked", context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "House",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // GestureDetector & Container 3
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      mMSnackBar("Orange Clicked", context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Orange",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // GestureDetector & Container 4
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      mMSnackBar("Man Clicked", context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      alignment: Alignment.center,
                      child: Text("Man", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
