import 'package:flutter_application_calculator/Model/Tools/Fonts/font.dart';
import 'package:flutter_application_calculator/ViewModel/Home/home_functions.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var customFontStyle = CustomFonts().obs;
  CustomFonts get customFonts => customFontStyle.value;
  var isDark = HomeFunctions.getStatus().obs;
  bool get isDarkStatus => isDark.value;
  var homeFunctions = HomeFunctions().obs;
  HomeFunctions get homeFunction => homeFunctions.value;
  var equ = "0".obs;
  String get showEqu => equ.value;
  var result = "0".obs;
  String get showResult => result.value;
}
