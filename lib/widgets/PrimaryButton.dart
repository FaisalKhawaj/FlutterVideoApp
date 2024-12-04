
import 'package:fftv/utils/screen_size_config.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';


class PrimaryButton extends StatelessWidget {
  final double borderRadius;
  final String title;
  const PrimaryButton({super.key,required this.title,this.borderRadius=30.0,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: ScreenSizeConfig.screenWidth-40,
    margin:const EdgeInsets.only(bottom: 16),
      // width: MediaQuery.of(context).size.width * 0.8, // 50% of the screen width
      height: 56, // Parent height
      child: OutlinedButton(onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(width: 0),
          padding: EdgeInsets.zero, // Remove default padding
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius),),),
        child: Ink(
          decoration:R.decorations.primaryButtonDecoration().copyWith(
              borderRadius: BorderRadius.circular(borderRadius)
          ),
          child: Container(constraints: BoxConstraints.expand(), // Make child fill parent's height & width
            alignment: Alignment.center, // Center the text
            child: Text(title, style:R.textStyle.primaryButtonText()),
          ),
        ),
      ),
    );
  }
}
