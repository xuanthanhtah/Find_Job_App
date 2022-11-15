import 'package:app_find_job/screens/home/widgets/job_information.dart';
import 'package:app_find_job/screens/home/widgets/search_job.dart';
import 'package:app_find_job/screens/home/widgets/tag_job.dart';
import 'package:flutter/material.dart';
import './widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const routeName = '/HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SearchJob(),
                const TagJob(),
                JobInformation(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
