import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_manager/screens/tasks_screen.dart';
import 'package:to_do_manager/models/task_data.dart';

void main() => runApp(WelcomeScreen());

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
