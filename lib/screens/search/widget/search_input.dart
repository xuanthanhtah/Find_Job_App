import 'package:app_find_job/controllers/jobinformationcontroller.dart';
import 'package:app_find_job/models/jobinfor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchInput extends StatelessWidget {
  List<JobInformation> data = <JobInformation>[];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Nhập công việc cần tìm',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset('assets/icons/search.png'),
                  width: 20,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset('assets/icons/filter.png'),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget buildSuggestions(BuildContext context) {
  //   List<String> matchQuery = [];
  //   for (var items in data) {
  //     if (items.toLowerCase().contains(query.toLowerCase())) {
  //       matchQuery.add(items.jobTitle);
  //     }
  //   }
  // }
}
