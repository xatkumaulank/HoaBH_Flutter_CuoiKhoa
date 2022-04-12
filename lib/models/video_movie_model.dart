
import 'dart:convert';

class VideoMovieModel{
  final String name;
  final String key;
  final String id;

  VideoMovieModel({required this.name, required this.key, required this.id});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'key': key,
      'id': id,
    };
  }
  factory VideoMovieModel.fromMap(Map<String, dynamic> map) {
    return VideoMovieModel(name : map['name'] ?? '', key: map['key'] ?? '', id: map['id'] ?? '');
  }

  String toJson() => json.encode(toMap());

  factory VideoMovieModel.fromJson(String source) => VideoMovieModel.fromMap(json.decode(source));

  VideoMovieModel copyWith({
    String? name,
    String? key,
    String? id,
  }) {
    return VideoMovieModel(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name
    );
  }
}