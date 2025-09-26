import 'package:circular_badge_avatar/circular_badge_avatar.dart';
import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:flutter/material.dart';
import '../../core/contsants/app_colors.dart';


class RegisterTeacherStepTwoScreen extends StatelessWidget {
  const RegisterTeacherStepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.textWhite,
        appBar: AppBar(
          centerTitle: true,
           backgroundColor: AppColors.textWhite,
          iconTheme: IconThemeData(color: AppColors.primaryColor),       
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
                    CustomText('Organization Name (Optional)', fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500,),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Organization Name ',
                        prefixIcon: Icon(Icons.business, color: AppColors.primaryColor),         
                      ),
                      style: const TextStyle(color: AppColors.textBlack, fontSize: 16),
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(height: 15),
                    CustomText('Organization Email (Optional)', fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500,),
                    const SizedBox(height: 10),    
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Organization Email',
                        prefixIcon: Icon(Icons.email, color: AppColors.primaryColor),         
                      ),
                      style: const TextStyle(color: AppColors.textBlack, fontSize: 16),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 25),
                  CustomButton( buttonText: 'Finish',
                  onPressed: () => {

                  },
                  buttonGradeient: LinearGradient(
                    colors: <Color>[
                      AppColors.primaryColor,
                      AppColors.thirdColor,
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