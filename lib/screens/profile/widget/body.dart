import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/core/constants/color_constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 240,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: CustomShape(),
                child: Container(
                  height: 150,
                  color: ColorPalette.primaryColor,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 8),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetHelper.avatar),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Lê Xuân Thành',
                            style: TextStyle(
                              fontSize: 22,
                              color: ColorPalette.textColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'thanh26092000@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 79, 72, 72),
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height / 2, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
