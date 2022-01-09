import 'package:all_app/pages/welcom.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';


void main() {
  runApp(const Splash2());
}

class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const Welcome(),
      duration: 5000,
      imageSize: 450,
      imageSrc: "images/logo.png",
      text: "أكاديمية التعليم الإلكتروني",
      textType: TextType.ScaleAnimatedText,
      textStyle: const TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
