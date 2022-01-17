import 'package:facebook_complete_ui/widget/appbar_button.dart';

import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  final String labetText;
  final String storys;
  final String profile;
  final bool createStoryStatus;
  final double left;
  final double bottom;
  final bool needAlignment;

  StoryCards({
    Key? key,
    required this.labetText,
    required this.profile,
    required this.storys,
    this.createStoryStatus = false,
    this.needAlignment = false,
    this.bottom = 0,
    this.left = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(storys), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          needAlignment // storys proffile button need to change or not (add story button also)
              ? Positioned(
                  left: left,
                  bottom: bottom,
                  child: createStoryStatus
                      ? Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              )),
                          child: AppBarButtons(
                            //appbarbuttons is called here for the button
                            buttonIcon: Icons.add,
                            buttonBgColor: Colors.blue,
                            iconColor: Colors.white,
                            buttonAction: () {
                              print("Add yout strois");
                            },
                          ),
                        )
                      : CircleAvatar(
                          backgroundImage: AssetImage(profile),
                        ),
                )
              : Positioned(
                  left: 5,
                  top: 5,
                  child: createStoryStatus
                      ? AppBarButtons(
                          //appbarbuttons is called here for the button
                          buttonIcon: Icons.add,
                          buttonBgColor: Colors.blue,
                          iconColor: Colors.white,
                          buttonAction: () {
                            print("Add yout strois");
                          },
                        )
                      : Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.blueAccent,
                              width: 2,
                            ),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(profile),
                            radius: 20,
                          ),
                        ),
                ),
          Positioned(
            bottom: 0,
            left: 40,
            child: Text(
              labetText,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
