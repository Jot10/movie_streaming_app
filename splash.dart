import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:movie_streaming/navscreen.dart';
import 'package:movie_streaming/routes.dart';

//import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      router.go('/navigation');
     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>bottomnavigation(),));

    });

  }

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Container(width: mywidth,height: myheight,color: Colors.black,
            child: Center(
              child: Container(
               // duration: Duration(seconds: 3),
                
                height: 100,
                width: 100,
                child: Image.asset('assets/cinestream.png'),
              ),
            ),
          ),
         ],
       ),
    );
  }
}