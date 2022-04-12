import 'package:app_filmes_v2/models/genre_model.dart';
import 'package:app_filmes_v2/repositories/genres/genres_repository.dart';
import 'genres_service.dart';

class GenresServiceImpl implements GenresService {
  final GenresRepository _genreRepository;

  GenresServiceImpl({
    required GenresRepository genreRepository,
  }) : _genreRepository = genreRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genreRepository.getGenres();
}
