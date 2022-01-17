import 'package:facebook_complete_ui/widget/friends_request_header_parts.dart';
import 'package:facebook_complete_ui/widget/friends_request_list.dart';
import 'package:flutter/material.dart';

class FriendsRequestHoneScreen extends StatelessWidget {
  const FriendsRequestHoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      FriendsRequestHeaderParts(),
      Divider(
        thickness: 1,
      ),
      FriendsRequestList(),
    ]);
  }
}
