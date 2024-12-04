import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/otpverification/widgets/OtpInputField.dart';
import 'package:fftv/widgets/back_button_header.dart';
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});
void handleResendCode(){

}
void handleVerify(){
  Get.toNamed(Routes.login);
}
  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    final borderColor = R.themeProvider.colors.inputBg;


    final defaultPinTheme=PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins',
          color: R.themeProvider.colors.title,
      ),
      decoration: BoxDecoration(
        color:R.themeProvider.colors.inputBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:borderColor),
      ),
    );

    final focusedPinTheme= defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: R.themeProvider.colors.signupText),
      ),
    );

    final submittedPinTheme=defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: R.themeProvider.colors.inputBg,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: R.themeProvider.colors.inputBg),
      ),
    );

    final errorPinTheme=defaultPinTheme.copyBorderWith(
      border: Border.all(color: Colors.redAccent),
    );

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child:Scaffold(
        appBar: const BackButtonHeader(),
        body:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  SizedBox(height: 20,),
                // Screen title
                Center(child:  Text(textAlign: TextAlign.center, 'Enter 4 digit code',style:R.textStyle.loginScreenTitle(),),),
                // Screen title ends
                const SizedBox(height: 40,),

                FractionallySizedBox(
                  widthFactor: 1,
                  // You can also checkout the [PinputBuilderExample]
                  child:   OtpInputField(defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme:submittedPinTheme,
                    errorPinTheme: errorPinTheme,
                    onCompleted: (val){
                      // Get.toNamed(Routes.login);
                    },
                  )
                ),

                SizedBox(height: 50,),






              ],
            ),

            // Didn't receive code row
            Align(
              alignment: Alignment.center,
              child:    Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive the code?",style:R.textStyle.alreadyHaveAccounText(),),
                  TextButton(onPressed:handleResendCode, child: Text('Resend Code',style:R.textStyle.signupButtonText()))
                ],
              ) ,
            ),
            // Didn't receive code row


            Align(alignment: Alignment.bottomCenter,
            child:Padding(padding: EdgeInsets.only(bottom: 15),
            child:  PrimaryButton(title: 'Verify', handleClick: handleVerify,
            )),

            )
          ],
        ),
        ) ,
      ) ,
    );
  }
}
