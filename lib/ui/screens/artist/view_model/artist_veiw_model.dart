import 'package:firebase/data/repositories/artists/artists_repository.dart';
import 'package:firebase/model/artists/artist.dart';
import 'package:firebase/ui/utils/async_value.dart';
import 'package:flutter/widgets.dart';

class ArtistVeiwModel extends ChangeNotifier {
  final ArtistRepository artistRepository;

  AsyncValue<List<Artist>> artistValue = AsyncValue.loading();

  ArtistVeiwModel({required this.artistRepository}) {
    _init();
  }

  void _init() async {
    fetchArtists();
  }

  void fetchArtists() async {
    artistValue = AsyncValue.loading();
    notifyListeners();

    try {
      List<Artist> artists = await artistRepository.fetchArtists();
      artistValue = AsyncValue.success(artists);
    } catch (e) {
      artistValue = AsyncValue.error(e);
    }

    notifyListeners();
  }
}
