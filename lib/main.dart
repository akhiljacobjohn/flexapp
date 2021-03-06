
import 'package:atlas/initialize.dart';
import 'package:atlas/intro.dart';
import 'package:atlas/create_profile.dart';
import 'package:atlas/signup.dart';
import 'package:atlas/splash.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:atlas/utils/theme.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

import 'otp.dart';

Future<void> main() async {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: const Color(0xff412081),
  //  systemNavigationBarColor: const Color(0xff412081),
  // ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      AtlasApp());
}

class AtlasApp extends StatelessWidget {
  final ThemeMode _themeMode = ThemeMode.light;
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AtlasAppTheme.lightTheme,
      darkTheme: AtlasAppTheme.darkTheme,
      themeMode: _themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/app-init': (context) => AppInit(),
        '/intro': (context) => IntroScreen(),

        '/get-started': (context) => Signup(),
        '/otp': (context) => OTP(),
        '/pin-code': (context) => Profile(),
        '/home': (context) => Home(),
      },
    );
  }
}
