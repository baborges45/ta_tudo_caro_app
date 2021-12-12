import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

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
              onChanged: print,
              validator: (value) =>
                  isEmail(value) ? null : "Digite um email válido!",
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Senha",
              hint: "Digite sua senha",
              obscure: true,
              onChanged: print,
              validator: (value) =>
                  value.length >= 6 ? null : "Digite um email válido!",
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
