import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avathar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  // const PostCard({super.key});

  final String avathar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String sharerCount;
  final String commentCount;

  PostCard({
    required this.avathar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.sharerCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
              buttonOne: headerButton(
                  buttonText: 'Like',
                  butttonIcon: Icons.thumb_up_outlined,
                  buttonAction: () {
                    print("Like this post!!");
                  },
                  buttonColor: Colors.grey.shade500),
              buttonTwo: headerButton(
                  buttonText: 'Comment',
                  butttonIcon: Icons.message_outlined,
                  buttonAction: () {
                    print("Comment on this post!!");
                  },
                  buttonColor: Colors.grey.shade500),
              buttonThree: headerButton(
                  buttonText: 'Share',
                  butttonIcon: Icons.share_outlined,
                  buttonAction: () {
                    print("Share This post");
                  },
                  buttonColor: Colors.grey.shade500))
        ],
      ),
    );
  }

  Widget postCardHeader() {
    // we can also refactor this using a variable
    return ListTile(
      leading: Avathar(
        displayImage: avathar,
        displayStatus: false,
        // displayBoader: false,
      ),
      title: Row(
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.normal),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: <Widget>[
          Text(publishedAt ?? ""),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.more_horiz),
        onPressed: () {
          print("more button clicked");
        },
      ),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ''
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              postTitle ?? '',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(

      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(
        postImage,
        fit: BoxFit.cover,
        height: 600,
        width: 415,
      ),
    );
  }


  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                displayCount(count: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayCount(count: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayCount(count: 'Comments'),
                SizedBox(
                  width: 10,
                ),
                displayCount(count: sharerCount),
                SizedBox(
                  width: 5,
                ),
                displayCount(count: 'Shares'),
                SizedBox(
                  width: 10,
                ),
                // Container(
                //   width: 25,
                //   height: 25,
                //   child: Avathar(displayImage: avathar, displayStatus: false),
                // )
                Avathar(
                  displayImage: avathar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),

                IconButton(
                    onPressed: () {
                      print('drodown pressed');
                    },
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey.shade700,
                    )
                    )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayCount({required String count}) {
    return Text(count ?? '',
        style: TextStyle(color: Colors.grey.shade700, fontSize: 15));
  }
}
