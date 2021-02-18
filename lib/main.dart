import 'package:flutter/material.dart';
import 'package:todoapp_with_flutter/views/home_screen.dart';
import 'package:todoapp_with_flutter/views/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
  // This widget is the root of your application.

}
