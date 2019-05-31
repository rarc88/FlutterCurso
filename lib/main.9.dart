import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Router'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text('Siguiente'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Second()
                )
              );
            },
          ),
        )
      ),
    );
  }
}

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Router'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text('Atras'),
            onPressed: () {
              Navigator.pop( context);
            },
          ),
        )
      ),
    );
  }
}