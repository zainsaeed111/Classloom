import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:classloom/view/screens/onboard_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) {
      return const MyApp();
    },
  ));
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
        colorScheme: ColorScheme.fromSeed(seedColor: app_colors.primaryColor),
      ),
     initialRoute: '/',
     getPages: [
        GetPage(name: '/', page: () =>  OnboardScreen()),
     ],
   
    );
  }
}
