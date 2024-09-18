import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggectionSection.dart';
import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 8,
      color: Colors.grey[300],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 3,
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('search button');
              },
            ),
            CircularButton(
              buttonIcon: Icons.message_rounded,
              buttonAction: () {
                print("message button");
              },
              // iconColor: Colors.black,
            )
          ],
          title: const Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: <Widget>[
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
                buttonOne: headerButton(
                  buttonAction: () {
                    print("Go Live!!");
                  },
                  buttonText: 'Live',
                  butttonIcon: Icons.video_call,
                  buttonColor: Colors.red,
                ),
                buttonTwo: headerButton(     // in this case there is pass a function returned widget
                  buttonAction: () {
                    print('Take Photo');
                  },
                  buttonText: 'Photo',
                  butttonIcon: Icons.photo_library,
                  buttonColor: Colors.green.shade600,
                ),
                buttonThree: headerButton(
                  buttonAction: () {
                    print("Create Room");
                  },
                  buttonText: 'Room',
                  butttonIcon: Icons.video_call,
                  buttonColor: Colors.purple,
                )),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avathar: lal,
              name: 'MohanLal',
              publishedAt: '5h',
              postTitle: 'New Film!!!',
              postImage: post1,
              showBlueTick: true,
              likeCount: '10K',
              sharerCount: '1K',
              commentCount: '1K',
            ),
            thickDivider,
             PostCard(
              avathar: unni,
              name: 'Unni Mukundhan',
              publishedAt: '1 day ago',
              postTitle: 'Enjoy the new Movie..',
              postImage: post2,
              showBlueTick: true,
              likeCount: '8K',
              sharerCount: '2K',
              commentCount: '1.5K',
            ),
            thickDivider,
            PostCard(
              avathar: tovino,
              name: 'Tovino',
              publishedAt: '2 day ago',
              postTitle: '',
              postImage: post3,
              showBlueTick: true,
              likeCount: '18K',
              sharerCount: '2K',
              commentCount: '2K',
            ),
            thickDivider,
            SuggectionSection(),
            thickDivider,
             PostCard(
              avathar: dq,
              name: 'Dulquer Salman',
              publishedAt: 'Dec 27',
              postTitle: title3,
              postImage: post4,
              showBlueTick: true,
              likeCount: '21K',
              sharerCount: '1.8K',
              commentCount: '2.9K',
            ),
            thickDivider,
            thickDivider,
            PostCard(
              avathar: lal,
              name: 'MohanLal',
              publishedAt: '5h',
              postTitle: 'New Film!!!',
              postImage: post1,
              showBlueTick: true,
              likeCount: '10K',
              sharerCount: '1K',
              commentCount: '1K',
            ),
            thickDivider,
             PostCard(
              avathar: unni,
              name: 'Unni Mukundhan',
              publishedAt: '1 day ago',
              postTitle: 'Enjoy the new Movie..',
              postImage: post2,
              showBlueTick: true,
              likeCount: '8K',
              sharerCount: '2K',
              commentCount: '1.5K',
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
