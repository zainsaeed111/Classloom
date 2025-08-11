import 'package:circular_badge_avatar/circular_badge_avatar.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';

class RegisterTeacherStepTwoScreen extends StatelessWidget {
  const RegisterTeacherStepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: app_colors.textWhite,
        appBar: AppBar(
          centerTitle: true,
           backgroundColor: app_colors.textWhite,
          iconTheme: IconThemeData(color: app_colors.primaryColor),       
          title: CustomText('Compelete Registeration', fontSize: 20),
         ),
        body: SafeArea(child: SizedBox(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Column(
                  children: [
                    CustomText(
                      'Add your profile picture (Optional)',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: app_colors.primaryColor,
                    ),
                    SizedBox(height: 110,
                    child: CircularBadgeAvatar(
                      iconPosition: 0,
                      
                    ),
                    )
                  ],
                 
                  
                ),
              ),
            ),
          ),
        )),


    );
  }
}