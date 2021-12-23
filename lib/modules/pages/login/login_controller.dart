// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  ///essa function recebe as String [email] e [senha]
  ///e capturas os valores digitados na LoginPage
  void onChange({String? email, String? password}) {
    _email = email ?? _email;
    _password = password ?? _password;
    print("email: $_email | password: $_password");
  }

  ///Faz a validação dos campos [email], [senha] salvando se foi digitado
  ///com de acordo da validação de cada campo
  bool validate() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void loginValidate() {
    if (validate()) {
      print('Pode chamar o backend!');
    }
  }
}
