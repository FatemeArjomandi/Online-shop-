import 'package:flutter/material.dart';
import 'package:flutter_application_5/login.dart';
import 'package:flutter_application_5/selector.dart';
import 'package:flutter_application_5/signup.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const titlestyle = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.w800,
      fontFamily: 'Irs',
      fontSize: 20,
      letterSpacing: 0.5);

  @override
  Widget build(BuildContext context) {
    Widget example = SplashScreenView(
      navigateRoute: const Selector(),
      duration: 4000,
      imageSize: 200,
      pageRouteTransition: PageRouteTransition.Normal,
      imageSrc: 'images.jpeg',
      speed: 100,
      text: 'به فروشگاه من خوش آمدید',
      textStyle: titlestyle,
      textType: TextType.TyperAnimatedText,
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: example,
      //
    );
  }
}
