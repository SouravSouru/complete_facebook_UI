import 'package:facebook_complete_ui/widget/appbar_button.dart';
import 'package:flutter/material.dart';

class VideoScreenHeader extends StatelessWidget {
  const VideoScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child:const Text(
              "Watch",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: AppBarButtons(
                    buttonIcon: Icons.account_circle_outlined,
                    buttonAction: () {
                      print("account button clicked");
                    },
                    buttonBgColor: Colors.grey.shade300,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  child: AppBarButtons(
                    buttonIcon: Icons.search,
                    buttonAction: () {
                      print("account button clicked");
                    },
                    buttonBgColor: Colors.grey.shade300,
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
