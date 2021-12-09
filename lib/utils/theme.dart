import 'package:flutter/material.dart';
import 'colors.dart';

class AtlasAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(

      primaryColor: const Color(0xff7d2ae8),
      accentColor: const Color(0xff7d2ae8),
      scaffoldBackgroundColor: const Color(0xFF1f1f1f),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: const Color(0xff7d2ae8),

      ),

      // Define the default font family.
      fontFamily: 'Lato',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Lato'),
      ),

      inputDecorationTheme: InputDecorationTheme(

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff7d2ae8)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff7d2ae8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff7d2ae8)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(
              width: 1,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: const Color(0xffe4002b))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: const Color(0xffe4002b))),
        hintStyle: TextStyle(
            color: const Color(0xffa1a1a4),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato'),
      ),
      iconTheme: IconThemeData(
        color: const Color(0xff262C45),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: const Color(0xff009a44),
      accentColor: const Color(0xff009a44),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: const Color(0xff009a44),
      ),

      // Define the default font family.
      fontFamily: 'Lato',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: const TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),

      inputDecorationTheme: InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff0CA750)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff262C45)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: const Color(0xff0CA750)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(
              width: 1,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: const Color(0xffe4002b))),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: const Color(0xffe4002b))),
        hintStyle: TextStyle(
            color: const Color(0xffa1a1a4),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            fontFamily: 'Lato'),
      ),
    );
  }
}

//Sample
// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
//   primarySwatch: MaterialColor(
//     0xFFF5E0C3,
//     <int, Color>{
//       50: Color(0x1aF5E0C3),
//       100: Color(0xa1F5E0C3),
//       200: Color(0xaaF5E0C3),
//       300: Color(0xafF5E0C3),
//       400: Color(0xffF5E0C3),
//       500: Color(0xffEDD5B3),
//       600: Color(0xffDEC29B),
//       700: Color(0xffC9A87C),
//       800: Color(0xffB28E5E),
//       900: Color(0xff936F3E)
//     },
//   ),
//   primaryColor: Color(0xffEDD5B3),
//   primaryColorBrightness: Brightness.light,
//   primaryColorLight: Color(0x1aF5E0C3),
//   primaryColorDark: Color(0xff936F3E),
//   canvasColor: Color(0xffE09E45),
//   accentColor: Color(0xff457BE0),
//   accentColorBrightness: Brightness.light,
//   scaffoldBackgroundColor: Color(0xff18181B),
//   bottomAppBarColor: Color(0xff6D42CE),
//   cardColor: Color(0xaaF5E0C3),
//   dividerColor: Color(0x1f6D42CE),
//   focusColor: Color(0x1aF5E0C3),
//   hoverColor: Color(0xffDEC29B),
//   highlightColor: Color(0xff936F3E),
//   splashColor: Color(0xff457BE0),
// //  splashFactory: # override create method from  InteractiveInkFeatureFactory
//   selectedRowColor: Colors.grey,
//   unselectedWidgetColor: Colors.grey.shade400,
//   disabledColor: Colors.grey.shade200,
//   buttonTheme: ButtonThemeData(
//       //button themes
//       ),
//   toggleButtonsTheme: ToggleButtonsThemeData(
//       //toggle button theme
//       ),
//   buttonColor: Color(0xff936F3E),
//   secondaryHeaderColor: Colors.grey,
//   textSelectionColor: Color(0xffB5BFD3),
//   cursorColor: Color(0xff936F3E),
//   textSelectionHandleColor: Color(0xff936F3E),
//   backgroundColor: Color(0xff457BE0),
//   dialogBackgroundColor: Colors.white,
//   indicatorColor: Color(0xff457BE0),
//   hintColor: Colors.grey,
//   errorColor: Colors.red,
//   toggleableActiveColor: Color(0xff6D42CE),
//   textTheme: TextTheme(
//       //text themes that contrast with card and canvas
//       ),
//   primaryTextTheme: TextTheme(
//       //text theme that contrast with primary color
//       ),
//   accentTextTheme: TextTheme(
//       //text theme that contrast with accent Color
//       ),
//   inputDecorationTheme: InputDecorationTheme(
//       // default values for InputDecorator, TextField, and TextFormField
//       ),
//   iconTheme: IconThemeData(
//       //icon themes that contrast with card and canvas
//       ),
//   primaryIconTheme: IconThemeData(
//       //icon themes that contrast primary color
//       ),
//   accentIconTheme: IconThemeData(
//       //icon themes that contrast accent color
//       ),
// );
// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
//   primarySwatch: MaterialColor(
//     0xFFF5E0C3,
//     <int, Color>{
//       50: Color(0x1a5D4524),
//       100: Color(0xa15D4524),
//       200: Color(0xaa5D4524),
//       300: Color(0xaf5D4524),
//       400: Color(0x1a483112),
//       500: Color(0xa1483112),
//       600: Color(0xaa483112),
//       700: Color(0xff483112),
//       800: Color(0xaf2F1E06),
//       900: Color(0xff2F1E06)
//     },
//   ),
//   primaryColor: Color(0xff5D4524),
//   primaryColorBrightness: Brightness.dark,
//   primaryColorLight: Color(0x1a311F06),
//   primaryColorDark: Color(0xff936F3E),
//   canvasColor: Color(0xffE09E45),
//   accentColor: Color(0xff457BE0),
//   accentColorBrightness: Brightness.dark,
//   scaffoldBackgroundColor: Color(0xffB5BFD3),
//   bottomAppBarColor: Color(0xff6D42CE),
//   cardColor: Color(0xaa311F06),
//   dividerColor: Color(0x1f6D42CE),
//   focusColor: Color(0x1a311F06),
//   hoverColor: Color(0xa15D4524),
//   highlightColor: Color(0xaf2F1E06),
//   splashColor: Color(0xff457BE0),
// //  splashFactory: # override create method from  InteractiveInkFeatureFactory
//   selectedRowColor: Colors.grey,
//   unselectedWidgetColor: Colors.grey.shade400,
//   disabledColor: Colors.grey.shade200,
//   buttonTheme: ButtonThemeData(
// //button themes
//       ),
//   toggleButtonsTheme: ToggleButtonsThemeData(
// //toggle button theme
//       ),
//   buttonColor: Color(0xff483112),
//   secondaryHeaderColor: Colors.grey,
//   textSelectionColor: Color(0x1a483112),
//   cursorColor: Color(0xff483112),
//   textSelectionHandleColor: Color(0xff483112),
//   backgroundColor: Color(0xff457BE0),
//   dialogBackgroundColor: Colors.white,
//   indicatorColor: Color(0xff457BE0),
//   hintColor: Colors.grey,
//   errorColor: Colors.red,
//   toggleableActiveColor: Color(0xff6D42CE),
//   textTheme: TextTheme(
// //text themes that contrast with card and canvas
//       ),
//   primaryTextTheme: TextTheme(
// //text theme that contrast with primary color
//       ),
//   accentTextTheme: TextTheme(
// //text theme that contrast with accent Color
//       ),
//   inputDecorationTheme: InputDecorationTheme(
// // default values for InputDecorator, TextField, and TextFormField
//       ),
//   iconTheme: IconThemeData(
// //icon themes that contrast with card and canvas
//       ),
//   primaryIconTheme: IconThemeData(
// //icon themes that contrast primary color
//       ),
//   accentIconTheme: IconThemeData(
// //icon themes that contrast accent color
//       ),
// );
