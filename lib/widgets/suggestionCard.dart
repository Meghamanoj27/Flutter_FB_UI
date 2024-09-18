import 'package:facebook/widgets/assets.dart';
import 'package:flutter/material.dart';


class SuggestionCard extends StatelessWidget {
  // const SuggestionCard({super.key});
  final String avathar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard(
      {required this.avathar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      // color: Colors.red,
      child: Stack(
        children: [suggectionImage(), suggectionDetails()],
      ),
    );
  }

  Widget suggectionDetails() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.grey.shade300, width: 1),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          height: 140,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(name?? ""),
                subtitle: Text(mutualFriends ?? ""),      //null guard
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    addFrndButton(
                        buttonAction: addFriend,
                        buttonIcon: Icons.person_add,
                        buttonColor: Colors.blue.shade700,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: 'Add Friend'),
                    removeButton(
                        buttonAction: removeFriend,
                        buttonText: 'Remove',
                        buttonColor: Colors.grey.shade400,
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget addFrndButton(
      {required void Function() buttonAction,
      required IconData buttonIcon,
      required Color buttonColor,
      required Color buttonTextColor,
      required Color buttonIconColor,
      required String buttonText}) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        onPressed: buttonAction,
        color: buttonColor,
        textColor: buttonTextColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(buttonIcon, color: buttonIconColor),
            SizedBox(width: 8), // Adjust spacing between icon and text
            Text(buttonText),
          ],
        ));
  }

  Widget removeButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    return MaterialButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      // textColor: buttonTextColor,
      child: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
    );
  }

  Widget suggectionImage() {
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: ClipRRect(
          borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: avathar!=null? Image.asset(
            avathar,
            fit: BoxFit.cover,
            height: 250,
          ):SizedBox(),
        ));
  }
}
