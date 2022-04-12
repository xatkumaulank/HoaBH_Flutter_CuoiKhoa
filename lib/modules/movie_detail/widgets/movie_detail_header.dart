import 'package:app_filmes_v2/models/video_movie_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../movie_detail_controller.dart';


class MovieDetailHeader extends GetView<MovieDetailController> {
  const MovieDetailHeader({
    Key? key,
    required this.videos,
  }) : super(key: key);

  final List<VideoMovieModel>? videos;
  @override
  Widget build(BuildContext context){
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videos![0].key,
      flags: const YoutubePlayerFlags(
        hideControls: false,
        controlsVisibleAtStart: true,
        autoPlay: false,
        mute: false,
      ),
    );
    return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true
    );
  }
}
