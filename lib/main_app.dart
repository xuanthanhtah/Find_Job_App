import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/screens/Recruiter/Recruiter.dart';
import 'package:app_find_job/screens/home/home.dart';
import 'package:app_find_job/screens/profile/profile.dart';
import 'package:app_find_job/screens/savejob_applyjob/savejob_applyjob.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainApp extends StatefulWidget {
  static const routeName = "/mainApp";
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          SavejobApplyJobPage(),
          RecruiterPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: ColorPalette.primaryColor,
        unselectedItemColor: ColorPalette.primaryColor,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.house, size: 20),
            title: Text('Trang chủ'),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.briefcase, size: 20),
            title: Text('Công việc'),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.building, size: 20),
            title: Text('Công ty'),
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.user, size: 20),
            title: Text('Cá nhân'),
          ),
        ],
      ),
    );
  }
}
