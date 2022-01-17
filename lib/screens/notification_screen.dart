import 'package:facebook_complete_ui/widget/appbar_button.dart';
import 'package:facebook_complete_ui/widget/camera_icon_button.dart';
import 'package:flutter/material.dart';

class NotificationScrren extends StatelessWidget {
  const NotificationScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: 70,
            child: ListTile(
              title: Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              trailing: AppBarButtons(
                buttonAction: () {
                  print("notification search button clicked");
                },
                buttonIcon: Icons.search,
                buttonBgColor: Colors.grey.shade300,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "New",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Column(
              children: [
                notificatons(
                    profilePhoto: "assets/avatat/mohanlal.jpg",
                    text: "Mohanlal's post new Teaser",
                    buttonBGcolor: Colors.blue,
                    buttonIconColor: Colors.white,
                    time: "2 mint",
                    icon: Icons.ondemand_video_rounded),
                const Divider(
                  thickness: 1,
                ),
                notificatons(
                    profilePhoto: "assets/avatat/mammotty.jpg",
                    text: "Mammotty's post new Teaser",
                    buttonBGcolor: Colors.blue,
                    buttonIconColor: Colors.white,
                    time: "5 mint",
                    icon: Icons.ondemand_video_rounded),
                const Divider(
                  thickness: 1,
                ),
                notificatons(
                    profilePhoto: "assets/avatat/prithviraj.jpg",
                    text: "Prithviraj's birthday",
                    buttonBGcolor: Colors.pink,
                    buttonIconColor: Colors.white,
                    time: "5 mint",
                    icon: Icons.cake),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget notificatons({
  required profilePhoto,
  required icon,
  required time,
  required text,
  required buttonBGcolor,
  required buttonIconColor,
}) {
  return ListTile(
    leading: CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage(profilePhoto),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: buttonBGcolor,
              ),
              child: Icon(
                icon,
                color: buttonIconColor,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    ),
    title: Row(
      children: [
        Text(text),
        //Text("details of the post")
      ],
    ),
    subtitle: Text(time),
    trailing: Icon(Icons.more_horiz),
  );
}
