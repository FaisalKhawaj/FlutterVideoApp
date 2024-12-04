

import 'package:flutter/material.dart';

class AppColor{
  Color screenBg = const Color(0xFF141416);
  Color text= const Color(0xFF11181C);
  Color title = const Color(0xFFFFFFFF);
  Color description= const Color(0xFF9CA3CB);
  Color gradientButton1= const Color(0xFF000F93);
  Color gradientButton2= const Color(0xFF5E006C);
  Color signupText = const Color(0xFFAAA8FE);
  Color appleLoginGradient2=const Color(0xFFBEBEBE);
  Color appleLoginGradient1=const Color(0xFF5F5F5F);

  static AppColor dark(){
    AppColor darkColors = AppColor();
    darkColors.screenBg = const Color(0xFF141416);
    darkColors.text= const Color(0xFF11181C);
    darkColors.title= const Color(0xFFFFFFFF);
    darkColors.description= const Color(0xFF9CA3CB);
    darkColors.gradientButton1= const Color(0xFF000F93);
    darkColors.gradientButton2= const Color(0xFF5E006C);
    darkColors.signupText= const Color(0xFFAAA8FE);
    darkColors.appleLoginGradient1=const Color(0xFF5F5F5F);
    darkColors.appleLoginGradient2=const Color(0xFFBEBEBE);

    return darkColors;
  }

  static AppColor light(){
    AppColor lightColors = AppColor();
    lightColors.screenBg = const Color(0xFF141416);
    lightColors.text= const Color(0xFF11181C);
    lightColors.title= const Color(0xFFFFFFFF);
    lightColors.description= const Color(0xFF9CA3CB);
    lightColors.gradientButton1= const Color(0xFF000F93);
    lightColors.gradientButton2= const Color(0xFF5E006C);
    lightColors.signupText= const Color(0xFFAAA8FE);
    lightColors.appleLoginGradient1=const Color(0xFF5F5F5F);
    lightColors.appleLoginGradient2=const Color(0xFFBEBEBE);


    return lightColors;
  }
}