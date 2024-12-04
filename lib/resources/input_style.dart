import 'package:flutter/material.dart';
import '../resources/resources.dart';

class AppInputStyle{
  OutlineInputBorder inputBorderStyle(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1,color: R.themeProvider.colors.inputBg));
  }

  OutlineInputBorder inputFocusBorderStyle(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(width: 1,color: R.themeProvider.colors.title));
  }

  OutlineInputBorder inputErrorBorderStyle(){
    return OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide:BorderSide(width: 1,color: Colors.red) );
  }


}