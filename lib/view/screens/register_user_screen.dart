import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/contsants/app_colors.dart'; // Optional if not used

class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.textWhite,
        iconTheme: IconThemeData(color: AppColors.primaryColor),
        title: CustomText('Register', fontSize: 20),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  CustomText(
                    'Create your account',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    'Please fill in the details below to create your account',
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 30),
                  CustomText('Full Name', fontSize: 16, color: AppColors.primaryColor, fontWeight: FontWeight.w500,),
                  const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnMark',
                      prefixIcon: Icon(Icons.person, color: AppColors.primaryColor),         
                    ),
                    style: GoogleFonts.inter(
                      color: AppColors.textBlack,
                      fontSize: 16
                    ),
                    keyboardType: TextInputType.name,
                  ),                 
                 const SizedBox(height: 10),
                 CustomText('Username', fontSize:16, color: AppColors.primaryColor, fontWeight: FontWeight.w500,),
                 const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnmark1',
                      prefixIcon: Icon(Icons.person, color: AppColors.primaryColor),
                    ),
                    style: GoogleFonts.inter(
                      color: AppColors.textBlack,
                      fontSize: 16
                    ),
                   keyboardType: TextInputType.emailAddress

                  ), 
                 const SizedBox(height: 10),
                 CustomText('Email', fontSize:16, color: AppColors.primaryColor, fontWeight: FontWeight.w500,),
                 const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnmark1@example.com',
                      prefixIcon: Icon(Icons.email, color: AppColors.primaryColor),
                    ),
                    style: GoogleFonts.inter(
                      color: AppColors.textBlack,
                      fontSize: 16
                    ),
                   keyboardType: TextInputType.emailAddress

                  ),
                  const SizedBox(height: 10),
                  CustomText('Password',fontSize: 16 , fontWeight: FontWeight.w500, color: AppColors.primaryColor,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:'********',
                      prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor,),

                    ),
                    style: GoogleFonts.inter(color: AppColors.textBlack,
                    fontSize: 16),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,)
                  ,
                    const SizedBox(height: 10),
                  CustomText('Confirm password',fontSize: 16 , fontWeight: FontWeight.w500, color: AppColors.primaryColor,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:'********',
                      prefixIcon: Icon(Icons.lock, color: AppColors.primaryColor,),
  
                    ),
                    style: GoogleFonts.inter(color: AppColors.textBlack,
                    fontSize: 16),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,)  , 
                  const SizedBox(height: 20),
                  CustomButton( buttonText: 'Next',
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
      ),
    );
  }
}
