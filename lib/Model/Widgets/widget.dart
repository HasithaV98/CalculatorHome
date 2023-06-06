import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/GetXPackages/Controller/home_controller.dart';
import 'package:flutter_application_calculator/Model/Tools/Color/color.dart';
import 'package:flutter_application_calculator/Model/Tools/Fonts/font.dart';

import 'package:get/get.dart';

class CustomWidget {
  static Widget smallButton(
      {required Widget title, required GestureTapCallback callBack}) {
    return GetX<HomeController>(
      builder: (controller) {
        bool isDark = controller.isDarkStatus;
        CustomFonts textStyle = controller.customFonts;
        return SizedBox(
            width: 62,
            height: 38,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(isDark
                          ? CustomColors.darkButtons
                          : CustomColors.lightButtons)),
                  onPressed: callBack,
                  child: Center(
                    child:title 
                  )),
            ));
      },
    );
  }

  static Widget normalButton(
      {required Widget title,
      required GestureTapCallback callBack,
      required Color color}) {
    return SizedBox(
        width: 62,
        height: 62,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: ElevatedButton(
              style:
                  ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
              onPressed: callBack,
              child: Center(child: title)),
        ));
  }

  static Widget expandWithPadding(
      {required double btnRLPadding, required Widget child}) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.only(
        left: btnRLPadding,
        right: btnRLPadding,
      ),
      child: child,
    ));
  }

  static Widget equlButton(
      {required Color color,
      required GestureTapCallback callBack,
      required Widget title}) {
          return SizedBox(
        width: 62,
        height: 62,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(31),
          child: ElevatedButton(
              style:
                  ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
              onPressed: callBack,
              child: Center(child: title)),
        ));
      }
}
