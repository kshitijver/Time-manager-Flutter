import 'package:flutter/material.dart';
import 'package:timemanager/calendar_screen.dart';
import 'package:timemanager/constants.dart';

class MainScrollingList extends StatelessWidget {
  const MainScrollingList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
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
                fontSize: 20.0,
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
                fontSize: 20.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        GestureDetector(
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
                fontSize: 20.0,
              ),
            ),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        GestureDetector(
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
                fontSize: 20.0,
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
