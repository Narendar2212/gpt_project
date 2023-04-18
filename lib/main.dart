import 'package:bloc_project/l10n/l10n.dart';
import 'package:bloc_project/pages/splash_screen.dart';
import 'package:bloc_project/provider/splash_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: ChangeNotifierProvider<SplashScreenProvider>(
          create: (context) => SplashScreenProvider(),
          child: const SplashScreen()),
    );
  }
}
