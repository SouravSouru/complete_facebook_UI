
import 'package:flutter/material.dart';

class PostCardsHeaderSections extends StatelessWidget {
  final String postedProfileName;
  final String profilePhoto;
  final String time;
  final IconData postType;
  final bool needBlueTick;
  PostCardsHeaderSections({
    Key? key,
    required this.profilePhoto,
    required this.postedProfileName,
    required this.time,
    required this.postType,
    required this.needBlueTick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(profilePhoto),
      ),
      title: Row(
        children: [
          Text(
            postedProfileName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          needBlueTick
              ? Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                  size: 16,
                )
              : Icon(
                  null,
                  color: Colors.blue,
                  size: 16,
                )
        ],
      ),
      subtitle: Row(
        children: [
          Text(time),
          const SizedBox(
            width: 5,
          ),
          Icon(
            postType,
            color: Colors.black54,
            size: 20,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("more options in the post");
        },
        icon: Icon(Icons.more_horiz),
      ),
    );
  }
}
