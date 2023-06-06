import 'package:flutter/material.dart';
import 'package:flutter_application_calculator/Model/GetXPackages/Binding/home_binding.dart';
import 'package:flutter_application_calculator/Model/GetXPackages/Controller/home_controller.dart';
import 'package:flutter_application_calculator/Model/Tools/Constant/const.dart';
import 'package:flutter_application_calculator/View/home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(HomeController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: homeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: homeRoute,
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
            name: homeRoute,
            page: () => const HomeScreen(),
            binding: HomeBinding())
      ],
    );
  }
}
