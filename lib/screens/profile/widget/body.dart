import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:app_find_job/screens/profile/widget/profile_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'info.dart';

class Body extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            name: "Email của bạn",
            email: user.email!,
            image: AssetHelper.avatar,
          ),
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            textItem: "Chỉnh sửa thông tin cá nhân",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            textItem: "Hướng dẫn sử dụng",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            textItem: "Về chúng tôi",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            textItem: "Đăng xuất",
            press: () {
              FirebaseAuth.instance.signOut();
            },
          ),
        ],
      ),
    );
  }
}
