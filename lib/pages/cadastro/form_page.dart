import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/components/input_component.dart';
import 'package:my_app/pages/cadastro/form_controller.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    FormController controller = FormController(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          child: Text("Descreva sua tarefa: "),
        ),
        Form(
          key: controller.fomrKey,
          child: InputComponent(
            place: "Tarefa",
            icon: Icon(Icons.message),
            onChanged: (value) {
              controller.onChange(value);
            },
          ),
        ),
        TextButton(
          onPressed: () {
            controller.saveTask();
          },
          child: Text("Salvar"),
        ),
      ]),
    );
  }
}
