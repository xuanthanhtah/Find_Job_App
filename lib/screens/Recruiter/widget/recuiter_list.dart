import 'package:app_find_job/models/Recruiter.dart';
import 'package:app_find_job/screens/Recruiter/widget/recruiter_item_detail.dart';
import 'package:app_find_job/screens/Recruiter/widget/recuiter_item.dart';
import 'package:flutter/material.dart';

class RecruiterList extends StatelessWidget {
  final recruiterList = recruiter.generateRecuiter();
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
                    builder: (context) => RecruiterItemDetail(
                      recruiterList[index],
                    ),
                  );
                },
                child: RecruiterItem(
                  recruiterList[index],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(height: 20),
          itemCount: recruiterList.length),
    );
  }
}
