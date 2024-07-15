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

enum Answers{YES, NO, MAYBE}


class _State extends State<MyApp> {

  String _value = '';
  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async{
    switch(
    await showDialog(
        context: context,
        builder: (BuildContext){
          return SimpleDialog(
            title: Text('Do you like Flutter'),
            children: [
              SimpleDialogOption(child: Text('Yes'), onPressed: (){Navigator.pop(context, Answers.YES);},),
              SimpleDialogOption(child: Text('No'), onPressed: (){Navigator.pop(context, Answers.NO);},),
              SimpleDialogOption(child: Text('Maybe'), onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
            ],
          );
        }
    )
    ){
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
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
            ElevatedButton(onPressed: _askUser, child: Text('Click Me'))
          ],
        ),
      ),
    );
  }
}