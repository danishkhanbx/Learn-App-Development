import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          padding: EdgeInsets.only(top: 40.0, left: 10.0),
          child: Column(
            children: <Widget>[

              Row(
                children: <Widget>[

                  Expanded(
                      child: Text(
                    "Spice Jet",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )),

                  Expanded(
                      child: Text(
                    "Mumbai -> Banglore",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  )),

                ],
              ),

              Row(
                children: <Widget>[

                  Expanded(
                      child: Text(
                    "Air India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  )),

                  Expanded(
                      child: Text(
                    "Lucknow -> Goa",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  )),

                ],
              ),

              FlightImageAsset(),

            ],
          )

      ),
    );
  }
}

class FlightImageAsset extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/flight.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);
    return Container(child: image,);
  }

}