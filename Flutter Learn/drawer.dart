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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),

      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(32.0),
          child: Column(
            children: [
              Text("Hello Drawer"),
              ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Close"),),
            ],
          ),
        ),
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