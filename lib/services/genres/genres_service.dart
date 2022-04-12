import 'package:app_filmes_v2/models/genre_model.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}
