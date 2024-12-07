import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/widgets/back_button_header.dart';
import 'package:fftv/widgets/phone_text_field.dart';
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:get/get.dart';


class Signup extends StatelessWidget {
   Signup({super.key});
  final phoneController=TextEditingController();

void handleClick(){
Get.toNamed(Routes.otpVerication);
}
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          // bottomNavigationBar: ,
          appBar:const BackButtonHeader(),
          body:Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),

                  // Screen title
                  Center(child:  Text(textAlign: TextAlign.center, 'Create an account',style:R.textStyle.loginScreenTitle(),),),
                  // Screen title ends

                  const SizedBox(height: 40,),
                  Text('Phone number',style: R.textStyle.inputFieldTitle()),
                  // Phone Input Field
                   PhoneTextField(controller:phoneController),

                  // Phone Input Field ends

                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child:Padding(padding: EdgeInsets.only(bottom: 20),
                child: PrimaryButton(title: 'Continue', handleClick: handleClick),
                ) ,
              )
            ],
          ),
          ),
      ),
    );
  }
}
