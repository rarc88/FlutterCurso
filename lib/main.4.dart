import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditText();
  }
}

class EditText extends State<MyApp> {
  String text = '';

  final TextEditingController inputControl = TextEditingController();

  void send(String value) {
    text += '$value\n';
    inputControl.text = '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditText'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Ingresa tu mensaje'),
              onSubmitted: (String value) { send(value); },
              controller: inputControl
            ),
            Padding(padding: const EdgeInsets.only(bottom: 10.0),),
            Container(
              child: Text(text),
            ),
          ]
        ),
      ),
    );
  }
}