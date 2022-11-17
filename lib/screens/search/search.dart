import 'package:app_find_job/screens/search/widget/Search_list.dart';
import 'package:app_find_job/screens/search/widget/search_input.dart';
import 'package:flutter/material.dart';
import 'widget/search_app_bar.dart';
import 'widget/search_option.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchOption(),
              SizedBox(
                height: 20,
              ),
              // SearchInput(),
              Expanded(child: SearchList()),
            ],
          ),
        ],
      ),
    );
  }
}
