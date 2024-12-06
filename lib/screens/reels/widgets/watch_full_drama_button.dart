
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class WatchFullDramaButton extends StatelessWidget {

  final VoidCallback handlePress;

  const WatchFullDramaButton({super.key,required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: R.themeProvider.colors.lightGrey,
      ),
      child: ElevatedButton(onPressed:handlePress,
          style: ElevatedButton.styleFrom(
            backgroundColor: R.themeProvider.colors.lightGrey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.play_arrow,color: R.themeProvider.colors.title,),
             const SizedBox(width: 5,),
              Text('Watch Full Drama',style: R.textStyle.loginAppleText(),)
            ],
          )),
    );
  }
}
