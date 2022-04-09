import 'dart:async';

import 'package:atlas/intro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInit extends StatefulWidget {

  @override
  _AppInitState createState() => _AppInitState();
}

class _AppInitState extends State<AppInit> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();



  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, '/intro'));
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   systemNavigationBarColor: const Color(0xff412081),
    // ));
  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xff412081),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/images/brand.png',
            //   width: 140,
            // ),
            Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'Getting Started',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),



          ],
        ),
      ),
    );
    // return FutureBuilder(
    //   future: _initialization,
    //   builder: (context, snapshot) {
    //     // Check for errors
    //     if (snapshot.hasError) {
    //       print('Error Occured');
    //       //return SomethingWentWrong();
    //     }
    //
    //     // Once complete, show your application
    //     if (snapshot.connectionState == ConnectionState.done) {
    //        return IntroScreen();
    //     }
    //
    //     // Otherwise, show something whilst waiting for initialization to complete
    //     return new Scaffold(
    //       backgroundColor: const Color(0xff7d2ae8),
    //       body: Center(
    //         child: Container(
    //           width: 30,
    //           height: 30,
    //           child: CircularProgressIndicator(
    //             color: Colors.white,
    //           ),
    //         ),
    //       ),
    //     );
    //
    //
    //   },
    // );



    //
    //   Scaffold(
    //   backgroundColor: const Color(0xff7d2ae8),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Center(
    //         child: Image.asset(
    //           'assets/images/atlas.png',
    //           width: 110,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
