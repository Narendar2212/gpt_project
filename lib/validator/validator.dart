import 'dart:async';

class ChatValidator {
  final validatelanguage = StreamTransformer<String, String>.fromHandlers(
    handleData: (language, sink) {
      if (language.isEmpty) {
        sink.addError("select Language");
      } else {
        sink.add(language);
      }
    },
  );
}
