import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class SubscriptionValid extends StatelessWidget {
  final String title;

  const SubscriptionValid({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 5),
    child:  Row(
      spacing: 1,
      children: [
        Icon(Icons.check_circle,color: R.themeProvider.colors.title,),
        const SizedBox(width: 10,),
        Expanded(child:   Text(title,softWrap: true, overflow: TextOverflow.ellipsis,  // Handle overflow by showing ellipsis if needed
            maxLines: 2, style: R.textStyle.subscriptionOption()),)
      ],
    ),
    );
  }
}
