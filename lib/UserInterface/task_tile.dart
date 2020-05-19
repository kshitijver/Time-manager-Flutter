import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function deletingTask;
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckboxState;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.toggleCheckboxState,
      this.deletingTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      onLongPress: deletingTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
