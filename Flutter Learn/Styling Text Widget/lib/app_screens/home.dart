import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple,
        width: 300.0,
        height: 200.0,
        margin: EdgeInsets.only(left: 15.0, top: 15.0),
        padding: EdgeInsets.only(right: 45.0, bottom: 45.0),

        child: Text(
            "Flight",
            textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 75.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),

      ),
    );

  }
  
}