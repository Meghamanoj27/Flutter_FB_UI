import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  // const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // leading: Image.asset(dq),

      // leading: ClipRRect(
      //   borderRadius: BorderRadius.circular(100),
      //   child: Image.asset(dq),
      // ),
      leading: Avathar(
        displayImage: dq,
        displayStatus: false,
        displayBoader: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind ?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
