import 'package:atlas/splash.dart';
import 'package:atlas/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    // statusBarColor: const Color(0xff7d2ae8),
    //  statusBarColor: Colors.transparent,

    systemNavigationBarColor: const Color(0xff141414),
  ));
  runApp(AtlasApp());
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
      home: SplashScreen(),
    );
  }
}
