import 'package:app_find_job/controllers/jobinformationcontroller.dart';
import 'package:app_find_job/screens/home/widgets/job_item.dart';
import 'package:app_find_job/screens/search/widget/job_search_detail.dart';
import 'package:app_find_job/screens/search/widget/search_option.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchInput extends SearchDelegate {
  final JobInformationController jobInformationcontroller =
      Get.put(JobInformationController());
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: Obx(
        () => ListView.separated(
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
                  jobInformationcontroller.jobInformationList[index],
                ),
              );
            },
            child: JobItem(
              jobInformationcontroller.jobInformationList[index],
              showTime: false,
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(height: 20),
          itemCount: jobInformationcontroller.jobInformationList.length,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text('Tìm kiếm'));
  }
}
