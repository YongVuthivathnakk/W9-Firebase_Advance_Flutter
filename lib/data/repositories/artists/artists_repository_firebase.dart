import 'dart:convert';

import 'package:firebase/data/dtos/artist_dto.dart';
import 'package:firebase/data/repositories/artists/artists_repository.dart';
import 'package:firebase/model/artists/artist.dart';
import 'package:http/http.dart' as http;

class ArtistsRepositoryFirebase implements ArtistRepository {
  final Uri artistsUri = Uri.https(
    'g1-project-13926-default-rtdb.asia-southeast1.firebasedatabase.app',
    '/artists.json',
  );

  @override
  Future<List<Artist>> fetchArtists() async {
    // TODO: implement fetchArtists

    final http.Response response = await http.get(artistsUri);

    if (response.statusCode == 200) {
      // 1 - Send the retrieved list of songs
      Map<String, dynamic> artistJson = json.decode(response.body);
      return artistJson.entries
          .map((entry) => ArtistDto.fromJson(entry.key, entry.value))
          .toList();
    } else {
      // 2- Throw expcetion if any issue
      throw Exception('Failed to load posts');
    }
  }
}
