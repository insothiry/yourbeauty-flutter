import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TColors {
  TColors._();

  // App basic colors
  static const Color primaryColor = Color.fromARGB(255, 75, 144, 131);
  static const Color secondaryColor = Color(0xFFFAEAA1);
  static const Color accent = Color(0xFFC0D9C2);

  // Gradien colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, 0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD0CD),
      Color(0xFFFAD0C4),
    ],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgorund = Color(0xFFF3F5FF);

  // Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xFF88B2AA);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and Validation colors
  static const Color error = Colors.red;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
  static const Color info = Colors.blue;

  // Neutral shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color white = Color(0xFFFFFFFF);
}
