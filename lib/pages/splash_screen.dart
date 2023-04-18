import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/splash_screen_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final splashProvider =
          Provider.of<SplashScreenProvider>(context, listen: false);
      splashProvider.initiateSplash(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<SplashScreenProvider>(
      builder: (context, splashModel, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
          child: Container(
            alignment: Alignment.center,
            height: size.height,
            width: size.width,
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Image.asset(
                "assets/images/agrid_logo.png",
                width: size.width * 0.7,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
