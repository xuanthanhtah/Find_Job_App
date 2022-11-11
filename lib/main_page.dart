import 'package:app_find_job/main_app.dart';
import 'package:app_find_job/screens/Register/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  static const routeName = '/MainPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MainApp();
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
