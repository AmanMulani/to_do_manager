import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [];

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  int getLength() {
    return _tasks.length;
  }

  Task fetchTask(int index) {
    return _tasks[index];
  }

  void updateTaskState(int index) {
     _tasks[index].toggleDone();
     notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

}