import 'package:classloom/common/custom_button.dart';
import 'package:classloom/common/custom_text.dart';
import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Optional if not used

class RegisterUser extends StatelessWidget {
  const RegisterUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.textWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: app_colors.textWhite,
        iconTheme: IconThemeData(color: app_colors.primaryColor),
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
                    color: app_colors.primaryColor,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    'Please fill in the details below to create your account',
                    fontSize: 14,
                    color: app_colors.primaryColor,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 30),
                  CustomText('Full Name', fontSize: 16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                  const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnMark',
                      prefixIcon: Icon(Icons.person, color: app_colors.primaryColor),         
                    ),
                    style: GoogleFonts.inter(
                      color: app_colors.textBlack,
                      fontSize: 16
                    ),
                    keyboardType: TextInputType.name,
                  ),                 
                 const SizedBox(height: 10),
                 CustomText('Username', fontSize:16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                 const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnmark1',
                      prefixIcon: Icon(Icons.person, color: app_colors.primaryColor),
                    ),
                    style: GoogleFonts.inter(
                      color: app_colors.textBlack,
                      fontSize: 16
                    ),
                   keyboardType: TextInputType.emailAddress

                  ), 
                 const SizedBox(height: 10),
                 CustomText('Email', fontSize:16, color: app_colors.primaryColor, fontWeight: FontWeight.w500,),
                 const SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'johnmark1@example.com',
                      prefixIcon: Icon(Icons.email, color: app_colors.primaryColor),
                    ),
                    style: GoogleFonts.inter(
                      color: app_colors.textBlack,
                      fontSize: 16
                    ),
                   keyboardType: TextInputType.emailAddress

                  ),
                  const SizedBox(height: 10),
                  CustomText('Password',fontSize: 16 , fontWeight: FontWeight.w500, color: app_colors.primaryColor,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:'********',
                      prefixIcon: Icon(Icons.lock, color: app_colors.primaryColor,),

                    ),
                    style: GoogleFonts.inter(color: app_colors.textBlack,
                    fontSize: 16),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,)
                  ,
                    const SizedBox(height: 10),
                  CustomText('Confirm password',fontSize: 16 , fontWeight: FontWeight.w500, color: app_colors.primaryColor,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText:'********',
                      prefixIcon: Icon(Icons.lock, color: app_colors.primaryColor,),
  
                    ),
                    style: GoogleFonts.inter(color: app_colors.textBlack,
                    fontSize: 16),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,)  , 
                  const SizedBox(height: 20),
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
        ),
      ),
    );
  }
}
