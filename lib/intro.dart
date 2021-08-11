import 'dart:async';

import 'package:atlas/utils/connection_status.dart';
import 'package:atlas/utils/enums.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {



  @override
  void initState() {
    super.initState();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff0f0ff),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dining.png',
              width: 320,
              height: 320,
            ),
            // SizedBox(
            //   height: 40,
            // ),
            Expanded(
              child: SizedBox(
                height: 1,
              ),
            ),
            Image.asset(
              'assets/images/atlas-def-splash.png',
              width: 80,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Discover local businesses and essential services in your area',
              style: TextStyle(
                  color: const Color(0xff35465c),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 40,
            ),
           // Text('Connection Status: ${_connectionStatus.toString()}')

          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 90,
          //   color: const Color(0xffe9eff3),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff7d2ae8),
              onPrimary: Colors.white,
              // foreground
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
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
          )),
    );
  }
}
