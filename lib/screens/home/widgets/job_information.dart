import 'package:app_find_job/controllers/jobinformationcontroller.dart';
import 'package:app_find_job/screens/home/widgets/job_detail.dart';
import 'package:app_find_job/screens/home/widgets/job_item.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/models/jobInformation.dart';
import 'package:get/get.dart';

class JobInformation extends StatelessWidget {
  final jobList = jobInformation.generatejobInformation();
  final JobInformationController jobInformationcontroller =
      Get.put(JobInformationController());
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
                  jobInformationcontroller.jobInformationList[index],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}


 // final String jobTitle, jobType, description, workingLocation, jobLevel;
  // final int minSalary,
  //     maxSalary,
  //     viewCount,
  //     status,
  //     recruiterId,
  //     jobInformationId,
  //     jobId;
  // final DateTime jobInformationTimeStart, jobInformationTimeEnd;

  // JobInformation({
  //   required this.jobInformationId,
  //   required this.jobTitle,
  //   required this.jobLevel,
  //   required this.jobType,
  //   required this.description,
  //   required this.workingLocation,
  //   required this.minSalary,
  //   required this.maxSalary,
  //   required this.viewCount,
  //   required this.status,
  //   required this.recruiterId,
  //   required this.jobId,
  //   required this.jobInformationTimeStart,
  //   required this.jobInformationTimeEnd,
  // });

  // Future getJobInformationData() async {
  //   var response = await http
  //       .get(Uri.http('http://172.29.192.1:2001', 'api/JobInformation/GetAll'));

  //   var jsonData = jsonDecode(response.body);

  //   List<JobInformation> jobInformations = [];

  //   for (var items in jsonData) {
  //     JobInformation jobInformation = JobInformation(
  //       jobInformationId: items['jobInformationId'],
  //       jobTitle: items['jobTitle'],
  //       jobLevel: items['jobLevel'],
  //       jobType: items['jobType'],
  //       description: items['description'],
  //       workingLocation: items['workingLocation'],
  //       minSalary: items['minSalary'],
  //       maxSalary: items['maxSalary'],
  //       viewCount: items['viewCount'],
  //       status: items['status'],
  //       recruiterId: items['recruiterId'],
  //       jobId: items['jobId'],
  //       jobInformationTimeStart: items['jobInformationTimeStart'],
  //       jobInformationTimeEnd: items['jobInformationTimeEnd'],
  //     );
  //     jobInformations.add(jobInformation);
  //   }
  //   print(jobInformations.length);
  //   return jobInformations;
  // }