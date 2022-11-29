import 'package:flutter/material.dart';
import '../main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class Animated_splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
            duration: 1400,
            splash: Center(
              child:Stack(
                children:[
                  Image.asset('assets/logo.png' ,height: 250, width: 250, alignment: Alignment.center,),

                  SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Image.asset('assets/gif/runcat.gif',height: 120, width: 150,color: Colors.orange,),
               ],
              ),
            ),
            nextScreen: MyHomePage(),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.grey.shade200,
        );
  }
}
