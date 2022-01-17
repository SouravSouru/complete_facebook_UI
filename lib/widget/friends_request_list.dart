
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FriendsRequestList extends StatelessWidget {
  const FriendsRequestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            trailing:const Text(
              "Sort",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
            title: Row(
              children: const[
                Text(
                  "Frirnds Requests",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "5",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          frindsList(
            name: "Virat Kohili",
            image: "assets/avatat/virat kohili.jpg",
            mutual: "3 mutual friends",
            days: "2 day",
          ),
          SizedBox(
            height: 15,
          ),
          frindsList(
            name: "Shah Rukh Khan",
            image: "assets/avatat/shah rukh khan.jpg",
            mutual: "1 mutual friends",
            days: "2 day",
          ),
          SizedBox(
            height: 15,
          ),
          frindsList(
            name: "Sachi",
            image: "assets/avatat/sachin.jpg",
            mutual: "5 mutual friends",
            days: "3 day",
          ),
          SizedBox(
            height: 15,
          ),
          frindsList(
            name: "Prithviraj",
            image: "assets/avatat/prithviraj.jpg",
            mutual: "10 mutual friends",
            days: "3 day",
          ),
          SizedBox(
            height: 15,
          ),
          frindsList(
            name: "A R Rahman",
            image: "assets/avatat/ar rahman.jpg",
            mutual: "3 mutual friends",
            days: "3 day",
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

Widget frindsList({name, image, mutual, days}) {
  return ListTile(
    trailing: Text(
      days,
      style: TextStyle(
        color: Colors.grey.shade500,
      ),
    ),
    leading: Container(
      // width: 100,
      // height: 70,
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(image),
      ),
    ),
    title: Text(name),
    subtitle: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mutual),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("sent friends request");
                },
                child: const Text("Confirm"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 29,
                ),
                child: ElevatedButton(
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
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
