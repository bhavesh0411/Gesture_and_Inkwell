import 'package:flutter/material.dart';
import 'package:gestures_detector/buttons_widget.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureApp(),
    );
  }
}
