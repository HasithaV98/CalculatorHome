import 'package:flutter_application_calculator/Model/Tools/Fonts/font.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {

    Get.put(CustomFonts());
  }
}
