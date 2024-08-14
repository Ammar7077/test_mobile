import 'package:flutter/material.dart';

// main color
// Color.fromARGB(255, 170, 94, 12),

ThemeData getLightTheme() => ThemeData(
      // textTheme: const TextTheme(
      //   bodyMedium: TextStyle(
      //     fontFamily: "SFProText",
      //   ),
      // ),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 121, 67, 10),
        centerTitle: true,
      ),
      brightness: Brightness.light,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.light(
        primary: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.white),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: Colors.white),
        iconColor: Colors.grey,
        focusedBorder: OutlineInputBorder(
          // borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        // border: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.white),
        //   borderRadius: BorderRadius.circular(8),
        // ),
      ),
    );
