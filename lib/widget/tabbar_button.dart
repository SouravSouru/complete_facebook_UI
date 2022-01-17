

import 'package:flutter/material.dart';

class TabBarButtons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
   TabBarButtons({Key? key,required this.buttonIcon,required this.buttonAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: buttonAction,
      icon: Icon(buttonIcon),//,color: Colors.black,),
      focusColor: Colors.green,
      splashRadius: 77,
      splashColor: Colors.red,
      color: Colors.black,
    );
  }
}
