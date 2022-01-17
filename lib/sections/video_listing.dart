
import 'package:facebook_complete_ui/widget/like_comments_buttons.dart';
import 'package:facebook_complete_ui/widget/post_card_footer.dart';
import 'package:facebook_complete_ui/widget/post_cards_header.dart';
import 'package:facebook_complete_ui/widget/videos.dart';
import 'package:flutter/material.dart';

class VideoListing extends StatefulWidget {
  const VideoListing({Key? key}) : super(key: key);

  @override
  State<VideoListing> createState() => _VideoListingState();
}

class _VideoListingState extends State<VideoListing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostCardsHeaderSections(
          //re-using
          profilePhoto: "assets/avatat/mohanlal.jpg",
          postedProfileName: "mohanlal",
          time: "1 min",
          postType: Icons.public,
          needBlueTick: true,
        ),
        Videos(
          url: "MdeNhZt77cg",
        ),
        PostCardFooter(likes: "20k", comments: "2k Cmments", share: "1k Share"),
        LikeCommentButtons(),
        //second video
        PostCardsHeaderSections(
          //re-using
          profilePhoto: "assets/avatat/mammotty.jpg",
          postedProfileName: "Mammotty",
          time: "2 min",
          postType: Icons.public,
          needBlueTick: true,
        ),
        Videos(
          url: "Kkwd-a6NS3M",
        ),
        PostCardFooter(likes: "10k", comments: "2k Cmments", share: "1k Share"),
        LikeCommentButtons(),

        //third video post
        PostCardsHeaderSections(
          //re-using
          profilePhoto: "assets/avatat/prithviraj.jpg",
          postedProfileName: "prithviraj",
          time: "5 min",
          postType: Icons.public,
          needBlueTick: true,
        ),
        Videos(
          url: "qNHJrP3ihy8",
        ),
        PostCardFooter(likes: "10k", comments: "2k Cmments", share: "1k Share"),
        LikeCommentButtons(),

        //4th video post
        PostCardsHeaderSections(
          //re-using
          profilePhoto: "assets/avatat/ar rahman.jpg",
          postedProfileName: "AR Rahman",
          time: "5 min",
          postType: Icons.public,
          needBlueTick: true,
        ),
        Videos(
          url: "Fhgpf2ikOWY",
        ),
        PostCardFooter(likes: "10k", comments: "2k Cmments", share: "1k Share"),
        LikeCommentButtons(),
      ],
    );
  }
}
