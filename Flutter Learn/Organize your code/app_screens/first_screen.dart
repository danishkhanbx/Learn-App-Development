import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Material(
        color: Colors.blueGrey,
        child: Center(child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0)
        )
        )
    );
  }
  
}