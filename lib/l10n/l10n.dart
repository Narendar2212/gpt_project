import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    // const Locale('ta'),
    // const Locale('kn'),
    // const Locale('ur'),
    // const Locale('sd'),
    // const Locale('pa'),
    const Locale('mr'),
    const Locale('hi'),
    // const Locale('ne'),
    // const Locale('te'),
    // const Locale('gu'),
    // const Locale('as'),
    // const Locale('sa'),
    // const Locale('zu'),
    // const Locale('xh'),
    // const Locale('af'),
    // const Locale('ts'),
    // const Locale('st'),
  ];
}

extension FullName on Locale {
  String fullName() {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'mr':
        return 'Marathi';
      case 'hi':
        return 'Hindi';
    }
    return '';
  }
}

extension LanInLocalName on Locale {
  String lanInLocalName() {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'mr':
        return 'मराठी';
      case 'hi':
        return 'हिंदी';
    }
    return '';
  }
}
