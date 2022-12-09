import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  IconText(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: ColorPalette.primaryColor),
        const SizedBox(
          width: 10,
        ),
        RichText(
          maxLines: 1,
          text: TextSpan(
            text: text,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
