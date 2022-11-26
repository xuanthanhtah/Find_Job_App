import 'package:app_find_job/core/helpers/asset_helper.dart';
import 'package:app_find_job/models/jobInformation.dart';
import 'package:app_find_job/models/jobinfor.dart';
import 'package:app_find_job/widgets/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class JobDetail extends StatelessWidget {
  final JobInformation jobinformations;
  JobDetail(this.jobinformations);
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
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black,
              ),
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
                          child: Image.asset(AssetHelper.logo),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          jobinformations.jobTitle,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          jobinformations.status == 1
                              ? Icons.bookmark
                              : Icons.bookmark_outline_rounded,
                          color: jobinformations.status == 1
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
                  jobinformations.jobTitle,
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
                  "Lương: " + jobinformations.maxSalary.toString() + " \$",
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
                    IconText(
                        Icons.timelapse_outlined,
                        'Hạn nộp hồ sơ: ' +
                            jobinformations.jobInformationTimeEnd.toString()),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // Địa chỉ làm việc + hình thức
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined,
                        jobinformations.workingLocation),
                    IconText(
                        Icons.access_time_outlined, jobinformations.jobType),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Mô tả
                // const Text(
                //   'Mô tả công việc',
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                Html(
                  data: jobinformations.description,
                  tagsList: Html.tags..addAll(["bird", "flutter"]),
                  style: {
                    "table": Style(
                      backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                    ),
                    "tr": Style(
                      border: Border(bottom: BorderSide(color: Colors.grey)),
                    ),
                    "th": Style(
                      padding: EdgeInsets.all(6),
                      backgroundColor: Colors.grey,
                    ),
                    "td": Style(
                      padding: EdgeInsets.all(6),
                      alignment: Alignment.topLeft,
                    ),
                    'h5':
                        Style(maxLines: 2, textOverflow: TextOverflow.ellipsis),
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                // Yêu cầu
                // const Text(
                //   'Yêu cầu ứng viên',
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   jobinformations.req,
                //   style: const TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.normal,
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // // Quyền lợi
                // const Text(
                //   'Quyền lợi',
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 20,
                //   ),
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   jobinformations.benefits,
                //   style: const TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.normal,
                //   ),
                // ),
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
