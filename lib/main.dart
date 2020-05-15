import 'package:flutter/material.dart';
import 'package:timemanager/main_screen.dart';
import 'package:timemanager/welcome_screen.dart';

void main() => runApp(TimeManager());

class TimeManager extends StatelessWidget {
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
