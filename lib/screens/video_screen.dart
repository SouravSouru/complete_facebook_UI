import 'package:facebook_complete_ui/sections/video_listing.dart';
import 'package:facebook_complete_ui/sections/video_screen_header_section.dart';
import 'package:flutter/material.dart';

class VideoScreenMain extends StatelessWidget {
  const VideoScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        VideoScreenHeader(),
        Divider(
          thickness: 8,
        ),
        VideoListing(),
      ],
    );
  }
}
