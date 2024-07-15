import 'package:flutter/material.dart';

/* Using Stateful Widgets:
1. Create a class that extends a "StatefulWidget", that returns a State in "createState()"
2. Create a "State" class, with properties that may change
3. Within "State" class, implement the "build()" method
4. Call the setState() to make the changes. Calling setState() tells framework to redraw widget. */

void main(){

  runApp(
    MaterialApp(
      title: "Stateful App Example",
      home: FavoriteCity(),
    )
  );

}
// Classes that inherit "StatefulWidget" are immutable.
class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

// But, the State is mutable.
class _FavoriteCityState extends State<FavoriteCity>{

  String nameCity = '';

  @override
  Widget build(BuildContext context) {

    debugPrint('Favorite City widget is created');

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),

      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint('set State is called, this tells the framework to redraw the FavCity widget');
                  nameCity = userInput;
                });
              },
            ),
            Padding(padding: EdgeInsets.all(30.0),
              child: Text(
                'Your best city is $nameCity',
                style: TextStyle(fontSize: 20.0),
            ))
          ],

        ),
      ),

    );
  }

}