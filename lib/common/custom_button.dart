import 'package:classloom/core/contsants/app_colors.dart' as app_colors;
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  final TextStyle? buttonTextStyle;
  final Color? buttonBackgorundColor;
  final Gradient? buttonGradeient;
  final Color? buttonTextColor;
  final double? buttonBorderRadius;
  final double? buttonBorderWidth;
  final Color? buttonBorderColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final bool buttonEnabled;
  final bool showLoading;

  const CustomButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.buttonTextStyle,
    this.buttonBackgorundColor,
    this.buttonGradeient,
    this.buttonTextColor,
    this.buttonBorderRadius,
    this.buttonBorderWidth,
    this.buttonBorderColor,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonEnabled = true,
    this.showLoading = false  
  
  }):super(key: key);




  @override
  Widget build(BuildContext context) {
    final BorderRadius buttonradius=BorderRadius.circular(buttonBorderRadius??10.0);
    final Color defualtTextColor=buttonTextColor?? Colors.white;
    final Color defaultBgColor=buttonBackgorundColor?? app_colors.primaryColor;

    final Widget childButton=Center(child:
    showLoading? SizedBox(
      width: 22,
      height: 22,
      child: CircularProgressIndicator(
        color: defualtTextColor,
        strokeWidth: 3,

      ),
    )
    : Text(buttonText,
      style: buttonTextStyle?? TextStyle(
        color: defualtTextColor,
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
    ));
    


    return  Opacity(opacity: 
       buttonEnabled?1.0:0.5,
       child: SizedBox(
       height: buttonHeight??50,
       width: buttonWidth??double.infinity,
       child: ElevatedButton(
        onPressed: buttonEnabled && !showLoading?  onPressed:null
       ,style: ElevatedButton.styleFrom(
        backgroundColor: buttonGradeient==null ?defaultBgColor:Colors.transparent
        ,shape: RoundedRectangleBorder(
          borderRadius: buttonradius,side: BorderSide(
            color: buttonBorderColor??defaultBgColor,
            width: buttonBorderWidth??0.0
          )
        )
       ) 
       ,
       child: Ink(
        decoration: BoxDecoration(
          gradient: buttonGradeient,
          color:buttonGradeient==null?defaultBgColor:null,
          borderRadius: buttonradius
        ),
        child: Container(
           height: double.infinity,
            width: double.infinity,  
          alignment: Alignment.center,
           padding: const EdgeInsets.symmetric(horizontal: 16),
              child: childButton

        ),
       )
       
       
       
       ),
      
      ),
    )
    ;
  }
}