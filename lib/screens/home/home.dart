import 'package:app_find_job/screens/home/widgets/job_information.dart';
import 'package:app_find_job/screens/home/widgets/search_job.dart';
import 'package:app_find_job/screens/home/widgets/tag_job.dart';
import 'package:flutter/material.dart';
import './widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Job",
              icon: Icon(
                Icons.content_paste_search,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Company",
              icon: Icon(
                Icons.cases_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: "Person",
              icon: Icon(
                Icons.person_outline,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
