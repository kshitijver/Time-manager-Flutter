import 'package:flutter/material.dart';
import 'package:timemanager/welcome_screen.dart';

void main() => runApp(TimeManager());

class TimeManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
    );
  }
}
