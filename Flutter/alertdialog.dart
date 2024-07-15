import 'package:flutter/material.dart';
import 'dart:async';

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

  Future _showAlert(BuildContext context, String message) async{
    return showDialog(
      context: context,
      builder: (BuildContext){
        return AlertDialog(
          title: Text(message),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text('Ok'),),  // instead of FlatButton
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('Add Widgets Here'),
            ElevatedButton(onPressed: () => _showAlert(context, "Are you sure?"), child: Text("Click Me"))
          ],
        ),
      ),
    );
  }
}