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

  List<BottomNavigationBarItem> _items = [];
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.people)));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.weekend)));
    _items.add(BottomNavigationBarItem(icon: Icon(Icons.message)));
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
            new Text(_value),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item){
          setState(() {
            _index = item;
            _value = "Current Vaue is: ${_index.toString()}";
          });
        },
      ),

    );
  }
}