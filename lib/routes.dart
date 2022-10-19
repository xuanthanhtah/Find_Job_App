import 'package:app_find_job/screens/home/home.dart';
import 'package:app_find_job/screens/intro/intro.dart';
import 'package:app_find_job/screens/splash/splash.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName: (context) => const SplashPage(),
  IntroPage.routeName: (context) => const IntroPage(),
  HomePage.routeName: (context) => const HomePage(),
};
