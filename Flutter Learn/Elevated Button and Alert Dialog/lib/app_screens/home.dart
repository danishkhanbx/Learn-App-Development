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

              FlightBookButton(),

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

class FlightBookButton extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: ElevatedButton(
        child: Text(
            "Book Your Flight",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        ),
        onPressed: () => bookFlight(context)
        ),
    );
  }

  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );
    
    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog

    );
  }

}