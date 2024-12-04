
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';


class BottomExploreWrapper extends StatelessWidget {

 final VoidCallback handleClickWatchNow;
 final VoidCallback handleClickSignIn;
 final VoidCallback handleClickSignup;

  const BottomExploreWrapper({super.key,
    required this.handleClickSignIn,
    required this.handleClickSignup,
    required this.handleClickWatchNow});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,),
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 15) ,
      decoration: R.decorations.onboardingBottomWrapDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Explore Our Movie Library',style: R.textStyle.onboardingTitle(),),
          const SizedBox(height: 10,),
          Text('Dive into our vast collection of blockbuster movies, hidden gems, and exclusive originals.', style: R.textStyle.onboardingDescription(),),

          const SizedBox(height: 16,),
          PrimaryButton(title: 'Watch Now',handleClick: handleClickWatchNow,),

          // Sign in button
          SizedBox(height: 56,
            child: OutlinedButton(onPressed:handleClickSignIn, style: R.buttons.signInButtonDecoration(),
                child:Container(
                  alignment: Alignment.center,
                  constraints: BoxConstraints.expand(),
                  child: Text('Sign in',style: R.textStyle.normalButtonText()),

                )),
          ),
          // Sign in button ends
          const SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",style:R.textStyle.alreadyHaveAccounText(),),
              TextButton(onPressed:handleClickSignup, child: Text('Sign up',style:R.textStyle.signupButtonText()))
            ],
          )




        ],
      ),
    );
  }
}
