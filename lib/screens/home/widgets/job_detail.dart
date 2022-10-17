import 'package:app_find_job/models/jobInformation.dart';
import 'package:app_find_job/widgets/icon_text.dart';
import 'package:flutter/material.dart';

class JobDetail extends StatelessWidget {
  final jobInformation jobinformation;

  JobDetail(this.jobinformation);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey.withOpacity(0.3),
              height: 5,
              width: 60,
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo + Tên công ty + lưu công việc
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
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          jobinformation.status
                              ? Icons.bookmark
                              : Icons.bookmark_outline_rounded,
                          color: jobinformation.status
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Tên công việc
                Text(
                  jobinformation.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Lương
                Text(
                  "Lương: " + jobinformation.salary.toString() + " \$",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Hạn nộp hồ sơ
                Row(
                  children: [
                    IconText(Icons.timelapse_outlined,
                        'Hạn nộp hồ sơ: ' + jobinformation.jobInformationTime),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // Địa chỉ làm việc + hình thức
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        Icons.location_on_outlined, jobinformation.location),
                    IconText(
                        Icons.access_time_outlined, jobinformation.jobtype),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Mô tả
                const Text(
                  'Mô tả công việc',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  jobinformation.description,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Yêu cầu
                const Text(
                  'Yêu cầu ứng viên',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  jobinformation.req,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Quyền lợi
                const Text(
                  'Quyền lợi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  jobinformation.benefits,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    onPressed: () => {},
                    child: Text('Ứng tuyển ngay'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
