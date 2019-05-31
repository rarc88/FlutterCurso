import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.contacts,
            size: 150,
            color: Colors.blueGrey,
          ),
          Text('Tab Contact'),
        ],
      ),
    );
  }
}