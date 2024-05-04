import 'package:finsight/collections/env.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

final gemini = GenerativeModel(
  apiKey: Env.geminiApiKey,
  model: 'gemini-1.0-pro-latest',
  requestOptions: const RequestOptions(apiVersion: 'v1beta'),
);
