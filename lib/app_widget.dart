import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tá Caro',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => Container(),
        "/login": (context) => Container(),
      },
    );
  }
}
