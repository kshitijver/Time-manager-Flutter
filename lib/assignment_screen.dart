import 'package:timemanager/main.dart';
import 'package:flutter/material.dart';

class AssignScreen extends StatefulWidget {
  static const String id = 'assign_screen';
  @override
  _AssignScreenState createState() => _AssignScreenState();
}

class _AssignScreenState extends State<AssignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
            tag: 'assignment_logo',
            child: Icon(
              Icons.assignment,
            )),
        title: Text(
          'Assignments',
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/assignscreen.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 6.0,
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {

        },
      ),
    );
  }
}
