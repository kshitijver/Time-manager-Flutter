import 'package:flutter/material.dart';
import 'package:timemanager/UserInterface/taskadder_popup.dart';
import '../UserInterface/task_listview.dart';
import '../UserInterface/tasks.dart';

class AssignmentScreen extends StatefulWidget {
  static const String id = 'assignment_screen';
  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  String enteredTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AdderPopUp(
              addedTask: (value) {
                enteredTask = value;
              },
              add: () {
                setState(() {
                  assignments.add(Task(name: enteredTask));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: Icon(Icons.assessment),
        title: Text(
          'To-Do Assignments',
          style: TextStyle(
            fontFamily: 'Piedra',
            fontSize: 25.0,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/assignmentback.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TasksList(
              variable: assignments,
            ),
          ),
        ),
      ),
    );
  }
}
