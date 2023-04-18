import 'package:bloc_project/pages/chat_messages.dart';
import 'package:bloc_project/validation_blocks/save_data.dart';
import 'package:bloc_project/validator/validator.dart';
import 'package:bloc_project/widgets/drop_down_widgets.dart';
import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/subjects.dart';

import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:text_to_speech/text_to_speech.dart';

class ChatPageProvider extends ChangeNotifier with ChatValidator {
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  // FlutterTts flutterTts = FlutterTts();
  TextToSpeech tts = TextToSpeech();
  String? selectedValue = "English";
  AnimationController? animController;
  final List<ChatMessages> chatMessages = [];
  final userLanguage = BehaviorSubject<String>();
  Stream<String> get language =>
      userLanguage.stream.transform(validatelanguage);
  Function(String) get changeUserLanguage => userLanguage.sink.add;
  final speechToText = SpeechToText();
  bool isSpeechEnabled = false;
  String lastWord = "";
  // String? language;
  // String? languageCode;
  // List<String> languages = <String>[];
  // List<String> languageCodes = <String>[];

  final openAI = OpenAI.instance.build(
    token: "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",
  );
  Future<void> sendMessages(String text) async {
    ChatMessages messages = ChatMessages(
      text: text,
      sender: "User",
      // type: "sender",
    );
    if (messages.text.isNotEmpty) {
      chatMessages.add(messages);
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: const Duration(microseconds: 300), curve: Curves.easeIn);
      notifyListeners();
    } else {
      return;
    }
    controller.clear();
    final request = CompleteText(
        prompt: messages.text, model: kTextDavinci3, maxTokens: 200);

    // ignore: deprecated_member_use
    listernResult(request);
  }

  void listernResult(CompleteText request) {
    openAI.onCompletion(request: request).asStream().listen((response) {
      ChatMessages botMessages = ChatMessages(
        text: response!.choices[0].text,
        sender: "Bot",
        // type: "receiver",
      );
      if (botMessages.text.isNotEmpty) {
        chatMessages.add(botMessages);
        scrollController.animateTo(scrollController.position.maxScrollExtent,
            duration: const Duration(microseconds: 300), curve: Curves.easeIn);
        stopListening();
        speak(botMessages);

        notifyListeners();
      }
    });
  }

  Future<void> onSlecteLanugage(String val) async {
    var lan = changeUserLanguage(val);
    if (lan != null) {
      await SaveData.saveLanguage(lan);
    }
  }

  void initialization() async {
    await initializeSpeech();
    await initializeTTS();
    changeUserLanguage(languageList.first);
  }

  Future<void> initializeTTS() async {
    // tts.getVoiceByLang();
    // initLanguages();
  }

  // Future<void> initLanguages() async {
  //   /// populate lang code (i.e. en-US)
  //   languageCodes = await tts.getLanguages();

  //   /// populate displayed language (i.e. English)
  //   final List<String>? displayLanguages = await tts.getDisplayLanguages();
  //   if (displayLanguages != null) {
  //     if (kDebugMode) {
  //       print(displayLanguages);
  //     } else {
  //       return;
  //     }
  //     languages.clear();
  //     for (final dynamic lang in displayLanguages) {
  //       languages.add(lang as String);
  //     }
  //   }
  // }

  Future<void> initializeSpeech() async {
    isSpeechEnabled = await speechToText.initialize();
    notifyListeners();
  }

  Future<void> startListering() async {
    await speechToText.listen(onResult: onSpeechResult);
    notifyListeners();
  }

  Future<void> stopListening() async {
    await speechToText.stop();
    notifyListeners();
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  Future<void> onSpeechResult(SpeechRecognitionResult result) async {
    lastWord = result.recognizedWords;

    if (result.finalResult) {
      sendMessages(lastWord);

      notifyListeners();
    }

    if (kDebugMode) {
      print(lastWord);
    }
    notifyListeners();
  }

  void onTapMic() async {
    if (speechToText.isNotListening) {
      await startListering();
    } else {
      await stopSpeak();
    }
  }

  Future<void> stopSpeak() async {
    await tts.stop();
  }

  Future<void> speak(ChatMessages chatMessages) async {
    tts.speak(chatMessages.text);
    // tts.getVoiceByLang();

    notifyListeners();
  }
}
