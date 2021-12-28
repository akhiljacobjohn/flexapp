import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:atlas/otp.dart';
import 'package:atlas/pincode.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
 // const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var myTextEditingController = TextEditingController();
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
            padding: EdgeInsets.fromLTRB(10, 60, 0, 20),
            child: Text(
              'Get Started.',
             // textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
            child: Text(
              'Enter your 10 digit mobile number to signup with Localtym',
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
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: TextField(
    controller: myTextEditingController,
                      keyboardType: TextInputType.phone,
          style: TextStyle(color: Colors.white70, fontSize: 18),
         // focusNode: focusNode,
                     // enableInteractiveSelection: false,
                      cursorHeight: 3,

                      decoration: InputDecoration(
                        //contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        isDense: true,
                        prefixText: '+91  ',
                        prefixStyle: TextStyle(color: Colors.white70, fontSize: 18),
                        filled: true,
                        fillColor: const Color(0x50344081),
                       // fillColor: const Color(0x50344081),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.white54, fontSize: 14),
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
