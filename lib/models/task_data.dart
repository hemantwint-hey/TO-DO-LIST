import 'package:flutter/foundation.dart';
import 'package:todolist/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [];

  // Use a getter to protect the list from being modified elsewhere
  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}