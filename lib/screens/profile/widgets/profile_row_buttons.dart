import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';


class ProfileRowButtons extends StatelessWidget {
  final String title;
  final VoidCallback handlePress;
  final IconData? icon;
  final bool showArrow;

  const ProfileRowButtons({super.key,required this.title,required this.showArrow,this.icon,required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handlePress,
      child: Padding(padding: EdgeInsets.all(15),
        child: Row(
          children: [
            icon!=null? Icon(icon,color: R.themeProvider.colors.lightTitle.withOpacity(0.8),size: 25,):const SizedBox(width: 25,),
            const SizedBox(width: 10,),
            Expanded(child: Text(title,style:R.textStyle.profileRowTitle(),)),
            showArrow? Icon(Icons.chevron_right,color: R.themeProvider.colors.lightTitle.withOpacity(0.8),): SizedBox.shrink()
          ],
        ),),
    );
  }
}
