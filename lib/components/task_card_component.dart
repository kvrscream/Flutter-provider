import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskCard extends StatefulWidget {
  final String? title;
  const TaskCard({Key? key, required this.title}) : super(key: key);

  @override
  State<TaskCard> createState() => TaskCardState();
}

class TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            child: Text(
              widget.title.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
