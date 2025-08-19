import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUser extends StatelessWidget {
  const LoginUser({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: app_colors.screenBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText('Login', fontSize: 20, color: app_colors.primaryColor),


      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'Welcome Back',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: app_colors.primaryColor,
                ),
                const SizedBox(height: 8),
                CustomText(
                  'Please login to your account',
                  fontSize: 14,
                  color: app_colors.primaryColor,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 30),
                CustomText('Enter your email', fontSize: 16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                const SizedBox(height: 5),  
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "user@gmail.com",
                    prefixIcon: Icon(Icons.email, color: app_colors.primaryColor),

                  ),
                  style: GoogleFonts.inter(
                    color: app_colors.textBlack,
                    fontSize: 16
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 5),  
              CustomText('Enter your email', fontSize: 16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                const SizedBox(height: 10),  

                TextFormField(
                  decoration: InputDecoration(
                    hintText: "********",
                    prefixIcon: Icon(Icons.lock, color: app_colors.primaryColor),

                  ),
                  style: GoogleFonts.inter(
                    color: app_colors.textBlack,
                    fontSize: 16
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 50),
                 CustomButton( buttonText: 'Next',
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
      )),
    );

    
  }
}