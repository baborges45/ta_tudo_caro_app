import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/modules/splash/login/login_page.dart';
import 'package:ta_tudo_caro_app/modules/splash/login/pages/create_account/create_account_page.dart';
import 'package:ta_tudo_caro_app/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tá Caro',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/create-account",
      routes: {
        "/splash": (context) => const SpalshPage(),
        "/login": (context) => LoginPage(),
        "/create-account": (context) => CreateAccountPage(),
      },
    );
  }
}
