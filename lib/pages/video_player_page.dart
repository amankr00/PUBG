import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({super.key});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPage();
}

class _VideoPlayerPage extends State<VideoPlayerPage> {

  late CustomVideoPlayerController _customVideoPlayerController;
  String assetVideoPath = "assets/videos/women.mp4";



  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void intializeVideoPlayer() {

  VideoPlayerController _videoPlayerController;
  _videoPlayerController = VideoPlayerController.asset(assetVideoPath)..initialize().then((_) {


  });

  

}
}
