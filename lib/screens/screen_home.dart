import 'package:facebook_complete_ui/sections/header_buttons.dart';
import 'package:facebook_complete_ui/sections/posts.dart';
import 'package:facebook_complete_ui/sections/storys.dart';

import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
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
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        HeaderButtons(),
        const Divider(
          thickness: 10,
          color: Colors.grey,
        ), // header button sections

        Storys(),
        const Divider(
          thickness: 10,
          color: Colors.grey,
        ),
        Posts(),
      ],
    );
  }
}
