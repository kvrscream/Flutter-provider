import 'dart:collection';

import 'package:flutter/material.dart';

class TaskRepository extends ChangeNotifier {
  List<String> _tasks = [];

  List<String> get tasks => _tasks;

  saveTask(String task) {
    if (!_tasks.contains(task)) {
      _tasks.add(task);
    }
    notifyListeners();
  }

  removeTask(String task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
