import 'package:flutter/material.dart';

class Avathar extends StatelessWidget {
  // const Avathar({super.key});

  final String displayImage;
  final bool displayStatus;
  final bool displayBoader;
  final double height;
  final double width;

  Avathar({
    required this.displayImage,
    required this.displayStatus,
    this.  displayBoader = false,
    this.width=50,
    this.height=50,
  });

  @override
  Widget build(BuildContext context) {
    // Widget statusIndicator;

    // if (displayStatus == true) {
    //   statusIndicator= Positioned(
    //     bottom: 0,
    //     right: 1.0, //we want the status indicator at botton right position
    //     child: Container(
    //       //status indicator
    //       width: 18,
    //       height: 18,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(color: Colors.white, width: 2),
    //       ),
    //     ),
    //   );
    // } else {
    //    statusIndicator=SizedBox();
    // }

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBoader
                ? Border.all(color: Colors.blueAccent, width: 3)
                : Border(),
          ),
          height: width,
          width: height,
          padding: EdgeInsets.only(left: 1, right: 1),
          margin: EdgeInsets.only(left: 1, right: 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(displayImage),
          ),
        ),
        // statusIndicator,
        // displayStatus == true  OR
        displayStatus
            ? Positioned(
                bottom: 0,
                right:
                    1.0, //we want the status indicator at botton right position
                child: Container(
                  //status indicator
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
