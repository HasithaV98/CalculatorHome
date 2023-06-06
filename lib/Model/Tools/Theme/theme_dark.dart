import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/Tools/Color/color.dart';

class DarkTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
      primaryColor: CustomColors.primary,
      scaffoldBackgroundColor: CustomColors.backgroundDark,
      buttonTheme: ButtonThemeData(buttonColor: CustomColors.darkButtons));
}
