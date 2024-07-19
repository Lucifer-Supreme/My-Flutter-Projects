import 'package:case_master_pp/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: Color.fromARGB(255, 165, 60, 240),
  ),
  textTheme: TextTheme(
    titleLarge:
        GoogleFonts.lora(color: Colors.black, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.lora(color: Colors.white),
  ),
);

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: CategoriesScreen());
  }
}
