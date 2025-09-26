import 'package:classloom/utills/Extnesions.dart';
import 'package:flutter/material.dart';

import '../../../common/custom_text.dart';
import '../../../core/contsants/app_colors.dart';

class TeachersDashboard extends StatelessWidget {
  const TeachersDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    context.makeStatusBarTransparent();
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.textWhite,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: CustomText('Dashboard', fontSize: 20,color: AppColors.textWhite,fontWeight: FontWeight.w600,),
      ),
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          gradient: LinearGradient(colors: <Color>[
            AppColors.primaryColor,
            AppColors.thirdColor,
          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),

        ),


      ),

    );
  }
}
