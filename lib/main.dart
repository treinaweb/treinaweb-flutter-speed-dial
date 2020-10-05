import 'package:flutter/material.dart';
import 'package:flutter_speed_dial_app/home.dart';

void main()=>runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
