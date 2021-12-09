import 'dart:async';

import 'package:atlas/otp.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var focusNode = FocusNode();
  StreamSubscription<dynamic> _connectionChangeStream;
  bool conn = false;
  final phoneNumberController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();

  }

  @override
  dispose() {
    super.dispose();

    phoneNumberController.dispose();
    _connectionChangeStream.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff0f0ff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                controller: phoneNumberController,
                autofocus: true,
                focusNode: focusNode,
                keyboardType: TextInputType.phone,
                maxLength: 10,
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
                  counterText: "",
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

                   conn == false
                        ? Fluttertoast.showToast(
                            msg: "No Connection",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.SNACKBAR,
                            // timeInSecForIosWeb: 1,
                            // backgroundColor: Colors.red,
                            // textColor: Colors.white,
                            // fontSize: 16.0
                          )
                        : Navigator.push(
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
