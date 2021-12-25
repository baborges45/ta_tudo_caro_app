import 'package:flutter/material.dart';
import 'modules/pages/create_account/create_account_page.dart';
import 'modules/pages/login/login_page.dart';
import 'modules/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tá Caro',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SpalshPage(),
        "/login": (context) => LoginPage(),
        "/create-account": (context) => CreateAccountPage(),
      },
    );
  }
}
