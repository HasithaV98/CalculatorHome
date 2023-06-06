import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/GetXPackages/Controller/home_controller.dart';
import 'package:flutter_application_calculator/Model/Tools/Color/color.dart';
import 'package:flutter_application_calculator/Model/Tools/Constant/const.dart';
import 'package:flutter_application_calculator/Model/Tools/Fonts/font.dart';
import 'package:flutter_application_calculator/View/calculator_rows.dart';
import 'package:flutter_application_calculator/ViewModel/Home/home_functions.dart';

import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final homeController = Get.find<HomeController>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isDarkTheme = homeController.isDarkStatus;
      CustomFonts fonts = homeController.customFonts;
      HomeFunctions homeFunction = homeController.homeFunction;
      TextStyle numberTxtStyle = fonts.titleLarge.copyWith(
        color: CustomColors.primary,
      );

      Color numberColors =
          isDarkTheme ? CustomColors.darkButtons : CustomColors.lightButtons;
      const double btnRLPadding = 5;

      homeFunction.changeFontSize();

      return Scaffold(
        backgroundColor: isDarkTheme
            ? CustomColors.backgroundDark
            : CustomColors.backgroundLight,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: defaultScroll,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Padding(
                        padding: defaultPadding,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 100,
                            height: 90,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Switch(
                                activeColor: CustomColors.primary,
                                activeThumbImage: const AssetImage(dayImg),
                                inactiveThumbImage: const AssetImage(nightImg),
                                value: isDarkTheme,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                                inactiveTrackColor:
                                    CustomColors.grayDarkButtonItem,
                                onChanged: (value) async {
                                  homeFunction.changeAndSaveTheme(isDarkTheme);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: defaultPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: SingleChildScrollView(
                              physics: defaultScroll,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  homeController.showEqu,
                                  style: fonts.bodyNormal.copyWith(
                                      color: isDarkTheme
                                          ? CustomColors.white
                                          : CustomColors.black,
                                      fontSize: equFontSize),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                homeController.showResult,
                                style: fonts.bodyNormal.copyWith(
                                    color: isDarkTheme
                                        ? CustomColors.white
                                        : CustomColors.black,
                                    fontSize: resultFontSize),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FirstRow(btnRLPadding: btnRLPadding),
                      SecondRow(
                          btnRLPadding: btnRLPadding,
                          fonts: fonts,
                          isDarkTheme: isDarkTheme),
                      ThirdRow(
                          btnRLPadding: btnRLPadding,
                          numberColors: numberColors,
                          numberTxtStyle: numberTxtStyle,
                          fonts: fonts,
                          isDarkTheme: isDarkTheme),
                      FourthRow(
                          btnRLPadding: btnRLPadding,
                          fonts: fonts,
                          isDarkTheme: isDarkTheme,
                          numberColors: numberColors,
                          numberTxtStyle: numberTxtStyle),
                      FifthRow(
                          btnRLPadding: btnRLPadding,
                          fonts: fonts,
                          isDarkTheme: isDarkTheme,
                          numberColors: numberColors,
                          numberTxtStyle: numberTxtStyle),
                      SixthRow(
                          btnRLPadding: btnRLPadding,
                          fonts: fonts,
                          isDarkTheme: isDarkTheme,
                          numberColors: numberColors,
                          numberTxtStyle: numberTxtStyle)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
