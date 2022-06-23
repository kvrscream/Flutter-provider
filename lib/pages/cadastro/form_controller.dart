import 'package:flutter/material.dart';
import 'package:my_app/providers/taskRepository.dart';
import 'package:provider/provider.dart';

class FormController {
  final fomrKey = GlobalKey<FormState>();
  String? _task;
  var ctx;
  FormController(context) {
    ctx = context;
  }

  onChange(String task) {
    _task = task;
  }

  saveTask() {
    final form = fomrKey.currentState;
    Provider.of<TaskRepository>(ctx, listen: false).saveTask(_task!);
//    TaskRepository().saveTask(_task!);
  }
}
