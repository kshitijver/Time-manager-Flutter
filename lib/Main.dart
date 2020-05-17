import 'package:flutter/material.dart';
import 'package:timemanager/welcom_screen.dart';

void main() => runApp(TimeManager());

class TimeManager extends StatefulWidget {
  @override
  _TimeManagerState createState() => _TimeManagerState();
}

class _TimeManagerState extends State<TimeManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: WelcomeScreen(),

    );
  }
}
