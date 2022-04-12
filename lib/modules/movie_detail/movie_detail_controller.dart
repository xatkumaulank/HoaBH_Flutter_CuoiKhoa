import 'package:app_filmes_v2/models/video_movie_model.dart';
import 'package:get/get.dart';

import '../../application/ui/loader/loader_mixin.dart';
import '../../application/ui/messages/messages_mixin.dart';
import '../../models/movie_detail_model.dart';
import '../../services/movies/movies_service.dart';


class MovieDetailController extends GetxController
    with LoaderMixin, MessagesMixin {
  MovieDetailController({
    required MoviesService moviesService,
  }) : _moviesService = moviesService;

  final MoviesService _moviesService;
  var loading = false.obs;
  var message = Rxn<MessageModel>();
  var movie = Rxn<MovieDetailModel>();
  var video = Rxn<List<VideoMovieModel>>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  @override
  void onReady() async {
    super.onReady();
    try {
      final movieId = Get.arguments;
      loading(true);
      final movieDetailData = await _moviesService.getDetail(movieId);
      final movieVideoDetailData = await _moviesService.getVideoMovies(movieId);
      movie.value = movieDetailData;
      video.value = movieVideoDetailData;
      loading(false);
    } catch (e, s) {
      print(e);
      print(s);
      loading(false);
    }
  }
}
