// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';

class CreateAccountController {
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _name = "";

  ///essa function recebe as String [email], [senha] e [name]
  ///e capturas os valores digitados na LoginPage
  void onChange({String? email, String? password, String? name}) {
    _email = email ?? _email;
    _password = password ?? _password;
    _name = name ?? _name;
    print("email: $_email | password: $_password | name: $_name");
  }

  ///Faz a validação dos campos [email], [senha] e [name] salvando se foi digitado
  ///com de acordo da validação de cada campo
  bool validate() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void createAccountValidate() {
    if (validate()) {
      print('Pode chamar o backend!');
    }
  }
}
