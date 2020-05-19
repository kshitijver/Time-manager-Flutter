import 'package:timemanager/main.dart';
import 'package:flutter/material.dart';
import 'package:timemanager/taskadder_popup.dart';
import 'task_listview.dart';
import 'tasks.dart';

class WorkoutScreen extends StatefulWidget {
  static const String id = 'workout_screen';

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen>{
  String enteredTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Hero(
            tag: 'workout_logo',
            child: Icon(
              Icons.accessibility_new,
            ),),
        title: Text(
          'Workout',
          style: TextStyle(
            fontFamily: 'Piedra',
            fontSize: 25.0,
            letterSpacing: 1.5,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgroundworkout.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TasksList(),
        ),
      ),
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
                  tasks.add(Task(name: enteredTask));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30.0,
        ),
        elevation: 10.0,
        backgroundColor: Colors.white,

      ),

    );
  }
}
