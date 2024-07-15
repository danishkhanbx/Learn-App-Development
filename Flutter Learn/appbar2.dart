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

  int _value = 0;

  void _add() => setState(() => _value++);
  void _remove() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: _add, icon: Icon(Icons.add)),
          IconButton(onPressed: _remove, icon: Icon(Icons.remove)),
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text(_value.toString(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0)),
          ],
        ),
      ),
    );
  }
}