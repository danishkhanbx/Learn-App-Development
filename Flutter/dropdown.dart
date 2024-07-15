import 'package:flutter/material.dart';

void main(){

  runApp(
    MaterialApp(
      title: "Stateful App Example",
      home: FavoriteCity(),
    )
  );

}

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity>{

  var _currencies = ['Rupee', 'Pound', 'Dollar', 'Other' ];
  var _currentItemSelected = 'Rupee';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),

      body: Container(
        child: Column(
          children: [

            DropdownButton<String>(

                items: _currencies.map((String dropDownStringItem){
                  return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                  );
                }).toList(),

                onChanged: (String? newValueSelected) {
                  if (newValueSelected != null){
                    _onDropDownItemSelected(newValueSelected);
                  }
                },

              value: _currentItemSelected,
            ),

          ],

        ),
      ),

    );
  }

  void _onDropDownItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }

}