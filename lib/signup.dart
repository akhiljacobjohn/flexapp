import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:atlas/otp.dart';
import 'package:atlas/create_profile.dart';
import 'package:atlas/privacy_policy.dart';
import 'package:atlas/terms_of_service.dart';
import 'package:flutter/gestures.dart';
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
    super.initState();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff2161b22),
     // backgroundColor: const Color(0xff21252d),
      //backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          titleSpacing: -10,
          backgroundColor: const Color(0xff161b22),
          // backgroundColor: const Color(0xff3c4852),
          elevation: 1,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
          ),
          //  automaticallyImplyLeading: false,
            title: Text('Get Started', style: TextStyle(color: const Color(0xddffffff), fontSize: 20, letterSpacing: 0.6, fontFamily: 'Lato',),),
          // centerTitle: true,
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //     padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
          //     child: Text('Get Started', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato'),)),
          // Padding(
          //  padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
          //   child:  Text('Get Started', style: TextStyle(color: const Color(0xddffffff), fontSize: 20,  fontFamily: 'Lato',),),
          // ),
          //   child: RichText(
          //     text: TextSpan(
          //         text:
          //         'Get started.',
          //         style: TextStyle(
          //             color: const Color(0xffffffff),
          //             fontSize: 28,
          //             fontWeight: FontWeight.bold,
          //             fontFamily: 'Lato'),
          //         children: [
          //           // TextSpan(
          //           //   text: '.',
          //           //   style: TextStyle(
          //           //       color: const Color(0xff7D2AE8),
          //           //       fontSize: 50,
          //           //       fontWeight: FontWeight.bold,
          //           //       fontFamily: 'Lato'),
          //           // ),
          //         ],
          //     ),
          //
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(20, 30, 0, 25),
          //   child: Text(
          //     'Enter your 10 digit mobile number to get started with Sparkle',
          //     style: TextStyle(
          //         color: Colors.white54,
          //         fontSize: 14,
          //         fontWeight: FontWeight.w500,
          //         fontFamily: 'Lato'),
          //   ),
          // ),

          Container(
            //height: 50,

            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            child: DropdownButton<String>(
              elevation: 1,
              itemHeight: null,
             isExpanded:true,
              underline: Container(color:Colors.white10, height:1),
              iconEnabledColor: const Color(0xff7D2AE8),
              hint: new Text("🇮🇳  India (+91)"),
              items: <String>['🇮🇳  India (+91)'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),


          // Container(
          //   height: 50,
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          //     child: TextField(
          //
          //       controller: myTextEditingController,
          //       keyboardType: TextInputType.phone,
          //
          //       style: TextStyle(color: Colors.white70, fontSize: 18),
          //       // focusNode: focusNode,
          //       // enableInteractiveSelection: false,
          //       cursorHeight: 20,
          //
          //       decoration: InputDecoration(
          //         suffixIcon: Icon(Icons.keyboard_arrow_down),
          //         //  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
          //         isDense: true,
          //         // prefixText: '+91  ',
          //         // prefixStyle: TextStyle(color: Colors.white70, fontSize: 18),
          //         // filled: true,
          //         // fillColor: const Color(0x50344081),
          //         // fillColor: const Color(0x50344081),
          //         //  hintText: 'Mobile Number',
          //         //  hintStyle: TextStyle(color: Colors.white54, fontSize: 18, height: 0),
          //         labelText: 'Country',
          //
          //         labelStyle: TextStyle(color: Colors.white54, fontSize: 11, height: 0),
          //         enabledBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //         focusedBorder: UnderlineInputBorder(
          //           borderSide: BorderSide(color: Colors.white10,),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(height: 20,),
                Container(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: TextField(
    controller: myTextEditingController,
                      keyboardType: TextInputType.phone,
          style: TextStyle(color: Colors.white70, fontSize: 18),
         focusNode: focusNode,
                     // enableInteractiveSelection: false,
                      cursorHeight: 20,
maxLength: 10,
                      decoration: InputDecoration(
counterText: "",
                      //  contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        isDense: true,
                        // prefixText: '+91  ',
                        // prefixStyle: TextStyle(color: Colors.white70, fontSize: 18),
                        // filled: true,
                        // fillColor: const Color(0x50344081),
                       // fillColor: const Color(0x50344081),
                       //  hintText: 'Mobile Number',
                       //  hintStyle: TextStyle(color: Colors.white54, fontSize: 18, height: 0),
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(color: Colors.white54, fontSize: 14, height: 0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10,),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white10,),
                        ),
                      ),
                    ),
                  ),
                ),

    // Row(
    //   mainAxisAlignment: MainAxisAlignment.start,
    // children: [
    //   // Padding(
    //   //   padding: EdgeInsets.fromLTRB(15, 20, 0, 5),
    //   //   child: Text('By continuing, you indicate that you have read and understood Billboard\'s',
    //   //     textAlign: TextAlign.center,
    //   //     style: TextStyle(
    //   //         height: 1.5,
    //   //         color: Colors.white70,
    //   //         fontSize: 12,
    //   //         fontWeight: FontWeight.w500,
    //   //         fontFamily: 'Lato'),),
    //   // ),
    // ],
    // ),

          Expanded(

             child: Padding(
               padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
             child:RichText(
               textAlign: TextAlign.start,
               text: TextSpan(
                 text:
                 'By continuing, you indicate that you have read and understood Billboard\'s  ',
style: TextStyle(
           height: 1.5,
           color: Colors.white70,
          fontSize: 10,
         // fontWeight: FontWeight.w500,
          fontFamily: 'Lato'

),
                 children: [
                   TextSpan(
                     text: 'Privacy Policy',
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

          ),
        ],
      ),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
              height: 100,
              //   color: const Color(0xffe9eff3),
              padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff057855),
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
                  'SEND OTP',
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
