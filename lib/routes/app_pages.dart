

import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/onboarding/onboarding.dart';
import 'package:fftv/screens/welcome/welcome.dart';
import 'package:get/get.dart';

abstract class AppPages{


  static final List<GetPage> pages=[
GetPage(name: Routes.welcome, page: ()=>Welcome()),
    GetPage(name: Routes.onboarding, page: ()=>Onboarding()),
  ];

}