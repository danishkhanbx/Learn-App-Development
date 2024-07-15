import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  // void _showBar(){
  //   _scaffoldState.currentState.showSnackBar(SnackBar(content: Text('Hello World')));
  // }

  void _showBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Hello World')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldState,

      appBar: AppBar(
        title: Text('Name here'),
      ),

      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('Add Widgets Here'),
            ElevatedButton(onPressed: _showBar, child: Text('Click Me'))
          ],
        ),
      ),

    );
  }
}