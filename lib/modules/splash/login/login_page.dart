import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              obscure: true,
            ),
            SizedBox(height: 50),
            Button(
              label: 'Entrar',
              onTap: () {
                print("Entrar");
              },
            ),
            SizedBox(height: 30),
            Button(
              label: 'Criar Conta',
              type: ButtonType.outline,
              onTap: () {
                Navigator.pushNamed(context, "/create-account");
              },
            ),
          ],
        ),
      ),
    );
  }
}
