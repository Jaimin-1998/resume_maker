import 'package:flutter/material.dart';

class AppConstant {
  //String
  static const String appName = 'Resume Maker';
  static const String strSplashScreen = 'Resume Maker \nApplication';
  static const String strYes = 'Yes';
  static const String strNo = 'No';
  static const String strCreateNewResume = 'Create New Resume?';
  static const String strDoYouHaveWorkExperience =
      'Do you have work Experience?';
  static const String strHighSchool = 'HighSchool';
  static const String strCollege = 'College / University';
  static const String strOther = 'Others';

  //color
  static const Color clrWhite = Color(0xffffffff);
  static const Color clrBlack = Color(0xff000000);
  static const Color clrTransparent = Color(0x00ffffff);
  static const Color clrRed = Colors.red;
  static const Color clrGreen = Colors.green;

  //font-size
  static const double titleFontSize32 = 32;
  static const double fontSize15 = 15;
  static const double fontSize18 = 18;
  static const double fontSize17 = 17;
  static const double fontSize12 = 12;
  static const double fontSize11 = 11;
  static const double fontSize10 = 10;
  static const double fontSize16 = 16;
  static const double fontSize20 = 20;
  static const double fontSize14 = 14;
  static const double fontSize13 = 13;
  static const double fontSize24 = 24;
  static const double fontSize28 = 28;

  //Height and Width
  static displayHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static displayWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //textStyle
  static TextStyle textStyle(double? fontSize) {
    return TextStyle(color: clrWhite, fontSize: fontSize);
  }
}
