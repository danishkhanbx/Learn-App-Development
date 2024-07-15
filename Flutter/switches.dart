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

  bool _value1 = false;
  bool _value2 = false;

  void _onChange1(bool? value) => setState(() => _value1 = value?? false);
  void _onChange2(bool? value) => setState(() => _value2 = value?? false);
  
  
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
            new Switch(value: _value1, onChanged: _onChange1),
            new SwitchListTile(
              value: _value2,
              onChanged: _onChange2,
              title: new Text(
                "Hello World",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}