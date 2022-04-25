import 'dart:async';
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
      // appBar: AppBar(
      //  // elevation: 0,
      //   centerTitle: true,
      //   backgroundColor:const Color(0xff21262d),
      //   title: Image.asset(
      //     'assets/images/brand.png',
      //     width: 65,
      //     height: 65,
      //   ),
      // ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff161b22),
      body: Center(

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:Image.asset(
              'assets/images/dining2.png',
              width: 350,
              height: 350,
            ),
    ),
      Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child:
            Image.asset(
              'assets/images/brand_color.png',
              width: 95,
              height: 95,
            ),
      ),
         //   Expanded(child: SizedBox(height: 0,)),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'Discover local businesses',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xffC3C3C3),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'near you, instantly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xffC3C3C3),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
              child: Text(
                '✨  See what\'s new in your local area\n🔍  Search for a local business or service\n👍  Rate and review your favorite business.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 1.8,
                    color: Colors.white54,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lato'),
              ),
            ),

          ],
        ),
    ),
        bottomNavigationBar:Container(
         // color: Colors.red,
          height: 160,
          child: Column(
            children: [
            Container(
            height: 80,
            width: double.infinity,
            //   color: const Color(0xffe9eff3),
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
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

                Navigator.pushReplacement(
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
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
                child:RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                    'By continuing, you indicate that you have read and understood Flex\'s \n',
                    style: TextStyle(
                        height: 1.5,
                        color: Colors.white70,
                        fontSize: 10,
                        // fontWeight: FontWeight.w500,
                        fontFamily: 'Lato'

                    ),
                    children: [
                      TextSpan(
                        text: 'Privacy Policy ',
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PrivacyPolicy()),
                          ),
                        style: TextStyle(
                            color: const Color(0xff7D2AE8),
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            //  decoration: TextDecoration.underline,
                            fontFamily: 'Lato'),
                      ),
                      TextSpan(
                        text: ' and  ',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Lato'),
                      ),
                      TextSpan(
                        text: 'Terms of Service.',
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsOfService()),
                          ),
                        style: TextStyle(
                            color: const Color(0xff7D2AE8),
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            //  decoration: TextDecoration.underline,
                            fontFamily: 'Lato'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    //     bottomNavigationBar: Transform.translate(
    // offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
    // child: Container(
    // height: 115,
    // //   color: const Color(0xffe9eff3),
    // padding: EdgeInsets.fromLTRB(10, 30, 10, 35),
    // child: ElevatedButton(
    //
    //   style: ElevatedButton.styleFrom(
    //     primary: const Color(0xff057855),
    //     //primary: const Color(0xff7D2AE8),
    //     onPrimary: Colors.white,
    //     shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(15)),
    //
    //     // foreground
    //   ),
    //   onPressed: () {
    //     // print(conn.checkConnection(context));
    //
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => Signup()),
    //     );
    //   },
    //
    //   child: Text(
    //     'GET STARTED',
    //     style: TextStyle(
    //         fontSize: 15,
    //         color: const Color(0xfffdfdfd),
    //         fontFamily: 'Lato',
    //         fontWeight: FontWeight.w400),
    //   ),
    // ),
    //
    // ),
    // ),

    );
  }
}
