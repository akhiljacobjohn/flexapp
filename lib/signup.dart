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
      backgroundColor: const Color(0xff161b22),
     // backgroundColor: const Color(0xff21252d),
      //backgroundColor: const Color(0xffffffff),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: const Color(0xff161b22),
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card(
          //   child: Container(
          //     height: 100,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(0.0),
          //         image: DecorationImage(
          //           //  fit: BoxFit.cover,
          //             image: AssetImage('assets/images/brand_color.png'))),
          //     child: Padding(
          //       padding: const EdgeInsets.all(10.0),
          //       child: Text('Nouveautés'),
          //     ),
          //   ),
          //   margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
          // ),

          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: const Color(0xff7D2AE8),
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato',),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
                    child: Text(
                      'Enter phone number to continue',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Lato',),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                // child: Image.asset(
                //   'assets/images/phone-get-started.png',
                //   width: 60,
                //  // height: 40,
                // ),
                // child: Icon(Icons.vpn_key_sharp, size: 45,  color: const Color(0xff7D2AE8),),
              ),

            ],
          ),


          Container(
            //height: 50,

            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: DropdownButton<String>(
              elevation: 1,
              itemHeight: null,
             isExpanded:true,
              underline: Container(color:Colors.white10, height:1),
              iconEnabledColor: const Color(0xff7D2AE8),
              hint: new Text("🇮🇳  India (+91)", style: TextStyle(color: const Color(0xffC3C3C3), fontSize: 15,), ),
              items: <String>['🇮🇳  India (+91)'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),



          SizedBox(height: 20,),
                Container(
                  height: 50,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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

        ],
      ),
        bottomNavigationBar: Transform.translate(
          offset: Offset(0.0, -1 * MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: 110,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
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
          ),)
    );
  }
}
