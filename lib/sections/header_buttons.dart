import 'package:facebook_complete_ui/widget/row_header_buttons.dart';
import 'package:flutter/material.dart';

class HeaderButtons extends StatelessWidget {
  const HeaderButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RowHeaderButtons(buttonColor: Colors.red,buttonAction: (){
            print("reels button clicked");
          },
          buttonIcon: Icons.movie_creation_outlined,
          name: "Reel",
          ),
          RowHeaderButtons(buttonColor: Colors.purple,buttonAction: (){
            print("room button clicked");
          },
          buttonIcon: Icons.video_call,
          name: "Room",
          ),
          RowHeaderButtons(buttonColor: Colors.blue,buttonAction: (){
            print("group button clicked");
          },
          buttonIcon: Icons.movie_creation_outlined,
          name: "Group",
          ),
          RowHeaderButtons(buttonColor: Colors.red,buttonAction: (){
            print("Live button clicked");
          },
          buttonIcon: Icons.videocam_outlined,
          name: "Live",
          ),
        ],
      ),
    );
  }
}
