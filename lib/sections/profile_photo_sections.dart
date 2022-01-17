
import 'package:facebook_complete_ui/widget/camera_icon_button.dart';
import 'package:flutter/material.dart';

class ProfilePhotoSection extends StatelessWidget {
  const ProfilePhotoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Positioned(
            left: 15,
            right: 15,
            top: 20,
            child: Container(
              height: 200,
              decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/post/newyear_post2.jpg"),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const Positioned(
            right: 20,
            bottom: 190,
            child: CameraIconButton(),
          ),
          Positioned(
            left: 120,
            bottom: 120,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(500),
                image:const DecorationImage(
                  image: AssetImage("assets/avatat/sourav.jpg"),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 225,
            bottom: 120,
            child: CameraIconButton(),
          ),
          Positioned(
            bottom: 0,
            top: 280,
            child: Container(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sourav K K",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        profileHeaderSectionButtons(
                            buttonName: "Add to story",
                            icon: Icons.add_circle,
                            color: Colors.blue,
                            iconColor: Colors.white),
                        profileHeaderSectionButtons(
                            buttonName: "Edit profile",
                            icon: Icons.edit,
                            color: Colors.grey.shade300,
                            textcolor: Colors.grey.shade800,
                            iconColor: Colors.black),
                        ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey.shade300),
                          ),
                          onPressed: () {
                            print("more option");
                          },
                          child: Icon(
                            Icons.more_horiz_outlined,
                            color: Colors.black,
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

Widget profileHeaderSectionButtons(
    {required buttonName, required icon, color, textcolor, iconColor}) {
  return ElevatedButton.icon(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(color),
    ),
    onPressed: () {
      print(buttonName);
    },
    icon: Icon(
      icon,
      color: iconColor,
    ),
    label: Text(
      buttonName,
      style: TextStyle(color: textcolor),
    ),
  );
}
