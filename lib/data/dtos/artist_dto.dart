import 'package:firebase/model/artists/artist.dart';

class ArtistDto {
  static const String nameKey = 'name';
  static const String genreKey = 'genre';
  static const String imageUrlKey = 'imageUrl';

  static Artist fromJson(String id, Map<String, dynamic> json) {
    return Artist(
      id: id,
      name: json[nameKey].toString(),
      genre: json[genreKey].toString(),
      imageUrl: Uri.parse(json[imageUrlKey]),
    );
  }

  /// Convert Artist to JSON
  Map<String, dynamic> toJson(Artist artist) {
    return {
      nameKey: artist.name,
      genreKey: artist.genre,
      imageUrlKey: artist.imageUrl,
    };
  }
}
