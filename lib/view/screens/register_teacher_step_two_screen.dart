import 'package:circular_badge_avatar/circular_badge_avatar.dart';
import 'package:classloom/common/custom_button.dart';
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
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                  
                  const SizedBox(height: 15),
                   
                  Center(
      child: SizedBox(
        height: 110,
        child: CircularBadgeAvatar(
          needImagePickerIcon: true,
          iconPosition: 80,
          iconOnTap: () async {
          },
        ),
      ),
    ),
                    const SizedBox(height: 20,),
                    CustomText('Organization Name (Optional)', fontSize: 16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Organization Name ',
                        prefixIcon: Icon(Icons.business, color: app_colors.primaryColor),         
                      ),
                      style: const TextStyle(color: app_colors.textBlack, fontSize: 16),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 15),
                    CustomText('Organization Email (Optional)', fontSize: 16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                    const SizedBox(height: 10),    
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Organization Email',
                        prefixIcon: Icon(Icons.email, color: app_colors.primaryColor),         
                      ),
                      style: const TextStyle(color: app_colors.textBlack, fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 25),
                  CustomButton( buttonText: 'Finish',
                  onPressed: () => {

                  },
                  buttonGradeient: LinearGradient(
                    colors: <Color>[
                      app_colors.primaryColor,
                      app_colors.thirdColor,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight, 
                  ))

                  ],
                 
                  
                ),
              ),
            ),
          ),
        )),


    );
  }
}