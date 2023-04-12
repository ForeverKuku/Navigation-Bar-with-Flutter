import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Colors.yellowAccent,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.yellowAccent,
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.pink,
                ),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.pink),
                  accountName: Text(
                    'Paul Flomo',
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text('paul@gmail.com'),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child: Text(
                      "P",
                      style: TextStyle(fontSize: 30.0, color: Colors.blue),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home '),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Person '),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text(' My Course '),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(' Settings'),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.report),
                title: Text(' Report '),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text(' Edit Profile '),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('LogOut'),
                // onTap: () {
                //   Navigator.pop(context);
                // },
              ),
            ],
          ),
        ), //Drawer
      ),
    );
  }
}
