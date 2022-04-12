import 'package:app_filmes_v2/models/movie_detail_model.dart';
import 'package:app_filmes_v2/models/movie_model.dart';
import 'package:app_filmes_v2/models/video_movie_model.dart';
import 'package:app_filmes_v2/repositories/movies/movies_repository.dart';

import 'movies_service.dart';

class MoviesServiceImpl implements MoviesService {
  MoviesServiceImpl({
    required MoviesRepository moviesRepository,
  }) : _moviesRepository = moviesRepository;

  final MoviesRepository _moviesRepository;

  @override
  Future<List<MovieModel>> getPopularMovies() =>
      _moviesRepository.getPopularMovies();

  @override
  Future<List<MovieModel>> getTopRatedMovies() =>
      _moviesRepository.getTopRatedMovies();

  @override
  Future<MovieDetailModel?> getDetail(int id) =>
      _moviesRepository.getDetail(id);

  @override
  Future<void> addOrRemoveFavorite(String userId, MovieModel movie) =>
      _moviesRepository.addOrRemoveFavorite(
        userId,
        movie,
      );

  @override
  Future<List<MovieModel>> getFavoritiesMovies(String userId) =>
      _moviesRepository.getFavoritiesMovies(userId);

  @override
  Future<List<VideoMovieModel>?> getVideoMovies(int id) => _moviesRepository.getVideoMovies(id);
}
