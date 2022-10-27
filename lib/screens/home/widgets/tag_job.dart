import 'package:app_find_job/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TagJob extends StatefulWidget {
  const TagJob({Key? key}) : super(key: key);

  @override
  State<TagJob> createState() => _TagJobState();
}

class _TagJobState extends State<TagJob> {
  final tagJob = <String>[
    'IT',
    'Marketing',
    "làm ruộng",
    "làm ruộng",
    "làm ruộng",
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(
                    () {
                      selected = index;
                    },
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: selected == index
                        ? ColorPalette.primaryColor.withOpacity(0.2)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: selected == index
                          ? ColorPalette.primaryColor
                          : ColorPalette.primaryColor.withOpacity(0.2),
                    ),
                  ),
                  child: Text(
                    tagJob[index],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 15),
          itemCount: tagJob.length),
    );
  }
}
