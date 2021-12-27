import 'dart:async';

import 'package:atlas/pincode.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'get_started.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var focusNode = FocusNode();



  @override
  void initState() {
    super.initState();

        }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


        resizeToAvoidBottomInset:false,
        backgroundColor: const Color(0xff232A53),
        //backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          titleSpacing: -10,
          backgroundColor: const Color(0xff232A53),
          // backgroundColor: const Color(0xff3c4852),
        //  elevation: 0,
        //  automaticallyImplyLeading: false,
           title: Text('OTP', style: TextStyle(color: const Color(0xaaffffff), fontSize: 24,  fontFamily: 'Helvetica', fontWeight: FontWeight.w600),),
         // centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            //     padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            //     child: Text(
            //       'OTP',
            //       style: TextStyle(
            //           color: const Color(0xff7d2ae8),
            //           fontSize: 28,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Lato'),
            //     )),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
                child: Text(
                  'Enter the six digit code sent to your phone number\n+91 9567890488',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Lato'),
                  textAlign: TextAlign.center,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  width: 45,
                  height: 50,

                  child: TextFormField(

                    textInputAction: TextInputAction.next,
                    onChanged: (_) => FocusScope.of(context).nextFocus(),
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    showCursor: false,
                    enableInteractiveSelection: false,
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // letterSpacing: 1,
                        fontFamily: 'Lato'),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0x50344081),
                      hintText: "*",
                      hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ),alignLabelWithHint: true,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      counterText: "",

                    ),  autofocus: true,
                    focusNode: focusNode,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 0.5,
                      color: const Color(0xff7d2ae8),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 50,

                    child: TextFormField(maxLength: 1, textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      showCursor: false,
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          // letterSpacing: 1,
                          fontFamily: 'Lato'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0x50344081),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ),alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xff7d2ae8),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 50,

                    child: TextFormField(maxLength: 1, textAlign: TextAlign.center,    showCursor: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          // letterSpacing: 1,
                          fontFamily: 'Lato'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0x50344081),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ),alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xff7d2ae8),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 50,

                    child: TextFormField(maxLength: 1, textAlign: TextAlign.center,    showCursor: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          // letterSpacing: 1,
                          fontFamily: 'Lato'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0x50344081),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ), alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xff7d2ae8),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 50,

                    child: TextFormField(maxLength: 1, textAlign: TextAlign.center,    showCursor: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          // letterSpacing: 1,
                          fontFamily: 'Lato'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0x50344081),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ),
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xff7d2ae8),
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 50,

                    child: TextFormField(maxLength: 1, textAlign: TextAlign.center,    showCursor: false,
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => FocusScope.of(context).nextFocus(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          // letterSpacing: 1,
                          fontFamily: 'Lato'),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0x50344081),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color:  Colors.white24 ),
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xff7d2ae8),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 40,),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                    'Didn\'t receive code? ',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato',
                    ),
                  ),
                  TextSpan(
                      text: ' Resend',
                      style: TextStyle(
                          color: const Color(0xff7d2ae8),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato'),
                      recognizer: DoubleTapGestureRecognizer()
                        ..onDoubleTap = () {
                          // Double tapped.
                        }),


                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: 90,
              //   color: const Color(0xffe9eff3),
              padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff7D2AE8),
                  onPrimary: Colors.white,
                  // foreground
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pincode()),
                  );
                },
                child: Text(
                  'VERIFY OTP',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color(0xfffdfdfd),
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.normal),
                ),
              )),
        )



    );
  }
}
