import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xFF43B1B7);
  static const Color secondColor = Color.fromARGB(255, 128, 215, 219);
  static const Color textColor = Color.fromARGB(255, 0, 0, 0);
  static const Color greyColor = Color(0xFF9E9E9E);
  static const Color subTitleColor = Color(0xFF838383);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.secondColor,
      ColorPalette.primaryColor,
    ],
  );
}
