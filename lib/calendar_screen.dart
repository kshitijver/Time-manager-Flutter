import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  static const String id = 'calendar_screen';
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarController calendarController;

  @override
  void initState() {
    super.initState();
    calendarController = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    calendarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Hero(
          tag: 'calendar_logo',
          child: Icon(
            Icons.event,
            size: 30.0,
          ),
        ),
        title: Text(
          'Calendar',
          style: TextStyle(
            fontFamily: 'Piedra',
            fontSize: 25.0,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        elevation: 6.0,
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/CalendarScreen.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: TableCalendar(
          calendarController: calendarController,
          locale: 'en_US',
        ),
      ),
    );
  }
}
