import 'package:flutter/material.dart';
import 'home_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home': (_) => HomeScreen(),
    },));
}