import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 70, left: 25, right: 25), //MediaQuery.of(context).padding.top
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Chào bạn,',
                style: TextStyle(
                    color: ColorPalette.textColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Lê Xuân Thành',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
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
                child: Image.asset('assets/images/avatar.png', width: 40),
              )
            ],
          ),
        ],
      ),
    );
  }
}
