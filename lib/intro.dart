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
import 'package:fluttertoast/fluttertoast.dart';


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
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff161b22),
      //backgroundColor: const Color(0xff232A53),
      //backgroundColor: const Color(0xffffffff),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Expanded(
           //   child:  Image.asset(
           //     'assets/images/local3.png',
           //      width: 320,
           //     // height: 250,
           //   ),
           // ),
            Container(
             // color: Colors.white70,
              width: double.infinity,
              height: 300,
              child: Image.asset(
                'assets/images/local4.png',
              //  width: 300,
              ),
            ),
            // Expanded(
            //   child: SizedBox(
            //     height: 0,
            //   ),
            // ),

        SizedBox(
              height: 40,
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
              child: Text(
                'Welcome to Billboard',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'Discover local businesses around you, instantly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lato'),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 65,
              //   color: const Color(0xffe9eff3),
              padding: EdgeInsets.fromLTRB(45, 0, 45, 20),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff057855),
                  //primary: const Color(0xff7D2AE8),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),

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
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Login()),
                  );
                },

                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                    'Have an account already? ',
                    style: TextStyle(
                        height: 1.5,
                        color: Colors.white70,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato'),
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                            color: const Color(0xffffffff),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            // decoration: TextDecoration.underline,
                            fontFamily: 'Lato'),
                      ),
                      // TextSpan(
                      //   text: ' and ',
                      //   style: TextStyle(
                      //       color: Colors.white70,
                      //       fontSize: 11,
                      //       fontWeight: FontWeight.w500,
                      //       fontFamily: 'Lato'),
                      // ),
                      // TextSpan(
                      //   text: 'Privacy Policy.',
                      //   recognizer: new TapGestureRecognizer()
                      //     ..onTap = () => Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //               builder: (context) => PrivacyPolicy()),
                      //         ),
                      //   style: TextStyle(
                      //       color: const Color(0xff7D2AE8),
                      //       fontSize: 11,
                      //       fontWeight: FontWeight.w500,
                      //       //  decoration: TextDecoration.underline,
                      //       fontFamily: 'Lato'),
                      // ),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      )

      //   body: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //
      //   Padding(
      //     padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      //     child: Center(
      //     child: Image.asset(
      //     'assets/images/brand.png',
      //       width: 100,
      //     ),
      //     ),
      //   ),
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      //         child: Text(
      //           'Welcome To Localtym',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 26,
      //               fontWeight: FontWeight.bold,
      //               fontFamily: 'Lato'),
      //         ),
      //       ),
      //
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(10, 20, 0, 30),
      //         child: Text(
      //           'Discover what\'s trending in your local area',
      //           textAlign: TextAlign.center,
      //           style: TextStyle(
      //               color: Colors.white70,
      //               fontSize: 20,
      //               fontWeight: FontWeight.w500,
      //               fontFamily: 'Lato'),
      //         ),
      //       ),
      //       // Padding(
      //       //   padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
      //       //   child: Text(
      //       //     ' Enter your mobile number to get started',
      //       //     style: TextStyle(
      //       //         color: Colors.white54,
      //       //         fontSize: 16,
      //       //         fontWeight: FontWeight.w500,
      //       //         fontFamily: 'Lato'),
      //       //   ),
      //       // ),
      //       //Expanded(child: SizedBox(height: 1,)),
      //
      //       Container(
      //         height: 50,
      //         child: Padding(
      //           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      //           child: TextField(
      // style: TextStyle(color: Colors.white70, fontSize: 20),
      // focusNode: focusNode,
      //             decoration: InputDecoration(
      //               prefixText: '+91  ',
      //               prefixStyle: TextStyle(color: Colors.white70, fontSize: 20),
      //               filled: true,
      //               fillColor: const Color(0x11ffffff),
      //              // fillColor: const Color(0x50344081),
      //               labelText: 'Phone Number',
      //               labelStyle: TextStyle(color: Colors.white54),
      //             ),
      //           ),
      //         ),
      //       ),
      //      // SizedBox(height: 1,),
      //       Container(
      //           width: double.infinity,
      //           height: 84,
      //           //   color: const Color(0xffe9eff3),
      //           padding: EdgeInsets.fromLTRB(10, 15, 10, 20),
      //           child: ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               primary: const Color(0xff7D2AE8),
      //               //primary: const Color(0xff7D2AE8),
      //               onPrimary: Colors.white,
      //               // foreground
      //             ),
      //             onPressed: () {
      //
      //               // print(conn.checkConnection(context));
      //
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => OTP()),
      //               );
      //             },
      //
      //             child: Text(
      //               'GET STARTED',
      //               style: TextStyle(
      //                   fontSize: 15,
      //                   color: const Color(0xfffdfdfd),
      //                   fontFamily: 'Helvetica',
      //                   fontWeight: FontWeight.normal),
      //             ),
      //           )),
      //       // Padding(
      //       //   padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
      //       //   child: Text(
      //       //     'By continuing, you indicate that you have read and agree to our Terms of Service and Privacy Policy.',
      //       //     textAlign: TextAlign.center,
      //       //     style: TextStyle(
      //       //         color: Colors.white70,
      //       //         fontSize: 12,
      //       //         fontWeight: FontWeight.w500,
      //       //         fontFamily: 'Lato'),
      //       //   ),
      //       // ),
      //
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
      //         child: RichText(
      //           textAlign: TextAlign.center,
      //
      //           text: TextSpan(
      //             text: 'By continuing, you indicate that you have read and agree to our\n',
      //
      //             style: TextStyle(
      //               height: 1.5,
      //                 color: Colors.white70,
      //                 fontSize: 11,
      //                 fontWeight: FontWeight.w500,
      //                 fontFamily: 'Lato'),
      //             children: [
      //               TextSpan(
      //                 text: 'Terms of Service',
      //                 recognizer: new TapGestureRecognizer()..onTap = () => Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => TermsOfService()),
      //                 ),
      //                 style: TextStyle(
      //                     color: const Color(0xffffffff),
      //                     fontSize: 11,
      //                     fontWeight: FontWeight.w500,
      //                     decoration: TextDecoration.underline,
      //                     fontFamily: 'Lato'),
      //               ),
      //               TextSpan(
      //                 text: ' and ',
      //                 style: TextStyle(
      //                     color: Colors.white70,
      //                     fontSize: 11,
      //                     fontWeight: FontWeight.w500,
      //                     fontFamily: 'Lato'),
      //               ),
      //               TextSpan(
      //                 text: 'Privacy Policy.',
      //                 recognizer: new TapGestureRecognizer()..onTap = () => Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) => PrivacyPolicy()),
      //                 ),
      //                 style: TextStyle(
      //
      //                     color: const Color(0xffffffff),
      //                     fontSize: 11,
      //                     fontWeight: FontWeight.w500,
      //                     decoration: TextDecoration.underline,
      //                     fontFamily: 'Lato'),
      //               ),
      //             ],
      //               ),
      //         ),
      //       ),
      //
      //     ],
      //   ),
    );
  }
}
