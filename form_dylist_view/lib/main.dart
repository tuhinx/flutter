import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainActivity());
  }
}

final myLists = [
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 1"},
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 2"},
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 3"},
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 4"},
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 5"},
  {"img":"https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg","title":"image 6"},
];


mySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

myAlartDialog(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Expanded(
        child: AlertDialog(
          title: Text("Alart Dialof"),
          content: Text("are you sure ?"),
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
                mySnackBar("Delete Suceesfull", context);
              },
              child: Text("Yes"),
            ),
          ],
        ),
      );
    },
  );
}

final ButtonStyle alartbutton = ElevatedButton.styleFrom(
  padding: EdgeInsets.all(20),
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);

final ButtonStyle submitbutton = ElevatedButton.styleFrom(
  minimumSize: Size(double.infinity, 60),
  padding: EdgeInsets.all(20),
  backgroundColor: Colors.blue,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);

class MainActivity extends StatelessWidget {
  MainActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Demo"),
                accountEmail: Text("demo@gmail.com"),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Mian Section
            Column(
              children: [

                Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        myAlartDialog(context);
                      },
                      style: alartbutton,
                      child: Text(
                        "Clicked Here",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // Form Section
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(label: Text("First Name"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(label: Text("Last Name"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(label: Text("Email Address"),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(onPressed: (){ mySnackBar("Submit Successful", context);},style: submitbutton, child: Text("Submit",style: TextStyle(color: Colors.white),),)
                    ),
                  ],
                ),

                // Dynamic ListView
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: myLists.length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){mySnackBar(myLists[index]['title'], context);},
                        child: Container(
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 220,
                          child: Image.network(myLists[index]['img']!,fit: BoxFit.fill,),
                        ),
                      );
                    }),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
