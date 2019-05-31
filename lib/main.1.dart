import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Curso de Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Curso de Flutter')
        ),
        body: new Container(
          child: new Center(
            child: new Text('Hello World!')
          ),
        ),
      )
    )
  );
}