import 'package:app_find_job/core/helpers/local_storage_helper.dart';
import 'package:app_find_job/routes.dart';
import 'package:app_find_job/screens/login/login.dart';
import 'package:app_find_job/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
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
      routes: routes,
      home: LoginPage(),
    );
  }
}
