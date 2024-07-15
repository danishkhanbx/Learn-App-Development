import 'package:flutter/material.dart';

/* Steps to Implement Long List:
1. Prepare the Data Source.
2. Convert Data Source into Widgets.
3. Use Widgets as children of a ListView. */

void main(){
  runApp(MaterialApp(
    title: "Exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List View"),),
      body: getListView(),
    )

  ));
}

List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "Items $counter");
  return items;
}

Widget getListView(){

  var listItems = getListElements();

  var listView = ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: () {
            debugPrint("${listItems[index]} was tapped");
          },
        );
      }
  );

  return listView;
}