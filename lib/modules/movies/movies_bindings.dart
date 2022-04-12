import 'package:app_filmes_v2/modules/movies/movies_controller.dart';
import 'package:get/get.dart';

import 'package:app_filmes_v2/repositories/genres/genres_repository.dart';
import 'package:app_filmes_v2/repositories/genres/genres_repository_impl.dart';
import 'package:app_filmes_v2/services/genres/genres_service.dart';
import 'package:app_filmes_v2/services/genres/genres_service_impl.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
      () => GenresRepositoryImpl(
        restClient: Get.find(),
      ),
    );
    Get.lazyPut<GenresService>(
      () => GenresServiceImpl(
        genreRepository: Get.find(),
      ),
    );
    Get.lazyPut(
      () => MoviesController(
        genresService: Get.find(),
        moviesService: Get.find(),
        authService: Get.find(),
      ),
    );
  }
}
