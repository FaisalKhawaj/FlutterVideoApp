import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/welcome/widgets/AppleLoginButton.dart';
import 'package:fftv/screens/welcome/widgets/GoogleLoginButton.dart';
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:get/get.dart';

class OverlapScreenContent extends StatelessWidget {
  const OverlapScreenContent({super.key});
void handleClickSignup(){
Get.toNamed(Routes.signup);
}
  @override
  Widget build(BuildContext context) {

  void handleUsePhoneNumber(){
    Get.toNamed(Routes.login);
  }
    return Container(
      decoration:R.decorations.welcomeBottomWrap(),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(textAlign: TextAlign.center ,"Effortlessly Discover \nYour Ideal Match",style: R.textStyle.onboardingTitle().copyWith(
              fontSize: 26
          ),),

         const SizedBox(height: 10,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30),

            child:  Text('Experience a seamless journey \n uncovering the ideal match that aligns with your preferences and aspirations',
              textAlign: TextAlign.center ,
              style: R.textStyle.onboardingDescription().copyWith(color: R.themeProvider.colors.title.withOpacity(0.5), fontWeight: FontWeight.w400),
            ),
          ),

        const  SizedBox(height: 40,),
          GoogleLoginButton(),
          const SizedBox(height: 15,),
          AppleLoginButton(),
          const SizedBox(height: 15,),
          // Phone number
          PrimaryButton(title: 'Use phone number',borderRadius: 15,handleClick: handleUsePhoneNumber,),
          // Phone number
          // Dont have account sign up button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",style:R.textStyle.alreadyHaveAccounText(),),
              TextButton(onPressed:handleClickSignup, child: Text('Sign up',style:R.textStyle.signupButtonText()))
            ],
          )

          // Dont have account sign up button ends



        ],
      ),
    );
  }
}
