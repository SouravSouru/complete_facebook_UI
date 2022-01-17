import 'package:flutter/material.dart';

class CameraIconButton extends StatelessWidget {
  const CameraIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.shade300,
      ),
      child: Center(
        child: IconButton(
          onPressed: () {
            print("add new image");
          },
          icon:const Icon(
            Icons.camera_alt,
            size: 15,
          ),
        ),
      ),
    );
  }
}
