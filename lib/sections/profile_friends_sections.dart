
import 'package:flutter/material.dart';

class ProfileFriendsList extends StatelessWidget {
  const ProfileFriendsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Column(
        children: [
          const ListTile(
            title: Text(
              "Friends",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("1,234 friends"),
            trailing: Text(
              "See all",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              friendsPhotoAndName(
                image: "assets/avatat/mammotty.jpg",
                name: "Mammotty",
              ),
              friendsPhotoAndName(
                image: "assets/avatat/elon_musk.jpg",
                name: "Elon Musk",
              ),
              friendsPhotoAndName(
                image: "assets/avatat/fahad fazil.jpg",
                name: "Fahad Fazil",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              friendsPhotoAndName(
                image: "assets/avatat/nayanthara.jpg",
                name: "Nayanthara",
              ),
              friendsPhotoAndName(
                image: "assets/avatat/nivin pauly.jpg",
                name: "Nivin Pauly",
              ),
              friendsPhotoAndName(
                image: "assets/avatat/mohanlal.jpg",
                name: "Mohanlal",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget friendsPhotoAndName({required image, required name}) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      Text(name)
    ],
  );
}
