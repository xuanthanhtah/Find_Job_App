import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/screens/Recruiter/widget/recruiter_search_item.dart';
import 'package:app_find_job/screens/Recruiter/widget/recuiter_list.dart';
import 'package:flutter/material.dart';

class RecruiterPage extends StatefulWidget {
  const RecruiterPage({Key? key}) : super(key: key);

  static const routeName = '/RecruiterPage';
  @override
  State<RecruiterPage> createState() => _RecruiterPageState();
}

class _RecruiterPageState extends State<RecruiterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          "Công ty",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        elevation: 2,
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecruiterSearchItem(),
              Expanded(child: RecruiterList()),
            ],
          )
        ],
      ),
    );
  }
}
