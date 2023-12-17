import 'package:auth_page_demo/src/features/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Auth Page Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F41BB),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          labelLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
