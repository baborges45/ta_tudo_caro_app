// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:ta_tudo_caro_app/shared/utils/app_state.dart';

class LoginController extends ChangeNotifier {
  AppState state = AppState.empty();

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

  ///atualiza a tela quando for executada e tiver um novo estado
  void update(AppState state) {
    this.state = state;
    notifyListeners();
  }

  ///Faz a verificação de login usando a function [update] e
  ///chama a class AppState que tem as verificações de [success] e [error]
  Future<void> loginValidate() async {
    if (validate()) {
      try {
        update(AppState.loading());
        //chamada do backend
        await Future.delayed(
          Duration(seconds: 4),
        );
        update(AppState.success<String>('Usuario Logado.'));
      } catch (e) {
        update(AppState.error('Não foi possível realizar o login.'));
      }
      print('Pode chamar o backend!');
    }
  }
}
