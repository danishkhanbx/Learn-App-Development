import "package:flutter/material.dart";

void main(){

  runApp(

    new MaterialApp(
      title: "First Flutter App",
      home: Scaffold(
        appBar: AppBar(title: Text("My First App Screen"),),
        body: Material(
            color: Colors.blueGrey,
            child: Center(child: Text(
                "Hello World",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.0)
            )
            )
        )
      )
      )
  );

}