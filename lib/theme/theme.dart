import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  brightness: Brightness.dark,
  textTheme: GoogleFonts.interTextTheme().copyWith(
    headlineSmall: const TextStyle(
        fontSize: 24, fontWeight: FontWeight.normal, color: Colors.white),
    headlineMedium: const TextStyle(
        fontSize: 34, fontWeight: FontWeight.normal, color: Colors.white),
    headlineLarge: const TextStyle(
        fontSize: 96, fontWeight: FontWeight.w200, color: Colors.white),
    bodySmall: const TextStyle(
        fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
    bodyMedium: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    bodyLarge: const TextStyle(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
  ),
);
