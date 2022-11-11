import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/main_page.dart';
import 'package:app_find_job/screens/profile/widget/body.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const routeName = '/ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.login_outlined),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
          },
        ),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Thông tin cá nhân",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}
