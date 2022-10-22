import 'package:app_find_job/screens/savejob_applyjob/widget/applyjob_item.dart';
import 'package:app_find_job/screens/search/widget/job_search_detail.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/models/jobInformation.dart';

class ApplyJobList extends StatelessWidget {
  final jobList = jobInformation.generatejobInformation();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            bottom: 25,
          ),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobSearchDetail(
                      jobList[index],
                    ),
                  );
                },
                child: ApplyJobItem(
                  jobList[index],
                  showTime: false,
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(height: 20),
          itemCount: jobList.length),
    );
  }
}
