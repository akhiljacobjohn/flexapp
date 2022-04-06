import 'dart:async';

import 'package:atlas/login.dart';
import 'package:atlas/privacy_policy.dart';
import 'package:atlas/signup.dart';
import 'package:atlas/terms_of_service.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:atlas/utils/enums.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'otp.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  ConnectionUtil conn = ConnectionUtil();
  var focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: const Color(0xff161b22),
      statusBarColor: const Color(0xff161b22),
    ));
    focusNode.requestFocus();
  }

  @override
  dispose() {
    super.dispose();
    conn.listener.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xff161b22),
        title: Image.asset(
          'assets/images/brand.png',
          width: 75,
          height: 75,
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff161b22),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:Image.asset(
              'assets/images/dining.png',
              // width: 300,
              // height: 300,
            ),
    ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(
                'Discover local businesses',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xffC3C3C3),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato',),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                'near you, instantly.',
                  textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xffC3C3C3),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                'The one-stop solution for all your local needs.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lato'),
              ),
            ),
         //   Expanded(child: SizedBox(height: 0,)),


          ],
        ),

        bottomNavigationBar: Transform.translate(
    offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
    child: Container(
    height: 120,
    //   color: const Color(0xffe9eff3),
    padding: EdgeInsets.fromLTRB(10, 30, 10, 40),
    child: ElevatedButton(

      style: ElevatedButton.styleFrom(
        primary: const Color(0xff057855),
        //primary: const Color(0xff7D2AE8),
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),

        // foreground
      ),
      onPressed: () {
        // print(conn.checkConnection(context));

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signup()),
        );
      },

      child: Text(
        'GET STARTED',
        style: TextStyle(
            fontSize: 15,
            color: const Color(0xfffdfdfd),
            fontFamily: 'Lato',
            fontWeight: FontWeight.w400),
      ),
    ),

    ),
    ),

    );
  }
}
