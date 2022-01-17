import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Videos extends StatefulWidget {
  final String url;

  Videos({Key? key, required this.url}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState(urls: url);
}

class _VideosState extends State<Videos> {
  final String urls;
  _VideosState({required this.urls});

  late YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: urls,
        params: const YoutubePlayerParams(
          //autoPlay: true,
          startAt: Duration.zero,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: YoutubePlayerIFrame(
        controller: _controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
