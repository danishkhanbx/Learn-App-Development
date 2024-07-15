import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  String _value = '';
  void _onClick() => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onClick,
        backgroundColor: Colors.red,
        mini: true,
        child: Icon(Icons.timer),

      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Add Widgets Here')
          ],
        ),
      ),
    );
  }
}