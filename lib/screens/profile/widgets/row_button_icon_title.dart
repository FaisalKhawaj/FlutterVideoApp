import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';


class RowButtonIconTitle extends StatelessWidget {
 final String title;
 final IconData icon;

  const RowButtonIconTitle({super.key,required this.title,required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        margin:const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color:R.themeProvider.colors.settingBg,
            borderRadius:  BorderRadius.circular(10)
        ),

        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const SizedBox(height: 20,),
            IconButton(onPressed: (){}, iconSize: 45,
                style: IconButton.styleFrom(backgroundColor: R.themeProvider.colors.roundedIconBg,),
                icon: Icon(icon,color: R.themeProvider.colors.title,size: 30,)),
           const SizedBox(height: 10,),
            Text(title,style: R.textStyle.inputTextStyle(),),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
