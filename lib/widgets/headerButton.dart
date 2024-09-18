import 'package:flutter/material.dart';

Widget headerButton(
      {required String buttonText,
      required IconData butttonIcon,
      required void Function() buttonAction,
      required Color buttonColor}) {
    return MaterialButton(
      onPressed: buttonAction,
      child: Row(
        children: [
          Icon(
            butttonIcon,
            size: 30,
            color: buttonColor,
          ),
          Text(
            buttonText,
            style: TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
    );
  }
