import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyDialog createState() => _MyDialog();
}

class _MyDialog extends State<MyApp> {
  String _value = '';
  final navigatorKey = GlobalKey<NavigatorState>();

  void _onChanged(String value) {
    _value = value;
    setState(() {});
  }

  void _showAlert() {
    final context = navigatorKey.currentState.overlay.context;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: new Text('Alert Title'),
          content: new Text(_value),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Alert Dialog'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(hintText: 'Ingrese un mensaje'),
                  onChanged: (String value) { _onChanged(value); },
                ),
                Padding(padding: const EdgeInsets.only(bottom: 10.0),),
                RaisedButton(
                  child: Text('Ver alerta'),
                  onPressed: () { _showAlert(); },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}