

import 'package:fftv/screens/welcome/widgets/AppleLoginButton.dart';
import 'package:fftv/screens/welcome/widgets/GoogleLoginButton.dart';
import 'package:fftv/utils/screen_size_config.dart';
import 'package:fftv/widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';
import 'package:fftv/resources/resources.dart';

class Welcome extends StatefulWidget {

  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late VideoPlayerController _controller;
  double screenHeight = ScreenSizeConfig.screenHeight;
  double screenWidth = ScreenSizeConfig.screenWidth;



  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/backgroundVideo.mp4');


    _controller.addListener(() {
      setState(() {
        // _controller.play();
      });
    });
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF141416),Color(0xFF141416)])
        ),
        child:  Stack(
          children: [
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  height:screenHeight,
                  width: screenWidth,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
Center(
  child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(textAlign: TextAlign.center ,"Effortlessly Discover \nYour Ideal Match",style: R.textStyle.onboardingTitle().copyWith(
fontSize: 26
      ),),

     SizedBox(height: 10,),
     Padding(padding: EdgeInsets.symmetric(horizontal: 30),
     child:  Text(textAlign: TextAlign.center ,
       'Experience a seamless journey  uncovering the ideal match that aligns with your preferences and aspirations',
       style: R.textStyle.onboardingDescription().copyWith(
         color: R.themeProvider.colors.title.withOpacity(0.5),
         fontWeight: FontWeight.w400
       ),
     ),
     ),

   SizedBox(height: 20,),
      GoogleLoginButton(),
      SizedBox(height: 15,),
      AppleLoginButton(),
      SizedBox(height: 15,),

      PrimaryButton(title: 'Use phone number',borderRadius: 15,),



    ],
  ) ,
)

          ],
        )
      ),
    );
  }
}
