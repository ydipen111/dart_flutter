
import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';

class VideoWidgets extends StatefulWidget {
  const VideoWidgets({super.key});

  @override
  State<VideoWidgets> createState() => _VideoWidgetsState();
}

class _VideoWidgetsState extends State<VideoWidgets> {
  @override
  Widget build(BuildContext context) {
    return PodVideoPlayer(controller:
    PodPlayerController(playVideoFrom: PlayVideoFrom.network('https://www.youtube.com/watch?v=YkCDVn3_wiw')));
  }
}
