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

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int? value) => setState(() => _value1 = value?? 0);
  void _setValue2(int? value) => setState(() => _value2 = value?? 0);

  Widget makeRadios(){
    List<Widget> list = [];

    for(int i=0; i<3; i++){
      list.add(Radio(
          value: i,
          groupValue: _value1,
          onChanged: _setValue1,
      ));
    }

    Column column = Column(children: list);
    return column;
  }

  Widget makeRadioTiles(){
    List<Widget> list = [];

    for(int i=0; i<3; i++){
      list.add(RadioListTile(
          value: i,
          groupValue: _value2,
          onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text("Title $i"),
        subtitle: Text('subtitle'),
      ));
    }

    Column column = Column(children: list,);
    return column;
  }

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
            makeRadios(),
            makeRadioTiles(),
          ],
        ),
      ),
    );
  }
}