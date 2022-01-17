
import 'package:facebook_complete_ui/widget/storys_card.dart';
import 'package:flutter/material.dart';

class Storys extends StatelessWidget {
  const Storys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
            storys: "assets/avatat/sourav.jpg",
            labetText: "Create story",
            createStoryStatus: true,
            profile: "assets/avatat/sourav.jpg",
            needAlignment: true,
            left: 50,
            bottom: 50,
          ),
          StoryCards(
            storys: "assets/post/newyear_post1.jpg",
            labetText: "Mohanlal",
            createStoryStatus: false,
            profile: "assets/avatat/mohanlal.jpg",
          ),
          StoryCards(
            storys: "assets/post/newyear_post2.jpg",
            labetText: "Elon Musk",
            createStoryStatus: false,
            profile: "assets/avatat/elon_musk.jpg",
          ),
          StoryCards(
            storys: "assets/post/newyear_post3.jpg",
            labetText: "Mammotty",
            createStoryStatus: false,
            profile: "assets/avatat/mammotty.jpg",
          ),
          StoryCards(
            storys: "assets/post/newyear_post1.jpg",
            labetText: "Sunder pich",
            createStoryStatus: false,
            profile: "assets/avatat/google_ceo.jpg",
          ),
          StoryCards(
            storys: "assets/post/newyear_post5.jpg",
            labetText: "mark",
            createStoryStatus: false,
            profile: "assets/avatat/facebook_ceo.jpg",
          ),
          StoryCards(
            storys: "assets/post/newyear_post6.jpg",
            labetText: "MsDhoni",
            createStoryStatus: false,
            profile: "assets/avatat/ms_dhoni.jpg",
          ),
        ],
      ),
    );
  }
}
