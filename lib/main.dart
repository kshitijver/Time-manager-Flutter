import 'package:flutter/material.dart';
import 'package:timemanager/assignment_screen.dart';
import 'package:timemanager/chat_screen.dart';
import 'package:timemanager/login_screen.dart';
import 'package:timemanager/main_screen.dart';
import 'package:timemanager/registration_screen.dart';
import 'package:timemanager/welcome_screen.dart';
import 'package:timemanager/workout_screen.dart';
import 'calendar_screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(TimeManager()));
}

class TimeManager extends StatefulWidget {
  @override
  _TimeManagerState createState() => _TimeManagerState();
}

class _TimeManagerState extends State<TimeManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: MainScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        MainScreen.id: (context) => MainScreen(),
        CalendarScreen.id: (context) => CalendarScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        AssignScreen.id: (context) => AssignScreen(),
        WorkoutScreen.id: (context) => WorkoutScreen(),
      },
    );
  }
}
