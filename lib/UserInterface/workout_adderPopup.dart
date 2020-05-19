import 'package:flutter/material.dart';

class WorkoutAdderPopUp extends StatelessWidget {
  final Function addedTask;
  final Function add;
  WorkoutAdderPopUp({this.add, this.addedTask});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: addedTask,
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            onPressed: add,
            child: Text(
              'Add',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
