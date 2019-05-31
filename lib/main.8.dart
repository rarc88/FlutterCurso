import 'package:flutter/material.dart';
import 'package:flutter_curso/pages/home.dart';
import 'package:flutter_curso/pages/video.dart';
import 'package:flutter_curso/pages/contact.dart';

class MyApp extends StatefulWidget {
  @override
  _MyNavigatorTab createState() => _MyNavigatorTab();
}

class _MyNavigatorTab extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Navigation Tabs'),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Home(),
          Video(),
          Contact()
        ]
      ),
      bottomNavigationBar: Material(
        color: Colors.blueAccent,
        child: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.ondemand_video),
            ),
            Tab(
              icon: Icon(Icons.contacts),
            ),
          ],
        ),
      ),
    );
  }
}