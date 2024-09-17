import 'package:supabase_flutter/supabase_flutter.dart';

class SignInRemoteDatasource {
  SignInRemoteDatasource({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;
  final SupabaseClient _supabaseClient;

  String remoteId = '1';

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
      final res = await _supabaseClient.auth.signInWithPassword(
        email: email,
        password: password,
      );

      final session = res.session;
      final user = res.user;
  }
}
