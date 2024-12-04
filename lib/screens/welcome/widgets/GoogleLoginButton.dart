import 'package:fftv/utils/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fftv/resources/resources.dart';


class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 56,
      width: ScreenSizeConfig.screenWidth-40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
      child: OutlinedButton(onPressed: (){},
          style: R.buttons.googleLoginDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/google.svg',width: 30,height: 30,),
             const SizedBox(width: 10,),
              Text('Login with Google',style: TextStyle(
                color: R.themeProvider.colors.text,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 18
              ),)

            ],
          )),
    );
  }
}
