import 'package:flutter/material.dart';

class LikeCommentButtons extends StatelessWidget {
  const LikeCommentButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //like button
        ElevatedButton.icon(
          onPressed: () {
            print("like button liked");
          },
          icon: Icon(
            Icons.thumb_up_alt_outlined,
            color: Colors.grey.shade600,
          ),
          label: Text(
            "Like",
            style: TextStyle(color: Colors.grey[600]),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        //comment button
        ElevatedButton.icon(
          onPressed: () {
            print("Comment button liked");
          },
          icon: Icon(
            Icons.mode_comment_outlined,
            color: Colors.grey.shade600,
          ),
          label: Text(
            "Comment",
            style: TextStyle(color: Colors.grey[600]),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        //share button
        ElevatedButton.icon(
          onPressed: () {
            print("Share button liked");
          },
          icon: Icon(
            Icons.share_outlined,
            color: Colors.grey.shade600,
          ),
          label: Text(
            "Share",
            style: TextStyle(color: Colors.grey[600]),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            elevation: MaterialStateProperty.all(0),
          ),
        ),
        
      ],
    );
  }
}
