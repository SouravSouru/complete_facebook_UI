
import 'package:flutter/material.dart';

class MoreOptionScreen extends StatelessWidget {
  const MoreOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 60,
          child: GestureDetector(
            onTap: (){
              
              print("go to profile");
              
            },
            child:const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/avatat/sourav.jpg"),
              ),
              title: Text("Sourav K K",style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text("View your profile"),
            ),
          ),
        ),
        Divider(thickness: 1,),
        moreListIteams(
          icon: Icons.health_and_safety,
          iconColor: Colors.pinkAccent,
          text: "COVID-19 information center"
        ),
        moreListIteams(
          icon: Icons.live_tv_rounded,
          iconColor: Colors.red,
          text: "Live videos"
        ),
        moreListIteams(
          icon: Icons.message,
          iconColor: Colors.blue,
          text: "Messages"
        ),
        moreListIteams(
          icon: Icons.groups,
          iconColor: Colors.blue,
          text: "Groups"
        ),
        moreListIteams(
          icon: Icons.groups,
          iconColor: Colors.blueAccent,
          text: "Friends"
        ),
        moreListIteams(
          icon: Icons.ondemand_video_rounded,
          iconColor: Colors.blueAccent,
          text: "Videos"
        ),
        moreListIteams(
          icon: Icons.flag,
          iconColor: Colors.deepOrange,
          text: "Pages"
        ),
        moreListIteams(
          icon: Icons.save_alt_outlined,
          iconColor: Colors.purple,
          text: "Saved"
        ),
        moreListIteams(
          icon: Icons.wifi,
          iconColor: Colors.blue,
          text: "Find WI-FI"
        ),
        moreListIteams(
          icon: Icons.timelapse_rounded,
          iconColor: Colors.blue,
          text: "Memories"
        ),
        moreListIteams(
          icon: Icons.event,
          iconColor: Colors.pinkAccent,
          text: "Events"
        ),
        moreListIteams(
          icon: Icons.games,
          iconColor: Colors.blue,
          text: "Games"
        ),
        moreListIteams(
          icon: Icons.work,
          iconColor: Colors.brown,
          text: "Jobs"
        ),
        moreListIteams(
          icon: Icons.settings,
          iconColor: Colors.grey,
          text: "Settings"
        ),
        moreListIteams(
          icon: Icons.language,
          iconColor: Colors.grey,
          text: "Language"
        ),
        moreListIteams(
          icon: Icons.data_usage,
          iconColor: Colors.grey,
          text: "Data usage"
        ),
        moreListIteams(
          icon: Icons.help,
          iconColor: Colors.grey,
          text: "Helps"
        ),
        moreListIteams(
          icon: Icons.help_center_sharp,
          iconColor: Colors.grey,
          text: "About"
        ),
        moreListIteams(
          icon: Icons.logout_sharp,
          iconColor: Colors.grey,
          text: "Log out"
        ),

      ],
    );
  }
}

Widget moreListIteams({required icon,required iconColor,required text}){
  return ListTile(
    leading: Icon(icon,color: iconColor,),
    title: Text(text,style: TextStyle(fontWeight: FontWeight.w500),),
  );
}
