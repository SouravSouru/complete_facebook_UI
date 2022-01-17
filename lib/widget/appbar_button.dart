import 'package:flutter/material.dart';

class AppBarButtons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  final Color buttonBgColor;
  final double size;

  AppBarButtons(
      {Key? key, required this.buttonIcon, required this.buttonAction,this.iconColor =Colors.black,this.buttonBgColor =Colors.grey,this.size=25})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 0, right: 0, bottom: 10, top: 8),
      decoration: BoxDecoration(
        color: buttonBgColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
