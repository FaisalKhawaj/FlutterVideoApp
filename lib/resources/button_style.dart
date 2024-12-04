import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppButton{

  ButtonStyle signInButtonDecoration(){
    return  OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
        side: BorderSide(width: 1.5,color: R.themeProvider.colors.signupText));
  }

  ButtonStyle googleLoginDecoration(){
    return OutlinedButton.styleFrom(
      side: const BorderSide(width: 0),
      backgroundColor: R.themeProvider.colors.title,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
    );
  }
}

