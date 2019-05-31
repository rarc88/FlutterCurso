import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final double iconSize = 30.0;
  final textStyle = new TextStyle( color: Colors.grey, fontSize: 20.0 );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Stateless Widget')
      ),
      body: new Container(
        child: Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyCard(
                title: new Text('I Love Flutter', style: this.textStyle),
                icon: new Icon(Icons.favorite, size: this.iconSize, color: Colors.redAccent)
              ),
              new MyCard(
                title: new Text('I like this', style: this.textStyle),
                icon: new Icon(Icons.thumb_up, size: this.iconSize, color: Colors.blueAccent)
              ),
              new MyCard(
                title: new Text('...', style: this.textStyle),
                icon: new Icon(Icons.queue_play_next, size: this.iconSize, color: Colors.blueAccent)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ]
          )
        )
      )
    );
  }
  
}