import 'package:facebook_complete_ui/sections/friends_suggestion_section.dart';

import 'package:facebook_complete_ui/widget/like_comments_buttons.dart';
import 'package:facebook_complete_ui/widget/post_card_footer.dart';
import 'package:facebook_complete_ui/widget/post_card_title_image.dart';
import 'package:facebook_complete_ui/widget/post_cards_header.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //first post
        PostCardsHeaderSections(
          postedProfileName: "Mohanlal",
          profilePhoto: "assets/avatat/mohanlal.jpg",
          time: "2h",
          postType: Icons.public,
          needBlueTick: true,
        ),
        PostCardTitleAndImageScetions(
          title: "Happy New Year 2022",
          posts: "assets/post/newyear_post1.jpg",
        ),
        PostCardFooter(
          likes: "50k",
          comments: "2k Comments",
          share: "1k Share",
        ),
        Divider(
          thickness: 1,
        ),
        LikeCommentButtons(),
        Divider(
          thickness: 8,
        ),

        //sceond post
        PostCardsHeaderSections(
          postedProfileName: "Elon Musk",
          profilePhoto: "assets/avatat/elon_musk.jpg",
          time: "2h",
          postType: Icons.public,
          needBlueTick: true,
        ),
        PostCardTitleAndImageScetions(
          title: "",
          posts: "assets/post/elon_musk_post.jpg",
        ),
        PostCardFooter(
          likes: "23k",
          comments: "1k Comments",
          share: "500 Share",
        ),
        const Divider(
          thickness: 1,
        ),
        const LikeCommentButtons(),
        const Divider(
          thickness: 8,
        ),
        // friends suggestions
        FriendsSuggestionSection(),

        const Divider(
          thickness: 8,
        ),

        //third post
        PostCardsHeaderSections(
          postedProfileName: "Mammotty",
          profilePhoto: "assets/avatat/mammotty.jpg",
          time: "4h",
          postType: Icons.public,
          needBlueTick: true,
        ),
        PostCardTitleAndImageScetions(
          title: "Happy Christmas",
          posts:"assets/post/mammotty_post.jpg",
        ),
        PostCardFooter(
          likes: "50k",
          comments: "2k Comments",
          share: "1k Share",
        ),
        const Divider(
          thickness: 1,
        ),
        const LikeCommentButtons(),
        const Divider(
          thickness: 8,
        ),

        //4th post
        PostCardsHeaderSections(
          postedProfileName: "MS Dhoni",
          profilePhoto: "assets/avatat/ms_dhoni.jpg",
          time: "4h",
          postType: Icons.public,
          needBlueTick: true,
        ),
        PostCardTitleAndImageScetions(
          title: "Happy New year!!!!",
          posts: "assets/post/newyear_post3.jpg",
        ),
        PostCardFooter(
          likes: "35k",
          comments: "9k Comments",
          share: "1k Share",
        ),
        const Divider(
          thickness: 1,
        ),
        const LikeCommentButtons(),
        const Divider(
          thickness: 8,
        ),
      ],
    );
  }
}
