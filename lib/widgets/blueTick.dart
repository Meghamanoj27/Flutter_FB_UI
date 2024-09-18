import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  const BlueTick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 10,right: 2),       //swantham code
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 10,
      ),
    );
  }
}
