import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_text.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email").label,
                SizedBox(height: 13),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Digite seu email",
                    hintStyle: AppTheme.textStyles.hint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppTheme.colors.border),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Senha").label,
                SizedBox(height: 13),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Digite sua senha",
                    hintStyle: AppTheme.textStyles.hint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppTheme.colors.border),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
