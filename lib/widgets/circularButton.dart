import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  //const AppBarButton({super.key});
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  CircularButton(
    {required this.buttonIcon,
    required this.buttonAction,
    this.iconColor=Colors.black,}    //set icon color default value
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 23,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
