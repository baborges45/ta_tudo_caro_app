import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

import 'create_account_controller.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final controller = CreateAccountController();
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
        child: Form(
          key: controller.formKey,
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
                onChanged: (value) => controller.onChange(name: value),
                validator: (value) =>
                    value.isNotEmpty ? null : "Digite seu nome completo!",
              ),
              SizedBox(height: 30),
              InputTexts(
                label: "Email",
                hint: "Digite seu email",
                onChanged: (value) => controller.onChange(email: value),
                validator: (value) =>
                    isEmail(value) ? null : "Digite um email válido!",
              ),
              SizedBox(height: 30),
              InputTexts(
                label: "Senha",
                hint: "Digite sua senha",
                obscure: true,
                onChanged: (value) => controller.onChange(password: value),
                validator: (value) =>
                    value.length >= 6 ? null : "Digite um email válido!",
              ),
              SizedBox(height: 50),
              Button(
                label: 'Criar Conta',
                onTap: () {
                  controller.createAccountValidate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
