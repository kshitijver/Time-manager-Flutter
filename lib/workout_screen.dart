import 'package:timemanager/main.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  static const String id = 'workout_screen';

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30.0,
        ),
        elevation: 10.0,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),

    );
  }
}
