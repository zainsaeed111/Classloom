import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension TransparentStatusBar on BuildContext {
  void makeStatusBarTransparent({Brightness iconBrightness = Brightness.dark}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: iconBrightness,
        statusBarBrightness: iconBrightness,
      ),
    );
  }
}
