import 'package:atlas/home.dart';
import 'package:atlas/intro.dart';
import 'package:atlas/splash.dart';
import 'package:atlas/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
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
