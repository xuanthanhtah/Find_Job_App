import 'package:app_find_job/core/constants/color_constants.dart';
import "package:flutter/material.dart";

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
    required this.textItem,
    required this.press,
  }) : super(key: key);
  final String textItem;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          border: Border.all(
            color: ColorPalette.primaryColor.withOpacity(0.5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SafeArea(
            child: Row(
              children: <Widget>[
                Text(
                  textItem,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 79, 72, 72),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: Color.fromARGB(255, 79, 72, 72),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
