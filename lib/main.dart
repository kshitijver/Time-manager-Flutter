import 'package:flutter/material.dart';
import 'package:timemanager/main_screen.dart';
import 'package:timemanager/welcome_screen.dart';




void main() => runApp(TimeManager());

class TimeManager extends StatefulWidget {
  @override
  _TimeManagerState createState() => _TimeManagerState();
}

class _TimeManagerState extends State<TimeManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
