import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/components/task_card_component.dart';
import 'package:my_app/pages/home/homeController.dart';
import 'package:my_app/providers/taskRepository.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //HomeController controller = HomeController();
    final prov = context.watch<TaskRepository>();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, "/Form");
              },
              icon: Icon(Icons.add))
        ],
        title: Text("Home"),
      ),
      body: Container(
        child: Consumer<TaskRepository>(
          builder: (context, prov, child) {
            return prov.tasks.isEmpty
                ? ListTile(
                    title: Text("Voce não tem tarefas cadastradas"),
                  )
                : ListView.builder(
                    itemCount: prov.tasks.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onLongPress: () {
                          prov.removeTask(prov.tasks[index]);
                        },
                        child: TaskCard(title: prov.tasks[index]),
                      );
                    });
          },
        ),
      ),
    );
  }
}
