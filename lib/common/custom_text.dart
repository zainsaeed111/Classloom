import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
   final String text;
  final TextStyle? style;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;

const CustomText(
    this.text, {
    this.fontSize,
    this.fontWeight,
    this.color,
    this.style,
    this.textAlign,
    Key? key,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign?? TextAlign.start,
      style: style ??
          GoogleFonts.inter(
            fontSize: fontSize ?? 14.0,
            
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ?? Colors.black,
          ),
    );
  }
}