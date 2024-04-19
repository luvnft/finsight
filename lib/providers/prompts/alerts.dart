import 'dart:convert';

import 'package:finsight/services/gemini/gemini.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final jsonFormat = jsonEncode({
  "alerts": [
    {
      "title": "String",
      "description": "String",
      "level": "1 to 5 (1 being the lowest and 5 being the highest) in integer",
      "material_symbol_name": "String",
    }
  ],
  "recommendations": [
    {
      "title": "String",
      "description": "String",
    }
  ],
});

final alertsPromptProvider = FutureProvider.family((ref, String csvFile) async {
  final response = await gemini.generateContent(
    [
      Content.text(
        "Generate warnings about potential financial dangers inferred from the "
        "supplied CSV dataset that represents financial transactional data.\n"
        "The Response should be in machine readable JSON format"
        "(no markdown at all) with the following structure:\n"
        "$jsonFormat\n"
        "Here's the CSV File:\n $csvFile",
      ),
    ],
  );

  return response.text;
});
