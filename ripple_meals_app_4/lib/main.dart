import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/screens/categories_screen.dart';


final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: TextTheme(titleLarge: GoogleFonts.lora(color: Colors.black,fontWeight: FontWeight.bold),titleMedium: GoogleFonts.lora(color: Colors.white),),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: theme,
        home: CategoriesScreen()
    );
  }
}