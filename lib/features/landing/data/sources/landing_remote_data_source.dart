import 'package:supabase_flutter/supabase_flutter.dart';

class LandingRemoteDatasource {
  LandingRemoteDatasource({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;
  final SupabaseClient _supabaseClient;

  String remoteId = '1';

}
