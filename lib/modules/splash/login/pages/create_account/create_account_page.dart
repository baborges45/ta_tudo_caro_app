import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppTheme.colors.background,
        leading: BackButton(
          color: AppTheme.colors.backButton,
        ),
        elevation: 0,
      ),
      backgroundColor: AppTheme.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Criando uma conta',
              style: AppTheme.textStyles.title,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Mantenha seus gastos em dia',
              style: AppTheme.textStyles.subTitle,
            ),
            SizedBox(
              height: 38,
            ),
            InputTexts(
              label: "Nome",
              hint: "Digite seu nome",
              onChanged: print,
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Email",
              hint: "Digite seu email",
              onChanged: print,
            ),
            SizedBox(height: 30),
            InputTexts(
              label: "Senha",
              hint: "Digite sua senha",
              obscure: true,
              onChanged: print,
            ),
            SizedBox(height: 50),
            Button(
              label: 'Criar Conta',
              onTap: () {
                print("Entrar");
              },
            ),
          ],
        ),
      ),
    );
  }
}
