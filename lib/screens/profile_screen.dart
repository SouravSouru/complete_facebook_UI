import 'package:facebook_complete_ui/sections/profile_friends_sections.dart';
import 'package:facebook_complete_ui/sections/profile_info.dart';
import 'package:facebook_complete_ui/sections/profile_photo_sections.dart';
import 'package:facebook_complete_ui/sections/profile_post.dart';

import 'package:facebook_complete_ui/widget/post_card_title_image.dart';
import 'package:facebook_complete_ui/widget/post_cards_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ProfilePhotoSection(),
        const Divider(
          thickness: 2,
        ),
        const profileInfo(),
        const Divider(
          thickness: 2,
        ),
        const ProfileFriendsList(),
        const Divider(
          thickness: 8,
        ),
        const ProfilePosts(),
        const Divider(
          thickness: 8,
        ),
        PostCardsHeaderSections(
            profilePhoto: "assets/avatat/sourav.jpg",
            postedProfileName: "Sourav",
            time: "1 y",
            postType: Icons.public,
            needBlueTick: false),
            PostCardTitleAndImageScetions(
          title: "",
          posts: "assets/avatat/sourav.jpg",
        ),
        const Divider(
          thickness: 10,
        ),
      ],
    );
  }
}
