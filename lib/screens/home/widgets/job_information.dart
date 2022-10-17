import 'package:app_find_job/screens/home/widgets/job_detail.dart';
import 'package:app_find_job/screens/home/widgets/job_item.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/models/jobInformation.dart';

class JobInformation extends StatelessWidget {
  final jobList = jobInformation.generatejobInformation();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: 180,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetail(
                      jobList[index],
                    ),
                  );
                },
                child: JobItem(
                  jobList[index],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
