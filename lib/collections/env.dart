import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(requireEnvFile: true, obfuscate: true)
class Env {
  @EnviedField(varName: 'GEMINI_API_KEY')
  static final String geminiApiKey = _Env.geminiApiKey;

  @EnviedField(varName: 'SUPABASE_URL')
  static final String supabaseUrl = _Env.supabaseUrl;

  @EnviedField(varName: 'SUPABASE_ANON_KEY')
  static final String supabaseAnonKey = _Env.supabaseAnonKey;

  @EnviedField(varName: 'TEST_USER_EMAIL')
  static final String email = _Env.email;

  @EnviedField(varName: 'TEST_USER_PASSWORD')
  static final String password = _Env.password;
}
