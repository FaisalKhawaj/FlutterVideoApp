import 'package:fftv/utils/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fftv/resources/resources.dart';


class AppleLoginButton extends StatelessWidget {
  const AppleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: ScreenSizeConfig.screenWidth-40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [R.themeProvider.colors.appleLoginGradient1,R.themeProvider.colors.appleLoginGradient2])
      ),
      child: OutlinedButton(onPressed: (){},
          style: OutlinedButton.styleFrom(
              side:const BorderSide(width: 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ),
          // style: R.buttons.googleLoginDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/apple.svg',width: 30,height: 30,),
              const SizedBox(width: 10,),
              Text('Login with Apple',style: R.textStyle.loginAppleText(),)

            ],
          )),
    );
  }
}
