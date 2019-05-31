import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyInfiniteListView();
  }
}

class MyInfiniteListView extends State<MyApp> {
  final _suggestions = <WordPair>[];
  final _saved = Set<WordPair>();

  Widget _getRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: Colors.redAccent
      ),
      onTap: () {
        if(alreadySaved)
          _saved.remove(pair);
        else
          _saved.add(pair);
        setState(() {});
      },
    );
  }

  Widget _getSuggestions() {
    return ListView.builder(
      itemBuilder: (context, i) {
        if(i.isOdd) return Divider();
        final index = i ~/ 2;
        // print('index: $index - i: $i - suggestions: ${_suggestions.length}');
        if(index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _getRow(_suggestions[index]);
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map((pair) {
            return ListTile(title: Text(pair.asPascalCase));
          });
          final divider = ListTile.divideTiles(
            context: context,
            tiles: tiles
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved')
            ),
            body: ListView(
              children: divider,
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Infinity ListView'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              _pushSaved();
            },
          )
        ],
      ),
      body: _getSuggestions(),
    );
  }
  
}