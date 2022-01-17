import 'package:flutter/material.dart';

class profileInfo extends StatelessWidget {
  const profileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      child: Column(
        children: [
          informations(
              icon: Icons.work,
              info: "Work as ",
              infoDetails: "Flutter Developer"),
          SizedBox(
            height: 15,
          ),
          informations(
              icon: Icons.work,
              info: "Studies ",
              infoDetails: "BSc computer science"),
          SizedBox(
            height: 15,
          ),
          informations(
              icon: Icons.home,
              info: "Lives in ",
              infoDetails: "Vatakara, india"),
          SizedBox(
            height: 15,
          ),
          informations(
              icon: Icons.timelapse_rounded,
              info: "Joined on ",
              infoDetails: "June 2016"),
          SizedBox(
            height: 15,
          ),
          informations(
              icon: Icons.more_horiz,
              info: "See more ",
              infoDetails: "About info"),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(
                        Colors.blue.withOpacity(0.2))),
                onPressed: () {
                  print("edit profile");
                },
                child: Text(
                  "Edit Publec Details",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget informations({required icon, required info, required infoDetails}) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.grey,
      ),
      Text(
        info,
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      Text(
        infoDetails,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  );
}
