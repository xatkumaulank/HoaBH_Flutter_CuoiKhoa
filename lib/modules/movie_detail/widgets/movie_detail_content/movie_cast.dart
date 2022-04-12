import 'package:app_filmes_v2/application/ui/theme_extension.dart';
import 'package:flutter/material.dart';

import '../../../../models/cast_model.dart';


class MovieCast extends StatelessWidget {
  const MovieCast({
    Key? key,
    required this.cast,
  }) : super(key: key);
  final CastModel? cast;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              cast?.image ?? '',
              width: 85,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            cast?.name ?? '',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            cast?.character ?? '',
            style: TextStyle(
              fontSize: 12,
              color: context.themeGrey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
