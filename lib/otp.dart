import 'dart:async';

import 'package:atlas/create_profile.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var focusNode = FocusNode();



  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


        resizeToAvoidBottomInset:false,
        backgroundColor: const Color(0xff161b22),
        //backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
      titleSpacing: -10,
      backgroundColor: const Color(0xff1D2531),
      // backgroundColor: const Color(0xff3c4852),
      elevation: 1,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white70),
          ),
          Text('OTP', style: TextStyle(color: Colors.white70, fontSize: 18, fontFamily: 'Lato',),),
        ],
      ),
      // centerTitle: true,
    ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 40),
                child: Text(
                  'Enter the six digit code sent to your phone number\n+91 9567890488 (Edit)',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 14,
                      height: 1.5,
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
                  height: 45,
                  decoration: BoxDecoration(
                   // //borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.white10,
                    ),
                  ),
                    child: TextFormField(
                      focusNode: focusNode,
                      maxLength: 1, textAlign: TextAlign.center,
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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    // decoration: BoxDecoration(
                    //   //borderRadius: BorderRadius.circular(5),
                    //   border: Border.all(
                    //     width: 0.5,
                    //     color: const Color(0xff7d2ae8),
                    //   ),
                    // ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 45,

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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white10,
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 45,

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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white10,
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 45,

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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white10,
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 45,

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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white10,
                      ),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 45,
                    height: 45,

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
                        fillColor: const Color(0xff21252d),
                        hintText: "*",
                        hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w200, color: Colors.white70),
                        alignLabelWithHint: true,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        counterText: "",

                      ),),
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 0.5,
                        color: Colors.white10,
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
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Lato',
                    ),
                  ),
                  TextSpan(
                      text: ' Resend ( in 60 secs )',
                      style: TextStyle(
                          color: const Color(0xddffffff),
                          fontSize: 11,
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
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff057855),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                // foreground
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
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
            ),
          ),)


    );
  }
}
