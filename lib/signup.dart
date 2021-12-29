import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:atlas/otp.dart';
import 'package:atlas/create_profile.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
 // const Signup({Key? key}) : super(key: key);


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var focusNode = FocusNode();
  var myTextEditingController = TextEditingController();


  @override
  void initState() {
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff232A53),
      //backgroundColor: const Color(0xffffffff),
      // appBar: AppBar(
      //   titleSpacing: -10,
      //   backgroundColor: const Color(0xff14263c),
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 0, 20),
            // child: Text(
            //   'Signup',
            //  // textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 34,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'Lato'),
            // ),
            child: RichText(
              text: TextSpan(
                  text:
                  'Get started',
                  style: TextStyle(
                      color: const Color(0xffffffff),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lato'),
                  children: [
                    // TextSpan(
                    //   text: '.',
                    //   style: TextStyle(
                    //       color: const Color(0xff7D2AE8),
                    //       fontSize: 50,
                    //       fontWeight: FontWeight.bold,
                    //       fontFamily: 'Lato'),
                    // ),
                  ],
              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 25),
            child: Text(
              'Enter your 10 digit mobile number to get started with Localtym',
              style: TextStyle(
                  color: Colors.white54,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Lato'),
            ),
          ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: TextField(
    controller: myTextEditingController,
                      keyboardType: TextInputType.phone,
          style: TextStyle(color: Colors.white70, fontSize: 18),
         focusNode: focusNode,
                     // enableInteractiveSelection: false,
                      cursorHeight: 22,

                      decoration: InputDecoration(
                      //  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        isDense: true,
                        prefixText: '+91  ',
                        prefixStyle: TextStyle(color: Colors.white70, fontSize: 18),
                        // filled: true,
                        // fillColor: const Color(0x50344081),
                       // fillColor: const Color(0x50344081),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.white54, fontSize: 18, height: 0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: const Color(0xff7D2AE8),),
                        ),
                      ),
                    ),
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
                    MaterialPageRoute(builder: (context) => OTP() ),
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
