import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoleSelection extends StatelessWidget {
  const RoleSelection({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold( 
      backgroundColor: app_colors.primaryColor,
      resizeToAvoidBottomInset: false, 
      body: SafeArea(
        
        child:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           CustomText('Welcome to classloom 👋', 
            fontSize: 34, fontWeight: FontWeight.bold,
            color: app_colors.textWhite,
          ),
          SizedBox(height: 15,),
          CustomText('Let’s get started by choosing your role ', 
            fontSize: 28, fontWeight: FontWeight.w400,
            color: app_colors.textWhite,
          ),
          SizedBox(height: 40,),
          CustomButton(buttonText: 'I am a Teacher',
           buttonTextStyle: const
           TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: app_colors.primaryColor,),
            buttonBackgorundColor: app_colors.ctaOrange,
            buttonBorderRadius: 20,
            buttonBorderWidth: 2,
            buttonIcon: Icons.school,
            iconColor: app_colors.primaryColor,
            buttonHeight: 75,
            iconSize: 60,
            onPressed: () {
              // Navigate to teacher onboarding
            },
          ),
          SizedBox(height: 15,),
          CustomButton(buttonText: 'I am a Student',
           buttonTextStyle: const
           TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: app_colors.primaryColor,),
            buttonBackgorundColor: app_colors.thirdColor,
            buttonBorderRadius: 20,
            buttonBorderWidth: 2,
            buttonIcon: Icons.person_2,
            iconColor: app_colors.primaryColor,
            buttonHeight: 75,
            iconSize: 60,
            onPressed: () {
              // Navigate to teacher onboarding
            },
          ),
          SizedBox(height: 15,),
          InkWell(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText('Already have an account?',color: app_colors.textWhite,fontSize: 18,fontWeight: FontWeight.w400,),
              SizedBox(width: 5,),
              CustomText('Login',color: app_colors.ctaOrange,fontSize: 18,fontWeight: FontWeight.w400,)

            ],
          )
          )
          


        ],


    )
    )
     ),
    );
  }
}