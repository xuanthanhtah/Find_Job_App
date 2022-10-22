import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/models/jobInformation.dart';
import 'package:app_find_job/widgets/icon_text.dart';
import 'package:flutter/material.dart';

class ApplyJobItem extends StatelessWidget {
  final jobInformation jobinformation;
  final bool showTime;

  ApplyJobItem(this.jobinformation, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: ColorPalette.primaryColor.withOpacity(0.5),
            ),
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
                    IconText(
                        Icons.access_time_outlined, jobinformation.jobtype),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _text extends StatelessWidget {
  const _text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Không tìm thấy công việc đã ứng tuyển',
      style: TextStyle(
          color: Colors.white, height: 1.8, fontWeight: FontWeight.w400),
    );
  }
}
