import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/Tools/Color/color.dart';

class LightTheme {
  static ThemeData light = ThemeData(
      primaryColor: CustomColors.primary,
      scaffoldBackgroundColor: CustomColors.backgroundLight,
      buttonTheme: ButtonThemeData(buttonColor: CustomColors.lightButtons));
}
