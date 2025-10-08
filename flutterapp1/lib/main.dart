import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainActivity());
  }
}

class MainActivity extends StatelessWidget {
  MainActivity({super.key});

  // Sneckbar
  mySnackBar(message, context) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  //Button Style
  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25.0),
    backgroundColor: Colors.blue,
    foregroundColor: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  // AlartDialog
  myAlartDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("Alart !"),
            content: Text("Do you want to delete?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  mySnackBar("Delete Success", context);
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              ),
            ],
          ),
        );
      },
    );
  }

  // Json Array
  final MyItems = [
    {"img":"https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU", "title":"Image 1"},
    {"img":"https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU", "title":"Image 2"},
    {"img":"https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU", "title":"Image 3"},
    {"img":"https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU", "title":"Image 4"},
    {"img":"https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU", "title":"Image 5"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
        elevation: 10.0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Notification Message", context);
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
                accountName: Text("Refat Jahan Tuhin"),
                accountEmail: Text("refat765tuhin@gmail.com"),
                decoration: BoxDecoration(color: Colors.blue),
                currentAccountPicture: Image.network(
                  "https://avatars.githubusercontent.com/u/208947764?v=4",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home Drawer", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home Drawer", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home Drawer", context);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                mySnackBar("Home Drawer", context);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("Home", context);
          }
          if (index == 1) {
            mySnackBar("Profile", context);
          }
          if (index == 2) {
            mySnackBar("Setting", context);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("Floating Message", context);
        },
        elevation: 5,
        backgroundColor: Colors.amber,
        child: Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // For Row Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  // color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    "Refat",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text("Jahan"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text("Tuhin"),
                ),
                Container(
                  height: 100,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text("Tuhin"),
                ),
              ],
            ),
            //Button Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    mySnackBar("Text Button", context);
                  },
                  child: Text("Text Button"),
                ),
                ElevatedButton(
                  onPressed: () {
                    mySnackBar("Text Button", context);
                  },
                  style: buttonStyle,
                  child: Text(
                    "ElevatedButton Button",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    mySnackBar("Text Button", context);
                  },
                  child: Text("OutlinedButton Button"),
                ),
              ],
            ),

            // Dialog Alart
            Center(
              child: ElevatedButton(
                onPressed: () {
                  myAlartDialog(context);
                },
                child: Text("Click Me"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("First Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("First Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text("First Name"),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Submit",style: TextStyle(color: Colors.white),),
                      style: buttonStyle,
                    ),
                  ),
                ),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: MyItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){mySnackBar(MyItems[index]['title'], context);},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 220,
                        child: Image.network(MyItems[index]['img']!,fit: BoxFit.fill,),

                      ),
                    );
                  },
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
