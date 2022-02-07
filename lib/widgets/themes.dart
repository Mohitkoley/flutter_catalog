import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:velocity_x/velocity_x.dart";

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cardColor: Colors.white,
        canvasColor: CreamColor,
        buttonTheme: ButtonThemeData(
          buttonColor: lightBlueColor,
          textTheme: ButtonTextTheme.primary,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: darkBluieshColor),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        cardColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: darkCreamColor,
        buttonTheme: ButtonThemeData(
          buttonColor: lightBlueColor,
          textTheme: ButtonTextTheme.primary,
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6?.copyWith(color: Colors.white)),
      );

  static Color CreamColor = Color(0xfff5f5f5);
  static Color darkBluieshColor = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray900;
  static Color lightBlueColor = Vx.indigo500;
}
