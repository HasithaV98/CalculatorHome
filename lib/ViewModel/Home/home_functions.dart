import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/Tools/Constant/const.dart';
import 'package:flutter_application_calculator/View/home.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeFunctions {
  String statusKey = "Status";
  Future<void> saveThemeStatus(bool status) async {
    final box = GetStorage();
    await box.write(statusKey, status);
  }

  static bool getStatus() {
    String statusKey = "Status";
    final box = GetStorage();
    bool status = box.read(statusKey) ?? false;
    return status;
  }

  void buttonPressed(String buttonText) {
    if (buttonText == "c") {
      homeController.equ.value = "0";
      homeController.result.value = "0";
      equFontSize = 35;
      resultFontSize = 45;
    } else if (buttonText == "x") {
      homeController.equ.value = homeController.equ.value
          .substring(0, homeController.equ.value.length - 1);
      equFontSize = 35;
      resultFontSize = 45;

      if (homeController.equ.value == "") {
        homeController.equ.value = "0";
        equFontSize = 35;
        resultFontSize = 45;
      }
    } else if (buttonText == "=") {
      expression = homeController.equ.value;
      expression.replaceAll("x", "*");
      expression.replaceAll("/", "/");
      equFontSize = 35;
      resultFontSize = 45;
      try {
        Parser parser = Parser();
        ContextModel contextModel = ContextModel();
        Expression exp = parser.parse(expression);
        homeController.result.value =
            "${exp.evaluate(EvaluationType.REAL, contextModel)}";
        equFontSize = 35;
        resultFontSize = 45;
      } catch (e) {
        homeController.result.value = "Error";
      }
    } else {
      if (homeController.equ.value == "0") {
        homeController.equ.value =
            homeController.equ.value.split("0").last + buttonText;
        equFontSize = 45;
        resultFontSize = 35;
      } else {
        if (homeController.equ.value.length < 30) {
          homeController.equ.value = homeController.equ.value + buttonText;
          equFontSize = 45;
          resultFontSize = 35;
        }
      }
    }
  }

  void changeFontSize() {
    if (homeController.equ.value.length > 7 &&
        homeController.equ.value.length <= 10) {
      equFontSize = 30;
    } else if (homeController.equ.value.length > 10 &&
        homeController.equ.value.length <= 13) {
      equFontSize = 25;
    } else if (homeController.equ.value.length > 13) {
      equFontSize = 20;
    }
  }

  void changeAndSaveTheme(bool isDarkTheme) async {
    if (isDarkTheme) {
      await homeController.homeFunction.saveThemeStatus(false);
      Get.changeTheme(ThemeData.dark());

      homeController.isDark.value = !homeController.isDark.value;
    } else {
      await homeController.homeFunction.saveThemeStatus(true);
      Get.changeTheme(ThemeData.light());
      homeController.isDark.value = !homeController.isDark.value;
    }
  }
}
