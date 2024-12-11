
import 'package:fftv/screens/reels/widgets/watch_full_drama_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class ReelsOverlayContent extends StatelessWidget {
  final VoidCallback handleClickWatchDrama;

  const ReelsOverlayContent({super.key,required this.handleClickWatchDrama});

  @override
  Widget build(BuildContext context) {
    return     Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.heart_broken,size: 30, color: R.themeProvider.colors.title,),
                Text('2.5K',style: R.textStyle.reelsLikeCount(),),
                SizedBox(height: 20,),
                Icon(Icons.star,size: 30, color: R.themeProvider.colors.title,),
                Text('57',style: R.textStyle.reelsLikeCount(),),
                SizedBox(height: 20,),
                Icon(Icons.star,size: 30, color: R.themeProvider.colors.title,),
                Text('37',style: R.textStyle.reelsLikeCount(),),
                SizedBox(height: 20,),
               IconButton(onPressed: (){
                 showCupertinoModalPopup(context: context, builder: (BuildContext context)=>
                   CupertinoActionSheet(
                     title: const Text('Title'),
                     message: const Text('Message'),
                     actions: <CupertinoActionSheetAction>[
                     CupertinoActionSheetAction(
                     /// This parameter indicates the action would be a default
                     /// default behavior, turns the action's text to bold text.
                     isDefaultAction: true,
                     onPressed: () {
                       Navigator.pop(context);
                     },
                     child: const Text('Default Action'),
                   ),
                       CupertinoActionSheetAction(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         child: const Text('Action'),
                       ),
                       CupertinoActionSheetAction(
                         /// This parameter indicates the action would perform
                         /// a destructive action such as delete or exit and turns
                         /// the action's text color to red.
                         isDestructiveAction: true,
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         child: const Text('Destructive Action'),
                       ),

                   ]
                   )
                 );
               }, icon: Icon(Icons.stacked_bar_chart,size: 30, color: R.themeProvider.colors.title,)) ,
                Text('List',style: R.textStyle.reelsLikeCount(),),
                SizedBox(height: 20,),
                Icon(Icons.share,size: 30, color: R.themeProvider.colors.title,),
                Text('Share',style: R.textStyle.reelsLikeCount(),),
                SizedBox(height: 40,),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Arman Kamerun',style: R.textStyle.reelsLikeCount().copyWith(fontWeight: FontWeight.w600, fontSize: 20),),
                SizedBox(height: 4,),
                Text('Cyberpunk 2021 for next generation',style: R.textStyle.reelsLikeCount().copyWith(fontWeight: FontWeight.w400),),
                SizedBox(height: 4,),


                WatchFullDramaButton(handlePress: handleClickWatchDrama),
                SizedBox(height: 10,),


                // Row()
              ],
            ),
          )
        ],
      ),
    );
  }
}
