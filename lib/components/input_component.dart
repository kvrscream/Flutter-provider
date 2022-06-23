import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputComponent extends StatefulWidget {
  final String? place;
  final Icon? icon;
  final void Function(String value) onChanged;
  const InputComponent(
      {Key? key, this.place, this.icon, required this.onChanged})
      : super(key: key);

  @override
  State<InputComponent> createState() => _InputComponentState();
}

class _InputComponentState extends State<InputComponent> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.place,
        hintText: widget.place,
        prefixIcon: widget.icon,
      ),
    );
  }
}
