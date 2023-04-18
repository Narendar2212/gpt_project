import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/chat_page.dart';
import 'chat_page_provider.dart';

class SplashScreenProvider extends ChangeNotifier {
  Future<void> initiateSplash(BuildContext context) async {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider<ChatPageProvider>(
                create: (context) => ChatPageProvider(),
                child: const ChatbotScreen()),
          ),
          (route) => false);
    });
  }
}
