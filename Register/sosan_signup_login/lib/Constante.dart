import 'dart:ui';

//import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Constante {
  static const kSpacingUnit = 10;

  static const kDarkPrimaryColor = Color(0xFF212121);
  static const kDarkSecondaryColor = Color(0xFF373737);
  static const kLightPrimaryColor = Color(0xFFFFFFFF);
  static const kLightSecondaryColor = Color(0xFFF3F7FB);
  static const kAccentColor = Color(0xFF3AB7FC);
  static const vert = Color(0xFF7FD862);
  static final kTitleTextStyle = GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.7),
    fontWeight: FontWeight.w600,
  );

  static final kCaptionTextStyle = GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.3),
    fontWeight: FontWeight.w100,
  );

  static final kButtonTextStyle = GoogleFonts.montserrat(
    fontSize: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static final kDarkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'SFProText',
    primaryColor: kDarkPrimaryColor,
    canvasColor: kDarkPrimaryColor,
    hintColor: kAccentColor,
    iconTheme: ThemeData.dark().iconTheme.copyWith(
          color: kLightSecondaryColor,
        ),
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: 'SFProText',
          bodyColor: kLightSecondaryColor,
          displayColor: kLightSecondaryColor,
        ), // ), colorScheme: ColorScheme(background: kDarkSecondaryColor),
  );

  static final kLightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'SFProText',
    primaryColor: kLightPrimaryColor,
    canvasColor: kLightPrimaryColor,
    hintColor: kAccentColor,
    iconTheme: ThemeData.light().iconTheme.copyWith(
          color: kDarkSecondaryColor,
        ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'SFProText',
          bodyColor: kDarkSecondaryColor,
          displayColor: kDarkSecondaryColor,
        ),
  );
  static TextStyle kTitlePage() {
    return TextStyle(
      fontSize: 21.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      wordSpacing: 0.5,
    );
  }

  static const bleu = Color(0xFF3AB7FC);

  static TextStyle kSubTitlePage() {
    return TextStyle(
      fontSize: 17.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
      wordSpacing: 0.5,
    );
  }
}
