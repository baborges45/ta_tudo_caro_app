import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputTexts(
              label: "Nome",
              hint: "Digite seu nome",
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Email",
              hint: "Digite seu email",
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Senha",
              hint: "Digite sua senha",
            ),
            SizedBox(height: 50),
            Button(
              label: 'Criar Conta',
            ),
          ],
        ),
      ),
    );
  }
}
