import 'package:flutter/material.dart';

class PostCardFooter extends StatelessWidget {
  final String likes;
  final String comments;
  final String share;
  PostCardFooter({
    Key? key,
    required this.likes,
    required this.comments,
    required this.share,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding:const EdgeInsets.only(
        left: 10,
        right: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Positioned(
                  right: 25,
                  top: 12,
                  child: Container(
                    width: 25,
                    height: 20,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child:const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 10,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      color: Colors.blue,
                    ),
                    child:const Icon(
                      Icons.thumb_up_alt,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                Positioned(
                  left: 45,
                  top: 13,
                  child: Container(
                    child: Text(
                      likes,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  comments,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
               const SizedBox(
                  width: 2,
                ),
                Text(
                  share,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
