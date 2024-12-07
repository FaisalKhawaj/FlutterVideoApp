import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/widgets/back_button_header.dart';
import 'package:fftv/widgets/phone_text_field.dart';
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:get/get.dart';


class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final phoneController=TextEditingController();

void handleClick(){
  print(phoneController.text);
  final  username=phoneController.text;
Get.toNamed(Routes.customBottomTab,arguments: username);
}

@override
void dispose(){
  phoneController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
          appBar:const BackButtonHeader(),
          body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child:Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  SizedBox(height: 20,),
                      // Screen title
                      Center(child:  Text(textAlign: TextAlign.center, 'Welcome Back',style:R.textStyle.loginScreenTitle(),),),
                      // Screen title ends
                      const SizedBox(height: 40,),
                      Text('Phone number',style: R.textStyle.inputFieldTitle()),

                        PhoneTextField(controller:phoneController),
                    ],
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(padding: EdgeInsets.only(bottom: 20),
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
