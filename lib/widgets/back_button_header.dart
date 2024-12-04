import 'package:flutter/material.dart';
import 'package:fftv/resources/resources.dart';
import 'package:get/get.dart';

class BackButtonHeader extends StatelessWidget implements PreferredSizeWidget {
  const BackButtonHeader({super.key});




  @override
  Widget build(BuildContext context) {
    void goBack(){
      FocusScope.of(context).unfocus();
      Get.back();
    }

    return AppBar(
      backgroundColor: R.themeProvider.colors.screenBg,
      leading: IconButton(onPressed: goBack, icon: Icon(Icons.arrow_back,color: R.themeProvider.colors.title,)),
    );
  }
  // Implement preferredSize to conform to PreferredSizeWidget
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
