import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SaveData {
  // static FlashData? flashData;
  static bool isAlreadyUpdatePer = false;
  // static set setFlashData(FlashData val) {
  //   flashData = val;
  // }

  // static FlashData? get getFlashData => flashData;
  static List submitList = [];
  static const String languageKey = "language";

  static set setIsAlreadyUpdate(bool val) {
    isAlreadyUpdatePer = val;
  }

  // static bool get getIsAlreadyPer => isAlreadyUpdatePer;
  // static const String lanKey = "languageKey";
  static Future<bool> saveLanguage(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(languageKey, value);
  }

  static Future<String?> getlanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(languageKey);
  }
}
