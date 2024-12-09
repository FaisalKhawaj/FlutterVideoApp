import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';

class TabButton extends StatefulWidget {
  final String selectedButton;
  final String title;
  final void Function(String) handleSelect;

  const TabButton({super.key,required this.selectedButton,required this.handleSelect,required this.title});

  @override
  State<TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<TabButton> {
  @override
  Widget build(BuildContext context) {
    return      GestureDetector(
      onTap: (){

          widget.handleSelect(widget.title);


      },
      child: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:  widget.selectedButton==widget.title?R.themeProvider.colors.gradientButton1:R.themeProvider.colors.title
        ),
        child: Center(child: Text(widget.title,style: TextStyle(
            color:widget.selectedButton==widget.title? R.themeProvider.colors.title:R.themeProvider.colors.gradientButton1
        ),),),
      ),
    );
  }
}
