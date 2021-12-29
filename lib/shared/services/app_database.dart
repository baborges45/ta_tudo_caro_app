import 'package:ta_tudo_caro_app/modules/pages/create_account/create_account_controller.dart';

///Interface para ter os dados do login ecreateAccount
abstract class AppDatabase {
  void init();

  Future<bool> login({
    required String email,
    required String password,
  });
  Future<bool> createAccount({
    required String email,
    required String password,
    required String name,
  });
}
