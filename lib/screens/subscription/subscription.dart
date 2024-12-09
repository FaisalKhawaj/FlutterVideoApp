import 'package:fftv/screens/subscription/widgets/subscription_package.dart';
import 'package:fftv/screens/subscription/widgets/subscription_valid.dart';
import 'package:fftv/screens/subscription/widgets/tab_button.dart';
import 'package:fftv/utils/screen_size_config.dart';
import 'package:fftv/widgets/back_button_header.dart';
import 'package:fftv/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fftv/resources/resources.dart';
import 'package:carousel_slider/carousel_slider.dart';


List<int> list = [1, 2, 3, 4, 5];


class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  bool isMonthSelected = true;
  String selectedButton = 'Monthly';
  int _currentIndex = 0;

  void handleSelect(String val) {
    print('val $val');
    setState(() {
      selectedButton = val;
    });
  }

  void handleSubscribe(){

  }

  @override
  Widget build(BuildContext context) {
    // appBar:  BackButtonHeader(),
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          // BackButtonHeader(),
          Container(
            width: ScreenSizeConfig.screenWidth,
            height: ScreenSizeConfig.screenHeight,
            decoration: R.decorations.subscriptionBgWrap(),
          ),

          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Back Button
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: R.themeProvider.colors.title,
                            size: 35,
                          )),
                      // Back Button

                      const SizedBox(
                        height: 10,
                      ),

                      Center(
                          child: Text(
                        'Subscribe Now',
                        style: R.textStyle.onboardingTitle(),
                      )),
                      const SizedBox(
                        height: 10,
                      ),

                      // Description
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Unlock a world of entertainment with our subscription to the ultimate movie streaming app. Dive into a vast library of films, TV shows, and exclusive content with seamless streaming and unlimited access',
                          style: R.textStyle.inputTextStyle(),
                        ),
                      ),
                      // Description ends

                      // TabButton
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: ((50 / 812.0) *
                                  ScreenSizeConfig.screenHeight)),
                          padding: EdgeInsets.zero,
                          height: 50,
                          decoration: R.decorations.tabButtonStyleWrap(),
                          child: Row(
                            mainAxisSize: MainAxisSize
                                .min, // Shrink to fit the contentmainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TabButton(
                                  selectedButton: selectedButton,
                                  handleSelect: handleSelect,
                                  title: 'Monthly'),
                              TabButton(
                                  selectedButton: selectedButton,
                                  handleSelect: handleSelect,
                                  title: 'Annualy'),
                            ],
                          ),
                        ),
                      ),



                        CarouselSlider(
                          // items:list.map((item,(index))=> SubscriptionPackage()).toList(),
                            items: List.generate(list.length, (index) {
                              return SubscriptionPackage(
                                isActive: _currentIndex == index, // Pass whether the item is active
                              );
                            }),
                            options: CarouselOptions(
                              viewportFraction: 0.85,
                              aspectRatio: 1.12,
                              enlargeFactor:1,
                              // enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            )) ,

 SizedBox(height: 30,),
                      PrimaryButton(borderRadius: 15, title: 'Subscribe Now', handleClick: handleSubscribe)



                      // TabButton ends
                    ],
                  )))
        ],
      )),
    );
  }
}
