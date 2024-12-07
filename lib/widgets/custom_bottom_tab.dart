import 'package:fftv/screens/home/home.dart';
import 'package:fftv/screens/profile/profile.dart';
import 'package:fftv/screens/reels/reels.dart';
import 'package:fftv/screens/voting/voting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../resources/resources.dart';
import 'package:flutter/material.dart';

class CustomBottomTab extends StatefulWidget {
  const CustomBottomTab({super.key});

  @override
  _CustomBottomTabState createState() => _CustomBottomTabState();
}

class _CustomBottomTabState extends State<CustomBottomTab> {
  // Current selected index for the bottom navigation
  late String username; // Retrieve data passed from login
  late List<Widget> _screens;
  int _currentIndex = 0;


  @override
  void initState(){
    super.initState();
    final data = Get.arguments as String; // Get the passed data

    if (data is String) {
      username=data;
      // Handle username as String
      print('Username: $username');
    }else {
      username = 'Guest'; // Fallback to default
      print('Unexpected data type, defaulting username to "Guest".');
    }
    _screens = [
      Reels(username: username,),
      Home(),

      Voting(),
      Profile(),
    ];
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    void onItemTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: R.themeProvider.colors.screenBg,
      // appBar: AppBar(title: Text('Bottom Tab'),),
      body: _screens[_currentIndex],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
            backgroundColor: R.themeProvider.colors.screenBg,
            selectedItemColor: R.themeProvider.colors.selectedTab,
            unselectedItemColor: R.themeProvider.colors.unselectedTab,
            // selectedLabelStyle: R.textStyle.bottomTabLabelText().copyWith(
            //   fontWeight: FontWeight.w600,
            // ),
            // unselectedLabelStyle: R.textStyle.bottomTabLabelText(),
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: _currentIndex,
            onTap: onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: [

              BottomNavigationBarItem(
                  backgroundColor: R.themeProvider.colors.screenBg,
                  icon:Icon(Icons.smart_display,size: 30,) ,
                  label: ''

              ),

              BottomNavigationBarItem(
                backgroundColor: R.themeProvider.colors.screenBg,
                icon:Icon(Icons.home,size: 30,),
                label: ''
              ),



              BottomNavigationBarItem(
                  backgroundColor: R.themeProvider.colors.screenBg,
                  icon:Icon(Icons.volunteer_activism,size: 30,) ,
                  label: ''

              ),
              BottomNavigationBarItem(
                backgroundColor: R.themeProvider.colors.screenBg,
                icon:Icon(Icons.person,size: 30,) ,
                  label: ''

              ),


            ],
          )),
    );
  }
}
