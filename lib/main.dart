import 'package:atlas/splash.dart';
import 'package:atlas/utils/connection_status.dart';
import 'package:atlas/utils/enums.dart';
import 'package:atlas/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: const Color(0xff9146FF),
    systemNavigationBarColor: const Color(0xff141414),
  ));
  runApp(AtlasApp());
}

class AtlasApp extends StatelessWidget {
  ThemeMode _themeMode = ThemeMode.light;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AtlasAppTheme.lightTheme,
      darkTheme: AtlasAppTheme.darkTheme,
      themeMode: _themeMode,
      home: SplashScreen(),
    );
  }
}
