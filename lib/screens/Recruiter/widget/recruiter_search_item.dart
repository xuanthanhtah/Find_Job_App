import 'package:flutter/material.dart';

class RecruiterSearchItem extends StatefulWidget {
  const RecruiterSearchItem({Key? key}) : super(key: key);

  @override
  State<RecruiterSearchItem> createState() => _RecruiterSearchItemState();
}

class _RecruiterSearchItemState extends State<RecruiterSearchItem> {
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
                hintText: 'Nhập công ty cần tìm',
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
        ],
      ),
    );
  }
}
