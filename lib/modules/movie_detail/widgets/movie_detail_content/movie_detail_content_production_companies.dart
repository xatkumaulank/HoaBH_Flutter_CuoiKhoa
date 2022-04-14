import 'package:flutter/material.dart';

import '../../../../models/movie_detail_model.dart';


class MovieDetailContentProductionCompanies extends StatelessWidget {
  const MovieDetailContentProductionCompanies({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final MovieDetailModel? movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(bottom: 5),
      child: RichText(
        text: TextSpan(
          text: 'Production Company',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF222222),
          ),
          children: [
            TextSpan(
              text: movie?.productionCompanies.join(', ') ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Color(0xFF222222),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
