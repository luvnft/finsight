import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(requireEnvFile: true, obfuscate: true)
class Env {
  @EnviedField(varName: 'GEMINI_API_KEY')
  static final String geminiApiKey = _Env.geminiApiKey;
}
