import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggectionSection extends StatelessWidget {
  // const SuggectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey.shade600,
              ),
              onPressed: () {
                print("more details");
              },
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SuggestionCard(
                    avathar: lal,
                    name: 'MohanLal',
                    mutualFriends: '4 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: mam,
                    name: 'Mammotty',
                    mutualFriends: '10 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: tovino,
                    name: 'Tovino',
                    mutualFriends: '14 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: unni,
                    name: 'Unni Mukundhan',
                    mutualFriends: '2 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                    SuggestionCard(
                    avathar: lal,
                    name: 'MohanLal',
                    mutualFriends: '4 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: mam,
                    name: 'Mammotty',
                    mutualFriends: '10 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: tovino,
                    name: 'Tovino',
                    mutualFriends: '14 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
                SuggestionCard(
                    avathar: unni,
                    name: 'Unni Mukundhan',
                    mutualFriends: '2 Mutual Friends',
                    addFriend: () {
                      print("add frnd");
                    },
                    removeFriend: () {
                      print("remove frnd");
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class SuggectionSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 400, // Set a fixed height for the container
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
//         children: <Widget>[
//           ListTile(
//             title: Text("People You May Know"),
//             trailing: IconButton(
//               icon: Icon(
//                 Icons.more_horiz,
//                 color: Colors.grey.shade600,
//               ),
//               onPressed: () {
//                 print("more details");
//               },
//             ),
//           ),
//           Expanded( // Use Expanded to make the ListView fill the remaining space
//             child: Container(
//               height: 340,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: <Widget>[
//                   // SuggestionCard(),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
