import 'package:facebook_complete_ui/sections/header_buttons.dart';

import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "Posts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        ListTile(
          leading:const CircleAvatar(
            backgroundImage: AssetImage("assets/avatat/sourav.jpg"),
          ),
          title: TextFormField(
            decoration: InputDecoration(
              hintText: "Write somthing here....",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.photo_library_outlined,
              color: Colors.green,
            ),
            onPressed: () {
              print("image icon button clicked");
            },
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            postbuttons(
              icon: Icons.video_call_rounded,
              buttonName: "Live",
              buttonColor: Colors.red,
            ),
            VerticalDivider(
              thickness: 10,
              color: Colors.green,
            ),
            postbuttons(
              icon: Icons.photo_library_outlined,
              buttonName: "Photo",
              buttonColor: Colors.green,
            ),
            VerticalDivider(
              thickness: 1,
              color: Colors.grey,
            ),
            postbuttons(
              icon: Icons.event,
              buttonName: "Life Events",
              buttonColor: Colors.purple,
            ),
          ],
        ),
      ],
    );
  }
}

Widget postbuttons({required icon, required buttonName, required buttonColor}) {
  return ElevatedButton.icon(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(Colors.white),
    ),
    onPressed: () {},
    icon: Icon(
      icon,
      color: buttonColor,
    ),
    label: Text(
      buttonName,
      style: TextStyle(color: Colors.grey.shade600),
    ),
  );
}
