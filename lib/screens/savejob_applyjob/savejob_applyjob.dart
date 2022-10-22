import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:app_find_job/screens/savejob_applyjob/widget/applyjob_list.dart';
import 'package:app_find_job/screens/savejob_applyjob/widget/savejob_applyjob_tab.dart';
import 'package:app_find_job/screens/savejob_applyjob/widget/savejob_list.dart';
import 'package:flutter/material.dart';
import 'package:app_find_job/models/jobInformation.dart';

class SavejobApplyJobPage extends StatefulWidget {
  static const routeName = '/SavejobApplyJobPage';

  @override
  State<SavejobApplyJobPage> createState() => _SavejobApplyJobPageState();
}

class _SavejobApplyJobPageState extends State<SavejobApplyJobPage> {
  final jobList = jobInformation.generatejobInformation();
  final tabs = ['Đã ứng tuyển', 'Đã lưu'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
        leading: SizedBox(),
        centerTitle: true,
        title: Text(
          "Công việc",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(),
              SliverPersistentHeader(
                delegate: SaveJobApplyJobTab(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    tabs: tabs
                        .map(
                          (e) => Tab(
                            child: Text(e,
                                style: TextStyle(
                                  fontSize: 18,
                                )),
                          ),
                        )
                        .toList(),
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: Container(
            child: TabBarView(
              children: [
                //cong viec ung tuyen
                ApplyJobList(),
                //cong viec da luu
                SaveJobList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
