


import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppTextStyle{

  TextStyle screenTitle(){
return TextStyle(
  color:R.themeProvider.colors.title,
  fontSize: 24,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w500
);
  }

  TextStyle onboardingTitle(){
    return TextStyle(
        color:R.themeProvider.colors.title,
        fontSize: 32,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600
    );
  }

  TextStyle loginScreenTitle(){
    return TextStyle(
        color:R.themeProvider.colors.title,
        fontSize: 24,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600
    );
  }

  TextStyle inputFieldTitle(){
    return TextStyle(
        color: R.themeProvider.colors.title,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins'
    );
  }

  TextStyle inputTextStyle(){
    return TextStyle(
        color: R.themeProvider.colors.title,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 15
    );
  }

  TextStyle inputHintTextStyle(){
    return TextStyle(
      color: R.themeProvider.colors.placeholder,
      // color:,
    );
  }

  TextStyle onboardingDescription(){
    return TextStyle(
        color: R.themeProvider.colors.description,
        fontFamily: 'Poppins',
        height: 1.6,
        fontWeight: FontWeight.w600,
        fontSize: 14
    );
  }

  TextStyle loginAppleText(){
    return TextStyle(
        color: R.themeProvider.colors.title,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 18
    );
  }

  TextStyle primaryButtonText(){
    return TextStyle(
        color: R.themeProvider.colors.title,
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
      fontSize: 16
    );
  }

  TextStyle normalButtonText(){
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins',
        color:  R.themeProvider.colors.signupText
    );
  }

  TextStyle signupButtonText(){
    return TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: R.themeProvider.colors.signupText,
      );
  }

  TextStyle alreadyHaveAccounText(){
    return TextStyle(
        color: R.themeProvider.colors.title,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400
    );
  }

  TextStyle reelsLikeCount(){
    return TextStyle(color: R.themeProvider.colors.title,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins'
    );
  }

  TextStyle profileRowTitle(){
    return TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: R.themeProvider.colors.lightTitle.withOpacity(0.8));
  }

  TextStyle subscriptionAmount(){
    return TextStyle(
        color: R.themeProvider.colors.blueLine,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'Poppins'
    );
  }

  TextStyle subscriptionOption(){
    return TextStyle(
      color: R.themeProvider.colors.title,
      fontSize: 15,
    );
  }
}