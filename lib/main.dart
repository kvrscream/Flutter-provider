import 'package:flutter/material.dart';
import 'package:my_app/app_widget.dart';
import 'package:my_app/providers/taskRepository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskRepository(),
      child: const AppWidget(),
    ),
  );
}
