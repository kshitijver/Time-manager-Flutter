import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'tasks.dart';

List<Task> assignments = [];
List<Task> workouts = [];

class TasksList extends StatefulWidget {
  final variable;
  TasksList({this.variable});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.variable[index].name,
          isChecked: widget.variable[index].isDone,
          toggleCheckboxState: (bool value) {
            setState(() {
              widget.variable[index].done();
            });
          },
          deletingTask: () {
            setState(() {
              widget.variable.removeAt(index);
            });
          },
        );
      },
      itemCount: widget.variable.length,
    );
  }
}
