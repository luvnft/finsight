import 'package:finsight/collections/env.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

final gemini = GenerativeModel(
  apiKey: Env.geminiApiKey,
  model: 'models/gemini-1.5-pro-latest',
  requestOptions: const RequestOptions(apiVersion: 'v1beta'),
);
