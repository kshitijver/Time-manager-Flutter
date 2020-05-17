import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:timemanager/welcom_screen.dart';
import 'package:table_calendar/table_calendar.dart';

void f({@required int x}) {}

void g(x) {
  x.f();
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Row(
          children: <Widget>[
            Icon(
              Icons.home,
            ),
            Text(
              'HOME',
              style: TextStyle(
                fontFamily: 'Pangolin',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Card(

            color: Color(0xFF92D1D8),
            child: TableCalendar(
              initialCalendarFormat: CalendarFormat.week,

              calendarStyle: CalendarStyle(
                todayColor: Colors.red,

                outsideWeekendStyle: TextStyle(
                  color: Colors.blue,
                ),
                weekendStyle: TextStyle(
                  color: Colors.blue,
                ),
                selectedColor: Colors.blue,
                outsideHolidayStyle: TextStyle(
                  color: Colors.blue,
                ),
                holidayStyle: TextStyle(
                  color: Colors.blue,
                ),
                weekdayStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                )
              ),
              calendarController: _controller,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'images/clock2.png',
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'ASSIGNMENTS',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'QUIZ',
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Enable opening the drawer with a swipe gesture.
      drawerEnableOpenDragGesture: true,
      backgroundColor: Color(0xFF92D1D8),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Color(0xFF92D1D8),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back_ios),
                  Text('Back'),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
