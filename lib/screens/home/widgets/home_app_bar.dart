import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class HomeAppBar extends StatefulWidget {
  Map<String, dynamic>? userData;

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
  //gen contructor
  HomeAppBar({Key? key, required this.userData}) : super(key: key);
}

class _HomeAppBarState extends State<HomeAppBar> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    print(widget.userData);
    return widget.userData == null
        ? Container(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: userAppBar(
              name: user.email!,
              avatar: AssetHelper.avatar,
            ),
          )
        : Container(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: userAppBar(
              name: widget.userData!['name'],
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
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/ProfilePage');
              },
              child: ClipOval(
                child: Image.asset(avatar, width: 40),
              ),
            )
          ],
        ),
      ],
    );
  }
}
