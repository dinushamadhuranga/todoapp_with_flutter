import 'package:todoapp_with_flutter/models/task.dart';

class TaskData {
  List<Task> _list = [
    Task('Sample Task1'),
    Task('Sample Task2'),
  ];

  List<Task> getDataList() {
    return _list;
  }

  void addTask(Task task) {
    _list.add(task);
  }

  void removeTask(Task task) {
    _list.remove(task);
  }
}
