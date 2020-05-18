import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timemanager/assignment_screen.dart';
import 'package:timemanager/calendar_screen.dart';
import 'package:timemanager/login_screen.dart';
import 'package:timemanager/workout_screen.dart';
import 'constants.dart';
import 'mainscreen_scrollingUI.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
//      appBar: AppBar(
//        backgroundColor: Colors.blueAccent,
//        title: Text(
//          'Manage Time Effectively',
//          style: TextStyle(
//            fontWeight: FontWeight.bold,
//          ),
//        ),
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        backgroundColor: Colors.black,
//        items: bottomItems,
//        elevation: 20.0,
//      ),
      drawer: DrawerStyling(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 50, top: 30, right: 30, bottom: 30),
              color: Colors.lightBlueAccent.withOpacity(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.alarm,
                        size: 30.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'TI-MA',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
//                  image: DecorationImage(
//                      image: AssetImage('images/forest.jpg'),
//                      fit: BoxFit.cover),
//                  boxShadow: <BoxShadow>[
//                    BoxShadow(),
//                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: MainScrollingList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerStyling extends StatelessWidget {
  const DrawerStyling({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(

            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                  image: AssetImage('images/Drawer.jpg'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'OPTIONS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepPurple[100],
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  fontFamily: 'Pangolin',
                  letterSpacing: 2.0,

                ),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            leading: Hero(
              tag: 'chat_icon',
              child: Icon(
                Icons.chat,
              ),
            ),
            title: Text(
              'Meeting Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, CalendarScreen.id);
            },
            leading: Hero(
              tag: 'calendar_logo',
              child: Icon(
                Icons.event,
              ),
            ),
            title: Text(
              'Calendar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
           // onTap: () {
             // Navigator.pushNamed(context, AssignScreen.id);
            //},
            leading: Icon(
              Icons.assessment,
            ),
            title: Text(
              'Assignments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, WorkoutScreen.id);
            },
            leading: Icon(
              Icons.accessibility_new,
            ),
            title: Text(
              'Workout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
