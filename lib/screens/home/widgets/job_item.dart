import 'package:app_find_job/models/jobInformation.dart';
import 'package:app_find_job/widgets/icon_text.dart';
import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  final jobInformation jobinformation;
  final bool showTime;

  JobItem(this.jobinformation, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(jobinformation.logoURL),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    jobinformation.companyName,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                jobinformation.status
                    ? Icons.bookmark
                    : Icons.bookmark_outline_outlined,
                color: jobinformation.status
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            jobinformation.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(Icons.location_on_outlined, jobinformation.location),
              if (!showTime)
                IconText(Icons.access_time_outlined, jobinformation.jobtype),
            ],
          )
        ],
      ),
    );
  }
}
