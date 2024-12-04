import 'package:flutter/material.dart';
import '../resources/resources.dart';


class AppDecoration{


  BoxDecoration onboardingWrapperDecoration(){
    return BoxDecoration(
        gradient: LinearGradient(colors: <Color>[
          R.themeProvider.colors.gradientButton1,
          Colors.black,
        ],

          begin: Alignment.topLeft,
          end: Alignment.centerRight,)
    );
  }



  BoxDecoration primaryButtonDecoration(){
    return  BoxDecoration(
      // border: Border.all(width: 0),
      gradient: LinearGradient(
        colors: [R.themeProvider.colors.gradientButton1,R.themeProvider.colors.gradientButton2], // Full button gradient
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(30), // Match button's shape
    );
  }

  BoxDecoration onboardingBottomWrapDecoration(){
    return BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomCenter, colors: [R.themeProvider.colors.gradientButton1, Colors.black])
    );
  }

  BoxDecoration welcomeBottomWrap(){
    return  BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent,R.themeProvider.colors.screenBg,])
    );
  }


}