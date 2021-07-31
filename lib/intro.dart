import 'package:atlas/utils/connection_status.dart';
import 'package:atlas/utils/enums.dart';
import 'package:atlas/utils/network_aware.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
      body: StreamProvider<NetworkStatus>(
        create: (context) =>
            ConnectivityStatusService().networkStatusController.stream,
        child: NetworkAware(
          onlineChild: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/dining.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                Image.asset(
                  'assets/images/atlas-black.png',
                  width: 85,
                  //     height: 350,
                ),
                //    Text(
                //      'Hi!',
                //      style: TextStyle(
                //          color: const Color(0xff000000),
                //          fontSize: 30,
                //          fontWeight: FontWeight.bold,
                //          fontFamily: 'Lato'),
                //    ),
                SizedBox(
                  height: 30,
                ),
                // Text(
                //   'Welcome to Atlas',
                //   style: TextStyle(
                //       color: const Color(0xff000000),
                //       fontSize: 28,
                //       fontWeight: FontWeight.bold,
                //       fontFamily: 'Lato'),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
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
              ],
            ),
          ),
          offlineChild: Container(child: Text('You are Offline!'),),
        ),
      ),
      bottomNavigationBar: Container(
          height: 90,
          //   color: const Color(0xffe9eff3),
          padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xff9146FF),
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
