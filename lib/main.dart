import 'package:flutter/material.dart';
import 'package:flutter_application_5/selector.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget example = SplashScreenView(

      navigateRoute: const Selector(),
      duration: 4000,
      imageSize: 200,
      pageRouteTransition: PageRouteTransition.Normal,
      imageSrc: 'images.jpeg',
      speed: 100,
      text: 'Welcome to JikJikKala',
      textType: TextType.TyperAnimatedText,
      backgroundColor: Colors.white,
      
      
      ) ;  
  

    return MaterialApp(
      home:  example,
      //
      
    );
  }
}