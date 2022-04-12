import 'package:app_filmes_v2/models/movie_detail_model.dart';
import 'package:app_filmes_v2/models/movie_model.dart';
import 'package:app_filmes_v2/models/video_movie_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailModel?> getDetail(int id);
  Future<void> addOrRemoveFavorite(String userId, MovieModel movie);
  Future<List<MovieModel>> getFavoritiesMovies(String userId);
  Future<List<VideoMovieModel>?> getVideoMovies(int id);
}
