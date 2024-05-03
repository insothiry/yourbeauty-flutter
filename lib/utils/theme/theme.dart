import 'package:flutter/material.dart';
import 'package:yourbeauty/utils/theme/custom_themes/text_theme.dart';
import 'package:yourbeauty/utils/theme/custom_themes/elevated_buttons_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/text_field_theme.dart';

class TAppTheme {
  TAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Open Sans',
      brightness: Brightness.light,
      primaryColor: Colors.deepPurple,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      inputDecorationTheme: TTextFormatFieldTheme.lightInputDecorationTheme);

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Open Sans',
    brightness: Brightness.dark,
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: TTextFormatFieldTheme.darkInputDecorationTheme,
  );
}
