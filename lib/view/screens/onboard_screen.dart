import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:classloom/view_models/onborad_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnboardScreen extends StatelessWidget {
  final onboardVm= Get.put(OnboradViewmodel());
  final pagerContoller=PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: 
    Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: TextButton(onPressed: onboardVm.finishOnBoarding,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10)
            ),
            backgroundColor: app_colors.primaryColor
          ),
           child: CustomText(
            'Skip',
            fontSize: 16,
            fontWeight: FontWeight.w500,
           )),
        )
      ],

    )
    
    ),);
  }
}