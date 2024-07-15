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
  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Add Widgets Here')
          ],
        ),
      ),

      persistentFooterButtons: [
        IconButton(onPressed: () => _onClick("Button 1"), icon: Icon(Icons.timer)),
        IconButton(onPressed: () => _onClick("Button 2"), icon: Icon(Icons.people)),
        IconButton(onPressed: () => _onClick("Button 3"), icon: Icon(Icons.map)),
      ],

    );
  }
}