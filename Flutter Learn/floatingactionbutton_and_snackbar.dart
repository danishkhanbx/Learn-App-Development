import 'package:flutter/material.dart';

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main(){
  runApp(MaterialApp(
    scaffoldMessengerKey: scaffoldMessengerKey,
    title: "Exploring UI Widget",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List View"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB Clicked");
        },
        child: Icon(Icons.add),
        tooltip: 'Add One More Item',
      ),
    ),

  ));
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
      content: Text(" You just tapped the $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        debugPrint("Performing dummy UNDO operation");
      },
    )
  );

  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
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
            showSnackBar(context, listItems[index]);
          },
        );
      }
  );

  return listView;
}