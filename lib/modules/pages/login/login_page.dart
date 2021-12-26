import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';
import 'package:ta_tudo_caro_app/shared/widgets/button/button.dart';
import 'package:ta_tudo_caro_app/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller.addListener(
      () {
        controller.state.when(
          success: (value) => print(value),
          error: (message, _) => scaffoldKey.currentState!.showBottomSheet(
            (context) => BottomSheet(
              onClosing: () {},
              builder: (context) => Container(
                child: Text(message),
              ),
            ),
          ),
          orElse: () {},
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: AppTheme.colors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                ),
                InputTexts(
                  label: "Email",
                  hint: " email",
                  onChanged: (value) => controller.onChange(email: value),
                  validator: (value) =>
                      isEmail(value) ? null : "Digite um email válido!",
                ),
                SizedBox(height: 30),
                InputTexts(
                  label: "Senha",
                  hint: "senha",
                  obscure: true,
                  onChanged: (value) => controller.onChange(password: value),
                  validator: (value) =>
                      value.length >= 6 ? null : "Digite uma senha forte!",
                ),
                SizedBox(height: 50),
                AnimatedBuilder(
                  animation: controller,
                  builder: (_, __) => controller.state.when(
                    loading: () => CircularProgressIndicator(),
                    orElse: () => Column(
                      children: [
                        Button(
                          label: 'Entrar',
                          onTap: () {
                            controller.loginValidate();
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
