// ignore_for_file: avoid_print

import 'package:flutter/widgets.dart';
import 'package:ta_tudo_caro_app/shared/utils/app_state.dart';

class CreateAccountController extends ChangeNotifier {
  AppState state = AppState.empty();
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

  void update(AppState state) {
    this.state = state;
    notifyListeners();
  }

  ///Faz a validação dos campos [email], [senha] e [name] salvando o que foi digitado
  ///se tiver vazio cria um alerta de acordo da validação de cada campo chamando a function validate()
  Future<void> createAccountValidate() async {
    if (validate()) {
      try {
        update(AppState.loading());
        await Future.delayed(Duration(seconds: 4));
        update(AppState.success<String>('Deu certo'));
      } catch (e) {
        update(AppState.error('Não foi possível criar conta'));
      }
    }
  }
}
