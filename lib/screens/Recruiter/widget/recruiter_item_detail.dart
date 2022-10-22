import 'package:app_find_job/models/Recruiter.dart';
import 'package:app_find_job/widgets/icon_text.dart';
import 'package:flutter/material.dart';

class RecruiterItemDetail extends StatelessWidget {
  final recruiter recruiters;

  RecruiterItemDetail(this.recruiters);
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
                // Logo + Tên công ty
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
                          child: Image.asset(recruiters.logoURL),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          recruiters.CompanyName,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // Địa chỉ làm việc + hình thức
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined, recruiters.address),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Mô tả
                const Text(
                  'Mô tả công Ty',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  recruiters.RecruiterIntroduction,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Hình ảnh công ty",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                ...recruiters.RecruiterGalleries.map(
                  (e) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(),
                          child: Image.asset(
                            e,
                            width: 180,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
