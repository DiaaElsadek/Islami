import 'package:flutter/material.dart';

class MyThemeData{
  static final Color lightPrimary = Color(0xffB7935F);
  static final ThemeData lightTheme =
    ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold
        )
      ),
      colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xffB7935F),
      primary: Color(0xffB7935F),
      onPrimary: Colors.white,
      secondary: Color(0xffB7935F),
      onSecondary: Colors.black,
      ),
    );
}