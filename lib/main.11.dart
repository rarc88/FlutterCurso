import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo SnackBar'),
      ),
      body: Container(
        child: Center(
          child: MyButton('SnackBar'),
        ),
      ),
    );
  } 
}

class MyButton extends StatelessWidget {
  String name = '';
  MyButton(this.name);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(name),
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Demo SnackBar'),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: 'Click',
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Demo2 SnackBar'),
                  )
                );
              },
            ),
          ),
        );
      },
    );
  }
}