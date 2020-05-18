import 'package:flutter/material.dart';
import 'task_listview.dart';

class AssignmentScreen extends StatefulWidget {
  static const String id = 'assignment_screen';
  @override
  _AssignmentScreenState createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
       onPressed: (){

       },
        backgroundColor: Colors.deepPurpleAccent,
       child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        leading: Icon(Icons.assessment),
        title: Text('To-Do Assignments'),
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
            child: TasksList(),

          ),

        ),

      ),

    );
  }
}
