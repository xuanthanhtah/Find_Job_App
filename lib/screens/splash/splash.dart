import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:app_find_job/core/helpers/image_helper.dart';
import 'package:app_find_job/core/helpers/local_storage_helper.dart';
import 'package:app_find_job/main_app.dart';
import 'package:app_find_job/main_page.dart';
import 'package:app_find_job/screens/intro/intro.dart';
import 'package:app_find_job/screens/login/login.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static String routeName = "/SplashPage";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectIntroPage();
  }

  void redirectIntroPage() async {
    final ignoreIntroScreen =
        LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(milliseconds: 2000));

    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      Navigator.of(context).pushNamed(MainPage.routeName);
    } else {
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ImageHelper.loadFromAsset(AssetHelper.splashbg5,
              fit: BoxFit.fitHeight),
        ),
      ],
    );
  }
}
