import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class IslamVideo extends StatefulWidget {
  const IslamVideo({super.key, required this.videoId});

  final String videoId;

  @override
  State<IslamVideo> createState() => _IslamVideoState();
}

class _IslamVideoState extends State<IslamVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          YoutubePlayer(
            bottomActions: [
              CurrentPosition(),
              ProgressBar(isExpanded: true),
            ],
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
        ],
      ),
    );
  }
}
