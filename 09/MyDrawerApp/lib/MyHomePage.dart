import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Drawer App'),
      ),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Kushal Desai'),
            accountEmail: Text('kushaldesai1990@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text('HC'),
            ),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Category"),
            trailing: Icon(Icons.category),
            onTap: () => Navigator.of(context).pushNamed("/a"),
          ),
          ListTile(
            title: Text("Profile"),
            trailing: Icon(Icons.person),
          ),
          Divider(),
          ListTile(
            title: Text("Setting"),
            trailing: Icon(Icons.settings),
            onTap: () => Navigator.of(context).pushNamed("/settings"),
          ),
          ListTile(
            title: Text("Close"),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Home Page')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.cloud_circle), onPressed: () {}),
    );
  }
}
