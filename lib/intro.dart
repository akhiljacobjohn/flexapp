import 'dart:async';

import 'package:atlas/utils/connection_status.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:atlas/utils/enums.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'get_started.dart';

class IntroScreen extends StatefulWidget {

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  ConnectionUtil conn = ConnectionUtil();


  @override
  void initState() {
    super.initState();
  }


  @override
  dispose() {

    super.dispose();
    conn.listener.cancel();


  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xff1b1d20),
    //  backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
         backgroundColor: Colors.transparent,
       // backgroundColor: const Color(0xff3c4852),
        elevation: 0,
      automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 15),
            child: Text(
              'Hello,',
              style: TextStyle(
                  color: const Color(0xffffffff),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 30),
            child: Text(
              'Welcome to Atlas',
              style: TextStyle(
                  color: const Color(0xffffffff),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text(
              'Discover businesses and essential services in your local area',
              style: TextStyle(
                  color: const Color(0xffffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),),
          // Expanded(
          //   child: Padding(
          //     padding: EdgeInsets.fromLTRB(15, 0, 10, 20),
          //     child: Image.asset(
          //       'assets/images/dining.png',
          //       //width: 350,
          //     ),
          //   ),
          // ),
          // Expanded(
          //   child: Image.asset(
          //
          //     'assets/images/dining.png',
          //
          //   ),
          // ),

        ],
      ),


      bottomNavigationBar: Container(
          height: 90,
          //   color: const Color(0xffe9eff3),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff00884A),
              onPrimary: Colors.white,
              // foreground
            ),
            onPressed: () {

              print(conn.checkConnection(context));

              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (context) => GetStarted()),
              // );
            },
            child: Text(
              'GET STARTED',
              style: TextStyle(
                  fontSize: 15,
                  color: const Color(0xfffdfdfd),
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.normal),
            ),
          )),
    );
  }
}
