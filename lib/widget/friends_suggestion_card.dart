import 'package:flutter/material.dart';

class SuggestionCards extends StatelessWidget {
  final String image;
  final String name;
  bool mutualFriend = true;
  final String mutualFriendsName;
  SuggestionCards({
    Key? key,
    required this.name,
    required this.image,
    required this.mutualFriend,
    this.mutualFriendsName = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                image, //adding image
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Column(
                children: [
                  ListTile(
                      title: Text(
                        name, //adding name
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      subtitle: mutualFriend ? Text(mutualFriendsName) : null),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("sent friends request");
                          },
                          child: const Text("Add Friend"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("Remove friends request");
                          },
                          child: const Text(
                            "Remove",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
