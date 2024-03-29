import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_portfolio/business_logic/utils/formatting.dart';

class Themes {
  static ThemeData getTheme({required bool darkMode}) {
    bool desktop = checkDesktopAlt();
    bool mobile = checkMobileAlt();

    if (darkMode) {
      return ThemeData(
        brightness: Brightness.dark,
        // primaryColor: Colors.blue.shade900,
        colorScheme: ColorScheme.dark(
          primary: Colors.blue,
          secondary: Colors.blueAccent,
        ),
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        cardColor: Colors.grey[850],
        backgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: desktop ? 22 : 18, color: Colors.white, fontWeight: FontWeight.w400),
          headline2: TextStyle(fontSize: desktop ? 18 : 16, color: Colors.white, fontWeight: FontWeight.w200),
          headline3: TextStyle(fontSize: desktop ? 16 : 14, color: Colors.white, fontWeight: FontWeight.w400),
          headline4: TextStyle(fontSize: desktop ? 18 : 16, color: Colors.white, fontWeight: FontWeight.w400),
          headline5: TextStyle(fontSize: desktop ? 38 : 30, color: Colors.white, fontWeight: FontWeight.w400),
          bodyText1: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.white, fontWeight: FontWeight.w300),
          bodyText2: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.white, fontWeight: FontWeight.w300),
          caption: TextStyle(color: Colors.grey.shade100, fontSize: 13, fontWeight: FontWeight.w500),
          subtitle1: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400),
          headline6: TextStyle(fontSize: desktop ? 19 : 16, color: Colors.white, fontWeight: FontWeight.w500), // Same as app bar title, why bother diff?
        ),
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark, //* THIS WILL AFFECT STATUSBARCOLOR
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: desktop ? 19 : 16, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          color: Colors.grey[900], // same as BG
          iconTheme: IconThemeData(color: Colors.white),
        ),
        tabBarTheme: TabBarTheme(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(color: Colors.grey[750]),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: mobile ? 12 : 14, backgroundColor: Colors.transparent, fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontSize: mobile ? 10 : 13, backgroundColor: Colors.transparent, fontWeight: FontWeight.w200)),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.white, fontWeight: FontWeight.w300),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: mobile ? 13 : 15, horizontal: mobile ? 13 : 15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          fillColor: Colors.grey[850],
          focusColor: Colors.grey[900],
          hoverColor: Colors.grey[900],
        ),
      );
    } else {
      return ThemeData(
        brightness: Brightness.light,
        // primaryColor: Colors.blue.shade900,
        colorScheme: ColorScheme.light(
          primary: Colors.blue,
          secondary: Colors.blueAccent,
        ),
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue.shade900),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.white),
        cardColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: desktop ? 22 : 18, color: Colors.black, fontWeight: FontWeight.w400),
          headline2: TextStyle(fontSize: desktop ? 18 : 16, color: Colors.black, fontWeight: FontWeight.w200),
          headline3: TextStyle(fontSize: desktop ? 16 : 14, color: Colors.grey[800], fontWeight: FontWeight.w400),
          headline4: TextStyle(fontSize: desktop ? 18 : 16, color: Colors.black, fontWeight: FontWeight.w400),
          headline5: TextStyle(fontSize: desktop ? 38 : 30, color: Colors.black, fontWeight: FontWeight.w400),
          bodyText1: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.black, fontWeight: FontWeight.w300),
          bodyText2: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.black, fontWeight: FontWeight.w300),
          caption: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          subtitle1: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w400),
          headline6: TextStyle(fontSize: desktop ? 19 : 16, color: Colors.black, fontWeight: FontWeight.w500), // Same as app bar title, why bother diff?
        ),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light, //* THIS WILL AFFECT STATUSBARCOLOR
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: desktop ? 19 : 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          color: Color(0xfff7f5f6), // Same as BG
          iconTheme: IconThemeData(color: Colors.blue.shade900),
        ),
        tabBarTheme: TabBarTheme(
            indicator: BoxDecoration(color: Colors.white),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            labelStyle: TextStyle(fontSize: mobile ? 12 : 14, backgroundColor: Colors.transparent, fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontSize: mobile ? 10 : 13, backgroundColor: Colors.transparent, fontWeight: FontWeight.w200)),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(fontSize: desktop ? 15 : 14, color: Colors.black, fontWeight: FontWeight.w300),
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: mobile ? 13 : 15, horizontal: mobile ? 13 : 15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.grey[50],
          hoverColor: Colors.grey[50],
        ),
      );
    }
  }
}
