

import 'dart:io';
import 'package:fftv/routes/app_routes.dart';
import 'package:fftv/screens/profile/widgets/custom_image_picker.dart';
import 'package:fftv/screens/profile/widgets/profile_row_buttons.dart';
import 'package:fftv/screens/profile/widgets/row_button_icon_title.dart';
import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      print('pickedFile $pickedFile ');
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  void handleSubscription(){
    Get.toNamed(Routes.subscription);
  }

  void handleFavorite(){}

  void handleHelpSupport(){}

  void handleSettings(){}

  void handleLogout(){}


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
          const SizedBox(height: 40,),
            CustomImagePicker(handleChoosePhoto:_pickImage,image:_image),
           const SizedBox(height: 20,),
            Text('Faisal Khawaj',style: R.textStyle.inputFieldTitle().copyWith(fontSize: 20,),),

            Text('khawajfaisal981@gmail.com',style: R.textStyle.inputHintTextStyle().copyWith(fontSize: 16,),),

            const SizedBox(height: 20,),
          // Horizontal Wallet history voting Row button
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child:    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RowButtonIconTitle(title: 'Wallet', icon: Icons.wallet_outlined),
                 RowButtonIconTitle(title: 'History', icon: Icons.refresh),
                 RowButtonIconTitle(title: 'Voting', icon: Icons.how_to_vote),
              ],
            ),
            ),
            // Horizontal Wallet history voting Row button
            
           const SizedBox(height: 30,),
            


            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                    decoration:R.decorations.profileButtonWrap(),
              padding: EdgeInsets.symmetric(vertical: 10),
              child:  Column(
                children: [
                  ProfileRowButtons(title: 'Subscription', showArrow: true, handlePress: handleSubscription, icon: Icons.favorite_outline),
                  ProfileRowButtons(handlePress:handleFavorite, title: 'Favorite', showArrow: true, icon: Icons.favorite_outline),
                  ProfileRowButtons(handlePress:handleHelpSupport, title:'Help & Support', showArrow: false, icon: Icons.question_mark_rounded),
                  ProfileRowButtons(title: 'Settings', showArrow: false, handlePress: handleSettings, icon: Icons.settings),
                  ProfileRowButtons(title: 'Logout', showArrow: false, handlePress: handleLogout)
                ],
              ),
            ),

            ),

            const SizedBox(height: 60,)

          ],
        ),
      )),
    );
  }
}
