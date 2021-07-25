import 'package:flutter/material.dart';

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
      backgroundColor: const Color(0xfff5f8fa),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/dining.png',
                // width: 240,
                // height: 240,
              ),
            ),
            Text(
              'Hi,',
              style: TextStyle(
                  color: const Color(0xff262C45),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Welcome to Atlas',
              style: TextStyle(
                  color: const Color(0xff262C45),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Discover local businesses and essential services in your area',
              style: TextStyle(
                  color: const Color(0xff464646),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato'),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: 90,
          //   color: const Color(0xffe9eff3),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff009a44),
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
