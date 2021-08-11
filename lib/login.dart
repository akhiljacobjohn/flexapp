import 'dart:async';

import 'package:atlas/otp.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var focusNode = FocusNode();
  StreamSubscription<ConnectivityResult> subscription;
  String connStr = 'false';
  final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      // Got a new connectivity status!
      connStr = result.toString();
      print(connStr);
    });
    focusNode.requestFocus();
  }

  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff0f0ff),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Text(
                'Get Started.',
                style: TextStyle(
                    color: const Color(0xff7d2ae8),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Text(
                'Enter your 10 digit mobile number to continue',
                style: TextStyle(
                    color: const Color(0xff35465c),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lato'),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              height: 50,
              child: TextFormField(
                autofocus: true,
                focusNode: focusNode,
                keyboardType: TextInputType.phone,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
                enableInteractiveSelection: false,
                style: TextStyle(
                    color: const Color(0xff353D5D),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    // letterSpacing: 1,
                    fontFamily: 'Open Sans'),
                decoration: InputDecoration(
                  hintText: "Mobile Number",
                  alignLabelWithHint: true,
                  prefixText: "+91 ",
                  prefixStyle: TextStyle(
                      color: const Color(0xff353D5D),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      // letterSpacing: 1,
                      fontFamily: 'Open Sans'),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Transform.translate(
        offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 30),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By continuing, you indicate that you have read and acknowledge Atlas\'s\n',
                        style: TextStyle(
                            color: const Color(0xff35465c),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lato',
                            wordSpacing: 1,
                            letterSpacing: 0.2),
                      ),
                      TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                              color: const Color(0xff7d2ae8),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lato'),
                          recognizer: DoubleTapGestureRecognizer()
                            ..onDoubleTap = () {
                              // Double tapped.
                            }),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(
                              color: const Color(0xff333B5C),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Lato',
                              wordSpacing: 1,
                              letterSpacing: 0.2),
                          recognizer: DoubleTapGestureRecognizer()
                            ..onDoubleTap = () {
                              // Double tapped.
                            }),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            color: const Color(0xff7d2ae8),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lato'),
                        recognizer: LongPressGestureRecognizer()
                          ..onLongPress = () {
                            // Long Pressed.
                          },
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 44,
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff7d2ae8),
                    onPrimary: Colors.white,
                    // foreground
                  ),
                  onPressed: () {

                    connStr=='false'?Fluttertoast.showToast(
                      msg: 'No Internet Connection',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                    ):Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OTP()),
                    );
                  },
                  child: Text(
                    'SEND OTP',
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xfffdfdfd),
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
