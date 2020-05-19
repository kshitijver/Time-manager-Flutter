import 'package:flutter/material.dart';
import 'package:timemanager/Screens/assignment_screen.dart';
import 'package:timemanager/Screens/calendar_screen.dart';
import 'package:timemanager/UserInterface/constants.dart';
import 'package:timemanager/Screens/login_screen.dart';
import 'package:timemanager/Screens/workout_screen.dart';

class MainScrollingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, LoginScreen.id);
          },
          child: Container(
            decoration: kHomeScreenCardDecoration.copyWith(
              image: DecorationImage(
                image: AssetImage('images/dribbble.png'),
                fit: BoxFit.cover,
              ),
            ),
            padding: EdgeInsets.only(top: 20, left: 25),
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: Text(
              'Chats',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                letterSpacing: 1.0,
                fontSize: 25.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CalendarScreen.id);
          },
          child: Container(
            decoration: kHomeScreenCardDecoration.copyWith(
                image: DecorationImage(
              image: AssetImage('images/calender.jpg'),
              fit: BoxFit.cover,
            )),
            padding: EdgeInsets.only(top: 20, left: 25),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Calendar',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'LobsterTwo',
                letterSpacing: 1.0,
                fontSize: 25.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AssignmentScreen.id);
          },
          child: Container(
            decoration: kHomeScreenCardDecoration.copyWith(
                image: DecorationImage(
              image: AssetImage('images/1.jpg'),
              fit: BoxFit.cover,
            )),
            padding: EdgeInsets.only(top: 20, left: 25),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Assignments',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'LobsterTwo',
                letterSpacing: 1.0,
                fontSize: 25.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, WorkoutScreen.id);
          },
          child: Container(
            decoration: kHomeScreenCardDecoration.copyWith(
                image: DecorationImage(
              image: AssetImage('images/Exercise.jpg'),
              fit: BoxFit.cover,
            )),
            padding: EdgeInsets.only(top: 20, left: 25),
            margin: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            child: Text(
              'Workout',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                letterSpacing: 1.0,
                fontSize: 25.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
