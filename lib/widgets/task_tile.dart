import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function deleteTask;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTask,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),

      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
