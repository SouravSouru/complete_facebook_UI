import 'package:facebook_complete_ui/screens/more_optin_screen.dart';
import 'package:facebook_complete_ui/screens/notification_screen.dart';
import 'package:facebook_complete_ui/screens/profile_screen.dart';
import 'package:facebook_complete_ui/screens/screen_home.dart';
import 'package:facebook_complete_ui/screens/friends_request_home_screen.dart';
import 'package:facebook_complete_ui/screens/video_screen.dart';
import 'package:facebook_complete_ui/widget/appbar_button.dart';
import 'package:facebook_complete_ui/widget/tabbar_button.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "facebook",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            AppBarButtons(
              buttonIcon: Icons.search,
              buttonBgColor: Colors.grey.shade300,
              buttonAction: () {},
            ),
            AppBarButtons(
              buttonIcon: Icons.message,
              buttonAction: () {},
              buttonBgColor: Colors.grey.shade300,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,
            indicatorWeight: 4,
            automaticIndicatorColorAdjustment: true,
            controller: _controller,
            tabs: [
              TabBarButtons(
                buttonIcon: Icons.home_rounded,
                buttonAction: () {},
              ),
              TabBarButtons(
                buttonIcon: Icons.people_outline,
                buttonAction: () {},
              ),
              TabBarButtons(
                buttonIcon: Icons.ondemand_video_outlined,
                buttonAction: () {},
              ),
              TabBarButtons(
                buttonIcon: Icons.person_pin,
                buttonAction: () {},
              ),
              TabBarButtons(
                buttonIcon: Icons.notifications,
                buttonAction: () {},
              ),
              TabBarButtons(
                buttonIcon: Icons.menu_rounded,
                buttonAction: () {},
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: const [
            ScreenHome(),
            FriendsRequestHoneScreen(),
            VideoScreenMain(),
            ProfileScreen(),
            NotificationScrren(),
            MoreOptionScreen(),
          ],
        ),
      ),
    );
  }
}
