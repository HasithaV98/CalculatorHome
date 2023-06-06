import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/Tools/Color/color.dart';
import 'package:flutter_application_calculator/Model/Tools/Constant/const.dart';
import 'package:flutter_application_calculator/Model/Tools/Fonts/font.dart';
import 'package:flutter_application_calculator/Model/Widgets/widget.dart';
import 'package:flutter_application_calculator/View/home.dart';

class SixthRow extends StatelessWidget {
  const SixthRow({
    Key? key,
    required this.btnRLPadding,
    required this.fonts,
    required this.isDarkTheme,
    required this.numberColors,
    required this.numberTxtStyle,
  }) : super(key: key);

  final double btnRLPadding;
  final CustomFonts fonts;
  final bool isDarkTheme;
  final Color numberColors;
  final TextStyle numberTxtStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("0", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("0");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text(".", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed(".");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.equlButton(
                title: Icon(
                  CupertinoIcons.equal,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("=");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
        ],
      ),
    );
  }
}

class FifthRow extends StatelessWidget {
  const FifthRow({
    Key? key,
    required this.btnRLPadding,
    required this.fonts,
    required this.isDarkTheme,
    required this.numberColors,
    required this.numberTxtStyle,
  }) : super(key: key);

  final double btnRLPadding;
  final CustomFonts fonts;
  final bool isDarkTheme;
  final Color numberColors;
  final TextStyle numberTxtStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("1", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("1");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("2", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("2");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("3", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("3");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  CupertinoIcons.plus,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("+");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
        ],
      ),
    );
  }
}

class FourthRow extends StatelessWidget {
  const FourthRow({
    Key? key,
    required this.btnRLPadding,
    required this.fonts,
    required this.isDarkTheme,
    required this.numberColors,
    required this.numberTxtStyle,
  }) : super(key: key);

  final double btnRLPadding;
  final CustomFonts fonts;
  final bool isDarkTheme;
  final Color numberColors;
  final TextStyle numberTxtStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("4", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("4");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("5", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("5");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("6", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("6");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  CupertinoIcons.minus,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("-");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
        ],
      ),
    );
  }
}

class ThirdRow extends StatelessWidget {
  const ThirdRow({
    Key? key,
    required this.btnRLPadding,
    required this.fonts,
    required this.isDarkTheme,
    required this.numberColors,
    required this.numberTxtStyle,
  }) : super(key: key);

  final double btnRLPadding;
  final CustomFonts fonts;
  final bool isDarkTheme;
  final Color numberColors;
  final TextStyle numberTxtStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("7", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("7");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("8", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("8");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text("9", style: numberTxtStyle),
                callBack: () {
                  homeController.homeFunction.buttonPressed("9");
                },
                color: numberColors),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  CupertinoIcons.multiply,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("*");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
        ],
      ),
    );
  }
}

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
    required this.btnRLPadding,
    required this.fonts,
    required this.isDarkTheme,
  }) : super(key: key);

  final double btnRLPadding;
  final CustomFonts fonts;
  final bool isDarkTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Text(
                  "c",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: fonts.titleLarge.copyWith(
                    color: CustomColors.grayDarkButtonItem,
                  ),
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("c");
                },
                color: isDarkTheme
                    ? CustomColors.grayDarkButton
                    : CustomColors.lightButtons),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  Icons.backspace,
                  color: CustomColors.grayDarkButtonItem,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("x");
                },
                color: isDarkTheme
                    ? CustomColors.grayDarkButton
                    : CustomColors.lightButtons),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  CupertinoIcons.percent,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("%");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.normalButton(
                title: Icon(
                  CupertinoIcons.divide,
                  color: CustomColors.primary,
                ),
                callBack: () {
                  homeController.homeFunction.buttonPressed("/");
                },
                color: isDarkTheme
                    ? CustomColors.calculatorDark
                    : CustomColors.calculatorLight),
          ),
        ],
      ),
    );
  }
}

class FirstRow extends StatelessWidget {
  const FirstRow({
    Key? key,
    required this.btnRLPadding,
  }) : super(key: key);

  final double btnRLPadding;

  @override
  Widget build(BuildContext context) {
    CustomFonts textStyle = homeController.customFonts;
    return Padding(
      padding: defaultPadding,
      child: Row(
        children: [
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.smallButton(
              title: Text(
                "^",
                textAlign: TextAlign.center,
                style:
                    textStyle.titleLarge.copyWith(color: CustomColors.primary),
              ),
              callBack: () {
                homeController.homeFunction.buttonPressed("^");
              },
            ),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.smallButton(
              title: Text(
                "tan",
                textAlign: TextAlign.center,
                style:
                    textStyle.bodyNormal.copyWith(color: CustomColors.primary),
              ),
              callBack: () {
                homeController.homeFunction.buttonPressed("tan");
              },
            ),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.smallButton(
              title: Text(
                "sin",
                textAlign: TextAlign.center,
                style:
                    textStyle.bodyNormal.copyWith(color: CustomColors.primary),
              ),
              callBack: () {
                homeController.homeFunction.buttonPressed("sin");
              },
            ),
          ),
          CustomWidget.expandWithPadding(
            btnRLPadding: btnRLPadding,
            child: CustomWidget.smallButton(
              title: Text(
                "cos",
                textAlign: TextAlign.center,
                style:
                    textStyle.bodyNormal.copyWith(color: CustomColors.primary),
              ),
              callBack: () {
                homeController.homeFunction.buttonPressed("cos");
              },
            ),
          ),
        ],
      ),
    );
  }
}
