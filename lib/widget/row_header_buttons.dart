import 'package:flutter/material.dart';

class RowHeaderButtons extends StatelessWidget {
  final IconData buttonIcon;
  final String name;
  final void Function() buttonAction;
  final Color buttonColor;
  RowHeaderButtons(
      {Key? key,
      required this.buttonIcon,
      required this.buttonAction,
      required this.buttonColor,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey)))),
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
