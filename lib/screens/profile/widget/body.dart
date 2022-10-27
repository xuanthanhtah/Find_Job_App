import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:app_find_job/screens/profile/widget/profile_item.dart';
import 'package:flutter/material.dart';

import 'info.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            name: "Lê Xuân Thành",
            email: "thanh26092000@gmail.com",
            image: AssetHelper.avatar,
          ),
          SizedBox(
            height: 20,
          ),
          ProfileItem(
            textItem: "Chỉnh sửa thông tin cá nhân",
            press: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => SearchPage(),
              //   ),
              // );
            },
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
            press: () {},
          ),
        ],
      ),
    );
  }
}
