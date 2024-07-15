import "package:flutter/material.dart";
import "package:flutter_app/app_screens/first_screen.dart";

void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "First Flutter App",
        home: Scaffold(
            appBar: AppBar(title: Text("My First App Screen")),
            body: FirstScreen()
        )
    );
  }

  
}