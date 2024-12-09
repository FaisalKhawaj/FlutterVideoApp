
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:image_picker/image_picker.dart';


class CustomImagePicker extends StatelessWidget {
  final VoidCallback handleChoosePhoto;
  final File? image;

  const CustomImagePicker({super.key,required this.handleChoosePhoto,required this.image});

  @override
  Widget build(BuildContext context) {
    return   Center(
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(children: [
            SizedBox.expand(
              child:     ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child:image != null?Image.file(image!, width: double.infinity,height: double.infinity,fit: BoxFit.cover,): Image.network('https://picsum.photos/id/1/200/300',fit: BoxFit.cover, width: double.infinity,height: double.infinity,),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              // alignment: Alignment.bottomRight,
              child:IconButton(onPressed:()=>{
                handleChoosePhoto()
              },
                  style: IconButton.styleFrom(
                    backgroundColor: R.themeProvider.colors.gradientButton1,
                  ),
                  icon: Icon(Icons.edit,color: R.themeProvider.colors.title,)) ,
            )
          ],),
        )
    );
  }
}
