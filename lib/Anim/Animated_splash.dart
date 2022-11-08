import 'package:flutter/material.dart';
import '../main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Animated_splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Akrobat-Semibold',
        ),
        home: AnimatedSplashScreen(
            duration: 1400,
            splash: Stack(
                children:[
                  Image.asset('assets/gif/home.gif',fit: BoxFit.fill, height: 90 ,width: 90),

                  SizedBox(
                    height: 15,
                  ),

                  Image.asset('assets/gif/runcat.gif',fit: BoxFit.fill, height: 130 ,width: 130,color: Colors.white),

                ],
            ), nextScreen: MyHomePage(),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.blueAccent,
        ),
    );
  }
}
