import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/pages/cadastro/form_page.dart';
import 'package:my_app/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Provider",
      initialRoute: "/Home",
      routes: {
        "/Home": (context) => HomePage(),
        "/Form": (context) => FormPage()
      },
    );
  }
}
