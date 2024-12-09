
import 'package:fftv/screens/subscription/widgets/subscription_valid.dart';
import 'package:fftv/utils/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class SubscriptionPackage extends StatelessWidget {
  final bool isActive;

  const SubscriptionPackage({super.key,required this.isActive});

  @override
  Widget build(BuildContext context) {
    double height = isActive ? 360 : 360; // Set different height for active item

    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: ScreenSizeConfig.screenWidth-20,
      height: height, // Adjust height based on active state

      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,color:R.themeProvider.colors.blueLine)
      ),
      child: Column(
        children: [
          Text('Premium',style: R.textStyle.onboardingTitle(),),
          Text("\$30/month",style: R.textStyle.subscriptionAmount()),
          const SizedBox(height: 10,),
          SubscriptionValid(title: '3 month of VIP membership'),
          SubscriptionValid(title: 'Unlimited watching and downloading of short films'),
          SubscriptionValid(title: 'Access to exclusive community for deep discussions and exchanges'),
          SubscriptionValid(title: '100 points per month'),
          SubscriptionValid(title: 'Voting rights'),

        ],
      ),
    );
  }
}
