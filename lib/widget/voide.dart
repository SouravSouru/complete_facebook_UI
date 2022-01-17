// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class Videos extends StatefulWidget {
//   final String url;
  
//    Videos({ Key? key,required this.url }) : super(key: key);

   

//   @override
//   State<Videos> createState() => _VideosState(urls:url );
// }

// class _VideosState extends State<Videos> {
//   final String urls;
//   _VideosState({required this.urls});
  
//   late YoutubePlayerController _controller;
//   @override
//   void initState() {
//     _controller =YoutubePlayerController(initialVideoId: urls,
//     flags: YoutubePlayerFlags(autoPlay: true,mute: false)
//     );
//     super.initState();
//   }

  
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: YoutubePlayer(controller: _controller,
//       showVideoProgressIndicator: true,
       
//        onReady: () {
         
//           print('Player is ready.');
//        },),
      
//     );
//   }
// }