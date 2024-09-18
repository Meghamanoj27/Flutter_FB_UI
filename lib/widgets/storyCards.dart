import 'package:facebook/widgets/avathar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  // const StoryCards({super.key});
  final String labelText;
  final String story;
  final String avathar;
  final bool createStoryStatus;
  final bool disabledBorder;

  StoryCards({
    required this.labelText,
    required this.story,
    required this.avathar,
    this.createStoryStatus = false,
    this.disabledBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 5,
            top: 5,
            child: createStoryStatus
                ? CircularButton(
                    buttonIcon: Icons.add,
                    buttonAction: () {
                      print("story add button clicked");
                    },
                    iconColor: Colors.blue.shade600,
                  )
                : Avathar(
                    displayImage: avathar,
                    displayStatus: false,
                    displayBoader:
                        disabledBorder, // avathar display boader : story card display boarder
                        width: 40,
                        height: 40,
                  ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Text(labelText != null ? labelText : 'N/A', // guarding
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16)),
          )
        ],
      ),
    );
  }
}
