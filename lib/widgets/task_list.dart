import 'package:flutter/material.dart';
import 'package:to_do_manager/widgets/task_tile.dart';
import 'package:to_do_manager/models/task_data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TaskData>(context).fetchTask(index).name,
            isChecked: Provider.of<TaskData>(context).fetchTask(index).isDone,
            checkboxCallback: (bool checkBoxState) {
                Provider.of<TaskData>(context, listen: false).updateTaskState(index);
            },
            deleteTask: (){
              Provider.of<TaskData>(context, listen: false).deleteTask(index);
            },
        );
      },
      itemCount: Provider.of<TaskData>(context).getLength(),
    );
  }
}

