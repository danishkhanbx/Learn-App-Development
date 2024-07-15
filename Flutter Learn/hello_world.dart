import "package:flutter/material.dart";

void main(){  // Entry point of application

  runApp(  // Inflates the widget and show it on app screen
    // Center and Text are widgets
    // In flutter, almost everything is a Widget
      Center(child: Text(
        "Hello World",
        textDirection: TextDirection.ltr
    ),
    )
  );

}