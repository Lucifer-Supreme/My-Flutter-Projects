import 'package:fedrex_expense_tracker/expenses.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.purpleAccent);

void main() {
  runApp(MaterialApp(
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
              titleMedium: TextStyle(color: Colors.deepPurple))
      ),
      //scaffoldBackgroundColor: Color.fromARGB(255, 255, 215, 227)

      home: Expenses()));
}
