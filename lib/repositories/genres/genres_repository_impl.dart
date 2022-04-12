import 'package:firebase_remote_config/firebase_remote_config.dart';

import 'package:app_filmes_v2/application/rest_client/rest_client.dart';
import 'package:app_filmes_v2/models/genre_model.dart';
import 'genres_repository.dart';

class GenresRepositoryImpl implements GenresRepository {
  final RestClient _restClient;

  GenresRepositoryImpl({
    required RestClient restClient,
  }) : _restClient = restClient;

  @override
  Future<List<GenreModel>> getGenres() async {
    final result = await _restClient.get<List<GenreModel>>(
      '/genre/movie/list',
      query: {
        'api_key': '4276c8242dc05783aa578f0c9d77a4e7',
        'language': 'en-US',
      },
      decoder: (data) {
        final resultData = data['genres'];
        if (resultData != null) {
          return resultData
              .map<GenreModel>(
                (genre) => GenreModel.fromMap(genre),
              )
              .toList();
        }
        return <GenreModel>[];
      },
    );
    if (result.hasError) {
      throw Exception('');
    }
    return result.body ?? <GenreModel>[];
  }
}
