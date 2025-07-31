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
  final double? iconSize;
  final Color? iconColor;
  final IconData? buttonIcon;

  const CustomButton({
    super.key,
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
    this.showLoading = false,
    this.iconColor,
    this.iconSize,
    this.buttonIcon
  });

  @override
  Widget build(BuildContext context) {
    final BorderRadius buttonradius =
        BorderRadius.circular(buttonBorderRadius ?? 10.0);
    final Color defualtTextColor = buttonTextColor ?? Colors.white;
    final Color defaultBgColor =
        buttonBackgorundColor ?? app_colors.primaryColor;

    final Widget childButton = Center(
      child: showLoading
          ? SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(
                color: defualtTextColor,
                strokeWidth: 3,
              ),
            )
          : 
         Row(
              mainAxisSize: MainAxisSize.min, 
              children: [
                if (buttonIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0), 
                    child: Icon(
                      buttonIcon,
                      size: iconSize ?? 20.0, 
                      color: iconColor ?? defualtTextColor, 
                    ),
                  ),
                Text(
                  buttonText,
                  style: buttonTextStyle ??
                      TextStyle(
                        color: defualtTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
    );

    return Opacity(
      opacity: buttonEnabled ? 1.0 : 0.5,
      child: SizedBox(
        height: buttonHeight ?? 50,
        width: buttonWidth ?? double.infinity,
        child: Material( 
          color: Colors.transparent,
          borderRadius: buttonradius,
          clipBehavior: Clip.antiAlias,
          child: InkWell( 
            onTap: buttonEnabled && !showLoading ? onPressed : null,
            child: Ink(
              decoration: BoxDecoration(
                gradient: buttonGradeient,
                color: buttonGradeient == null ? defaultBgColor : null,
                borderRadius: buttonradius,
                border: Border.all(
                  color: buttonBorderColor ?? Colors.transparent,
                  width: buttonBorderWidth ?? 0.0,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: childButton,
              ),
            ),
          ),
        ),
      ),
    );
  }
}