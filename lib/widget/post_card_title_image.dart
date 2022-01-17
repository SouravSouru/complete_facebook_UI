
import 'package:flutter/material.dart';

class PostCardTitleAndImageScetions extends StatelessWidget {
  final String title;
  final String posts;
  PostCardTitleAndImageScetions({
    Key? key,
    required this.title,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            title,
            style:const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          child: Image.asset(posts),
        ),
      ],
    );
  }
}
