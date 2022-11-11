import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 25, left: 25, right: 25), //MediaQuery.of(context).padding.top
      child: userAppBar(
        name: user.email!,
        avatar: AssetHelper.avatar,
      ),
    );
  }
}

class userAppBar extends StatelessWidget {
  userAppBar({
    Key? key,
    required this.name,
    required this.avatar,
  }) : super(key: key);
  final String name, avatar;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chào bạn,',
              style: TextStyle(
                  color: ColorPalette.textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, right: 10),
              transform: Matrix4.rotationZ(100),
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                    size: 32,
                    color: ColorPalette.greyColor,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            ClipOval(
              child: Image.asset(avatar, width: 40),
            )
          ],
        ),
      ],
    );
  }
}
