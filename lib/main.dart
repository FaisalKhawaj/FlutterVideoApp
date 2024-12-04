import 'package:fftv/routes/app_pages.dart';
import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:fftv/resources/resources.dart';
import 'package:fftv/utils/screen_size_config.dart';
void main() {

  runApp(ChangeNotifierProvider(create: (_)=>R.themeProvider,
     child:  const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // Initialize ScreenSizeConfig with the current context
    ScreenSizeConfig.init(context);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Set your desired color here
        statusBarIconBrightness: Brightness.light, // For white icons
        statusBarBrightness: Brightness.dark, // For iOS
      ),
    );
    return GetMaterialApp(
      title: 'Video App',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: R.themeProvider.isDarkMode ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor: R.themeProvider.colors.screenBg,
      ),
      home: const Onboarding(),
      initialRoute: Routes.onboarding,
      getPages: AppPages.pages,
    );
  }
}

