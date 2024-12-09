

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
  Color inputBg=const Color(0xFF232131);
  Color placeholder=const Color(0xFF9CA3AF);
  Color selectedTab=const Color(0xFF295bbb);
  Color unselectedTab=const Color(0xFFa5a4a7);
  Color lightGrey=const Color(0xFF63656b);
  Color settingBg=const Color(0xFF1F1D33);
  Color roundedIconBg=const Color(0xFF2e3042);
  Color lightTitle=const Color(0xFFEAE5F8);
  Color blueLine=const Color(0xFF337BFF);

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
    darkColors.inputBg=const Color(0xFF232131);
   darkColors.placeholder=const Color(0xFF9CA3AF);
   darkColors.selectedTab=const Color(0xFF295bbb);
   darkColors.unselectedTab=const Color(0xFFa5a4a7);
   darkColors.lightGrey=const Color(0xFF63656b);
   darkColors.settingBg=const Color(0xFF1F1D33);
   darkColors.roundedIconBg=const Color(0xFF2e3042);
   darkColors.lightTitle=const Color(0xFFEAE5F8);
    darkColors.blueLine=const Color(0xFF337BFF);
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
    lightColors.inputBg=const Color(0xFF232131);
    lightColors.placeholder=const Color(0xFF9CA3AF);
    lightColors.selectedTab=const Color(0xFF295bbb);
    lightColors.unselectedTab=const Color(0xFFa5a4a7);
    lightColors.lightGrey=const Color(0xFF63656b);
    lightColors.settingBg=const Color(0xFF1F1D33);
    lightColors.roundedIconBg=const Color(0xFF2e3042);
    lightColors.lightTitle=const Color(0xFFEAE5F8);
    lightColors.blueLine=const Color(0xFF337BFF);

    return lightColors;
  }
}