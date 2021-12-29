import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:supabase/supabase.dart';

import 'app_database.dart';

class SupabaseDatabase implements AppDatabase {
  late final SupabaseClient client;

  SupabaseDatabase() {
    init();
  }

  @override
  void init() {
    client = SupabaseClient(
      const String.fromEnvironment("SUPABASEURL"),
      const String.fromEnvironment("SUPABASEKEY"),
    );
    if (!kReleaseMode) {
      print("Database initialiazed");
      print("URL: ${client.supabaseUrl}, KEY: ${client.supabaseKey}");
    }
  }

  @override
  Future<bool> createAccount(
      {required String email, required String password, required String name}) {
    throw UnimplementedError();
  }

  @override
  Future<bool> login({required String email, required String password}) {
    throw UnimplementedError();
  }
}
