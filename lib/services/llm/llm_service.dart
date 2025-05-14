import 'dart:convert';
import 'dart:developer';

import 'package:command_task_test/services/api/base_client.dart';

const String apiKey =
    'AIzaSyAwQNkU7C4raL3rYzHExH6InhN-fKCUnqM'; // Replace with your real key
const String geminiUrl =
    'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apiKey';

Future<Map<String, dynamic>> parseCommand(String text) async {
  Map<String, dynamic> result = {};
  await BaseClient.safeApiCall(
    geminiUrl,
    RequestType.post,
    headers: await BaseClient.generateHeaders(),
    data: {
      "contents": [
        {
          "parts": [
            {
              "text": """
You are a voice assistant for a task manager app. Extract structured data from the following command:
$text

Return a JSON object with the following format:
{
  "action": "create/update/delete",
  "title": "...",
  "description": "...", // optional
  "dateTime": "YYYY-MM-DDTHH:MM:SS"
}
""",
            },
          ],
        },
      ],
    },
    onSuccess: (response) {
      if (response.statusCode == 200) {
        final data = response.data;
        final rawText = data['candidates'][0]['content']['parts'][0]['text'];

        final cleanedJson = extractJson(rawText);
        final parsed = jsonDecode(cleanedJson);
        log("PARSED JSON++++++++++++++++++++++++++ $parsed");
        result = parsed;
      } else {
        throw Exception("No JSON object found in the response.");
      }
    },
    onLoading: () {}, // Optional
    onError: (e) {
      log("Error++++++++++++++++ ${e.message.toString()}");
      throw Exception('LLM parsing failed: ${e.message}');
    },
  );

  return result;
}

String extractJson(String rawText) {
  // Use RegExp to extract JSON block between curly braces
  final match = RegExp(r'\{[\s\S]*?\}').firstMatch(rawText);
  if (match != null) {
    return match.group(0)!; // Safe to use ! because we checked for null
  } else {
    throw Exception("No JSON object found in the response.");
  }
}
