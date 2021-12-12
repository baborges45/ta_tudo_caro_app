class LoginController {
  String _email = "";
  String _password = "";

  void onChange({String? email, String? password}) {
    _email = email ?? _email;
    _password = password ?? _password;
    print("email: $_email | password: $_password");
  }
}
