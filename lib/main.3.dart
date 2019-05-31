import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String text = '';
  int i = 0;
  List<String> array = ['Prueba1', 'Prueba2', 'Prueba3'];

  void onPressButton() {
    text = array[i];
    setState(() {});
    i = i < array.length - 1 ? i += 1 : i = 0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateful Widget'),
        backgroundColor: Colors.orangeAccent
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(text, style: new TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.0)),
              RaisedButton(
                child: new Text('Actualizar', style: new TextStyle(color: Colors.white)),
                color: Colors.blueAccent,
                onPressed: onPressButton,
              ),
            ]
          ),
        ),
      ),
    );
  }
}