import 'package:fedrex_expense_tracker/expenses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.purpleAccent);
var kDarkColorScheme = ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: Color.fromARGB(255, 5, 99, 125));

void main() {

  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorScheme,
      appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
      cardTheme: CardTheme(color: Colors.white30),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white), // Set default text color
          bodyMedium: TextStyle(color: Colors.white70),
            titleLarge: GoogleFonts.playfairDisplay(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
            titleMedium: GoogleFonts.bebasNeue(color: Colors.white30)

    )),
      theme: ThemeData().copyWith(
          appBarTheme: AppBarTheme(
              backgroundColor: kColorScheme.inversePrimary,
              foregroundColor: kColorScheme.onPrimaryContainer),
          colorScheme: kColorScheme,
          cardTheme: CardTheme(color: kColorScheme.inversePrimary),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer)),
          textTheme: TextTheme(
              bodyLarge: TextStyle(color: Colors.black), // Set default text color
              bodyMedium: TextStyle(color: Colors.black),
              titleLarge: GoogleFonts.lora(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              titleMedium: GoogleFonts.bebasNeue(color: Colors.black26))
      ),
      //scaffoldBackgroundColor: Color.fromARGB(255, 255, 215, 227)

      home: Expenses()));
}
