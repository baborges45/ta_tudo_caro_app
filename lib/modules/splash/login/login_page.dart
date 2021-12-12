import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 200,
            ),
            InputTexts(
              label: "Email",
              hint: "Digite seu email",
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Senha",
              hint: "Digite sua senha",
            ),
          ],
        ),
      ),
    );
  }
}
