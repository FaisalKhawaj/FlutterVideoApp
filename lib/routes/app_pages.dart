

import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/login/login.dart';
import 'package:fftv/screens/onboarding/onboarding.dart';
import 'package:fftv/screens/otpverification/otp_verification.dart';
import 'package:fftv/screens/reels/reels.dart';
import 'package:fftv/screens/signup/signup.dart';
import 'package:fftv/screens/voting/voting.dart';
import 'package:fftv/screens/welcome/welcome.dart';
import 'package:fftv/widgets/custom_bottom_tab.dart';
import 'package:get/get.dart';

abstract class AppPages{


  static final List<GetPage> pages=[
GetPage(name: Routes.welcome, page: ()=>Welcome()),
    GetPage(name: Routes.onboarding, page: ()=>Onboarding()),
    GetPage(name: Routes.login, page: ()=>const Login()),
    GetPage(name: Routes.signup, page: ()=>const Signup()),
    GetPage(name: Routes.otpVerication, page:()=> const OtpVerification()),
    GetPage(name: Routes.customBottomTab, page: ()=>const CustomBottomTab()),
    GetPage(name: Routes.voting, page: ()=>Voting()),
    GetPage(name: Routes.reels, page: ()=>Reels())
  ];

}