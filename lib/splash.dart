import 'dart:async';

import 'package:atlas/intro.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  bool hasInterNetConnection = false;

  @override
  void initState() {
    super.initState();
     Timer(Duration(seconds: 2), () => Navigator.pushReplacementNamed(context, '/app-init'));
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //       systemNavigationBarColor: const Color(0xff412081),
    //     )
    // );
  //  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  void connectionChanged(dynamic hasConnection) {
    setState(() {
      hasInterNetConnection = hasConnection;
      //print(isOffline);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xff412081),
   //  backgroundColor: const Color(0xff21262d),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/brand.png',
             width: 100,
            ),
            // child:Text(
            //   'localtym',
            //   style: TextStyle(
            //       fontSize: 45,
            //       color: const Color(0xffffffff),
            //       fontFamily: 'Trebuchet MS', letterSpacing: 1,
            //       fontWeight: FontWeight.w600),
            // ),
          ),
        ],
      ),
    );
  }
}
