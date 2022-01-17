
import 'package:facebook_complete_ui/widget/friends_suggestion_card.dart';
import 'package:flutter/material.dart';

class FriendsSuggestionSection extends StatelessWidget {
  const FriendsSuggestionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may khow"),
            trailing: Icon(
              Icons.more_horiz,
              color: Colors.green[600],
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCards(
                  name: "KS Chithra",
                  image: "assets/avatat/ks chithra.jpg",
                  mutualFriend: true,
                  mutualFriendsName: "4 Mutual friends",
                ),
                SuggestionCards(
                  name: "Sunil Gavaskar",
                  image: "assets/avatat/sunil gavaskar.jpg",
                  mutualFriend: true,
                  mutualFriendsName: "1 Mutual friends",
                ),
                SuggestionCards(
                  name: " BCCI",
                  image: "assets/avatat/BCCI.jpg",
                  mutualFriend: false,
                  
                ),
                SuggestionCards(
                  name: "Amithabh Bachchan",
                  image: "assets/avatat/amithabh bachchan.jpg",
                  mutualFriend: true,
                  mutualFriendsName: "5 Mutual friends",
                ),
                SuggestionCards(
                  name: "Sourav Ganguly",
                  image: "assets/avatat/ganguly.jpg",
                  mutualFriend: true,
                  mutualFriendsName: "6 Mutual friends",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
