import 'dart:async';

import 'package:atlas/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    IntroScreen()
                )
            )
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //  systemNavigationBarColor: const Color(0xff9146FF),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9146FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Image.asset('assets/images/atlas.png', width: 110,),
          ),
        ],
      ),
    );
  }}
