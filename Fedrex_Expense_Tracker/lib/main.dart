import 'package:fedrex_expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.purpleAccent);

void main() {
  runApp(MaterialApp(
      theme: ThemeData().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: kColorScheme.inversePrimary,foregroundColor: kColorScheme.onPrimaryContainer),
        colorScheme: kColorScheme,
        cardTheme: CardTheme(color: kColorScheme.inversePrimary),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: kColorScheme.primaryContainer)),

      ),
      //scaffoldBackgroundColor: Color.fromARGB(255, 255, 215, 227)

      home: Expenses()));
}
