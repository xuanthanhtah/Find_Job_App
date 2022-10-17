import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {
  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final optionMap = <String, bool>{
    'Lập trình viên': true,
    'Marketing': false,
    'Kế toán': false,
    'Tư vấn': false,
    'Bất động sản': false,
    'Thiết kế đồ họa': false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 30,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 25),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(
                    () {
                      var res = optionMap[keys[index]] ?? false;
                      optionMap[keys[index]] = !res;
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                      color: optionMap[keys[index]] != null &&
                              optionMap[keys[index]] == true
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(0.3),
                      )),
                  child: Row(
                    children: [
                      Text(
                        keys[index],
                        style: TextStyle(
                          fontSize: 14,
                          color: optionMap[keys[index]] != null &&
                                  optionMap[keys[index]] == true
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      if (optionMap[keys[index]] != null &&
                          optionMap[keys[index]] == true)
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.close,
                              size: 15,
                              color: Colors.white,
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(width: 10),
          itemCount: optionMap.length),
    );
  }
}
