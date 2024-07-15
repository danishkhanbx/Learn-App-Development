import 'package:flutter/material.dart';
import './app_screens/home.dart';

// Load image from Assets.
// Assets are the resources that you add locally in your app

void main(){
  runApp(MaterialApp(
    title: "Exploring UI Widgets",
    home: Home(),
  ));
}