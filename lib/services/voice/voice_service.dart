import 'dart:async';

import 'package:speech_to_text/speech_to_text.dart' as stt;

class VoiceService {
  final stt.SpeechToText _speech = stt.SpeechToText();

  /// Start voice recognition and return transcribed text
  Future<String> listenToVoice() async {
    bool available = await _speech.initialize();
    if (!available) throw Exception("Speech recognition not available");

    final completer = Completer<String>();

    _speech.listen(
      onResult: (result) {
        if (result.finalResult) {
          _speech.stop();
          completer.complete(result.recognizedWords);
        }
      },
    );

    return completer.future.timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        _speech.stop();
        throw Exception("Voice recognition timed out");
      },
    );
  }

  /// Stop listening manually (optional)
  void stopListening() {
    _speech.stop();
  }
}
