import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoomSection extends StatelessWidget {
  // const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    Widget createRoomButton() {
      return Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: OutlinedButton.icon(
          onPressed: () {
            print("Outline button Clicked");
          },
          icon: Icon(
            Icons.video_call,
            size: 30,
            color: Colors.purple,
          ),
          label: Text(
            'Create \nRoom',
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.blue.shade100, width: 2),
            // Set the border color here.
          ),
        ),
      );
    }

    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          // OutlinedButton(
          //   onPressed: () {
          //     print("create room button clicked");
          //   },
          //   child: Row(children: [
          //     Icon(
          //     Icons.video_call,
          //     color: Colors.purple,
          //     size: 30,
          //   ),
          //   Text(" Create \n  Room",style: TextStyle(color: Colors.blue,fontSize: 18),)
          //   ],)
          // ),
          createRoomButton(),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
          Avathar(
            displayImage: mam,
            displayStatus: true,
          ),
          Avathar(
            displayImage: prithvi,
            displayStatus: true,
          ),
          Avathar(
            displayImage: tovino,
            displayStatus: true,
          ),
          Avathar(
            displayImage: unni,
            displayStatus: true,
          ),
          Avathar(
            displayImage: dq,
            displayStatus: true,
          ),
          Avathar(
            displayImage: lal,
            displayStatus: true,
          ),
        ],
      ),
    );
  }
}
