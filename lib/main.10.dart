import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyMenu();
  } 
}

class MyMenu extends State<MyApp> {
  Drawer getDrawer(BuildContext context) {
    var header = DrawerHeader(
      child: Text('Menu')
    );

    var info = AboutListTile(
      child: Text('Information App'),
      applicationVersion: 'v1.0.0',
      applicationName: 'Demo drawer',
      applicationIcon: Icon(Icons.favorite),
      icon: Icon(Icons.info),
    );

    ListView listView = ListView(
      children: <Widget>[
        header,
        getItem(Icon(Icons.home), 'Home', '/home'),
        getItem(Icon(Icons.ondemand_video), 'Video', '/'),
        getItem(Icon(Icons.contacts), 'Contact', '/contact'),
        info
      ],
    );
    return Drawer(
      child: listView,
    );
  }

  ListTile getItem(Icon icon, String description, String route) {
    return ListTile(
      leading: icon,
      title: Text(description),
      onTap: () {
        Navigator.of(context).pushNamed(route);
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Menu'),
      ),
      drawer: getDrawer(context),
    );
  }
  
}