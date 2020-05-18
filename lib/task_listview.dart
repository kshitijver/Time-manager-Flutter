import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'tasks.dart';

List<Task> tasks = [];

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          toggleCheckboxState: (bool value) {
            setState(() {
              tasks[index].done();
            });
          },
          deletingTask: () {
            setState(() {
              tasks.removeAt(index);
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
