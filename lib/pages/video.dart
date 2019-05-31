import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.ondemand_video,
            size: 150,
            color: Colors.greenAccent,
          ),
          Text('Tab Video'),
        ],
      ),
    );
  }
}