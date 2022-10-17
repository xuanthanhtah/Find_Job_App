import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        accentColor: const Color(0xFFFED408),
      ),
      home: const HomePage(),
    );
  }
}
