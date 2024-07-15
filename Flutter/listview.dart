import 'package:flutter/material.dart';

/* For small number of list items.
* Loads all item in memory when attached to screen.
* Do not use it for large number of items since it is not memory efficient.
* Wrap ListView as "home" of Scaffold widget as it is scrollable and might overflow beyond the screen. */

void main(){
  runApp(MaterialApp(
    title: "Exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(title: Text("Basic List View"),),
      body: getListView(),
    )

  ));
}

Widget getListView(){

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("Landscape Tapped");
        },
      ),

      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),

      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),

      Text("Yet another element in List"),
      Container(color: Colors.yellow, height: 50.0,)

    ],
  );

  return listView;

}