import 'package:facebook_complete_ui/widget/appbar_button.dart';
import 'package:flutter/material.dart';

class FriendsRequestHeaderParts extends StatelessWidget {
  const FriendsRequestHeaderParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          ListTile(
            title:const Text(
              "Friends",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            trailing: AppBarButtons(
              buttonIcon: Icons.search,
              buttonBgColor: Colors.grey.shade300,
              buttonAction: () {
                print("friends search");
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 24,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: const Center(child: Text("Suggestions")),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 24,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: const Center(
                    child: Text("Your Friends"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
