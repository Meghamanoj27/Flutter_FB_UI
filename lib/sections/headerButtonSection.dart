import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  // const HeaderButtonSection({super.key});
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  @override
  Widget build(BuildContext context) {
    Widget divVert = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // MaterialButton(
          //   onPressed: () {
          //     print('live button clicked');
          //   },
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.video_call,
          //         size: 30,
          //         color: Colors.red,
          //       ),
          //       Text(
          //         ' Live',
          //         style: TextStyle(fontSize: 16, color: Colors.black),
          //       )
          //     ],
          //   ),
          // ),

          // headerButton(
          //     buttonText: 'Live',
          //     butttonIcon: Icons.video_call,
          //     buttonAction: () {
          //       print("live button clicked");
          //     },
          //     buttonColor: Colors.red),

          //divVert,

          // headerButton(
          //     buttonText: 'Photot',
          //     butttonIcon: Icons.photo_library,
          //     buttonAction: () {
          //       print('photo button clicked');
          //     },
          //     buttonColor: Colors.green),

          //divVert,

          // headerButton(
          //     buttonText: 'Room',
          //     butttonIcon: Icons.video_call_outlined,
          //     buttonAction: () {
          //       print("room button clicked");
          //     },
          //     buttonColor: Colors.purple)

          buttonOne,
          divVert,
          buttonTwo,
          divVert,
          buttonThree,
        ],
      ),
    );
  }
}
