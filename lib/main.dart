import 'package:classloom/bindings/home_binding.dart';
import 'package:classloom/bindings/onboard_binding.dart';
import 'package:classloom/core/contsants/app_colors.dart';
import 'package:classloom/view/screens/bottomnav/home_screen.dart';
import 'package:classloom/view/screens/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Classloom',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      ),
      initialRoute: '/',
      home: MainHomeScreen(),
      initialBinding: HomeBinding(),
      getPages: [
        GetPage(
          name: '/onboard',
          page: () => OnboardScreen(),
          binding: OnboardBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => MainHomeScreen(),
          binding: HomeBinding(),
        ),
      ],
    );
  }
}
