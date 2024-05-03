import 'package:flutter/material.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); // Private constructor to prevent instantiation

  // Light Theme Outline Button Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.deepPurple), // Border color
      padding: const EdgeInsets.symmetric(vertical: 18), // Button padding
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.deepPurple, // Text color
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Button border radius
      ),
    ),
  );

  // Dark Theme Outline Button Theme
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.deepPurple), // Border color
      padding: const EdgeInsets.symmetric(vertical: 18), // Button padding
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.deepPurple, // Text color
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Button border radius
      ),
    ),
  );
}
