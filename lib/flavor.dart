import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initializeSupabase() async {
  final config =
      await SupabaseConfig.getConfig('assets/config/supabaseConfig.json');
  await Supabase.initialize(url: config.url, anonKey: config.anonKey);
}

class SupabaseConfig extends ChangeNotifier {
  SupabaseConfig._create(dynamic configMap) {
    final config = configMap as Map<String, dynamic>;
    url = config['url'] as String;
    anonKey = config['anonKey'] as String;
  }

  late String url;
  late String anonKey;

  static Future<SupabaseConfig> getConfig(String configPath) async {
    final supabaseConfig = jsonDecode(await rootBundle.loadString(configPath));

    final config = SupabaseConfig._create(supabaseConfig);
    return config;
  }
}
