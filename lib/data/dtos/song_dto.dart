import '../../model/songs/song.dart';

class SongDto {
  static const String titleKey = 'title';
  static const String artistIdKey = 'artistIds';
  static const String durationKey = 'durationMs'; // in ms
  static const String imageUrlKey = 'imageUrl';

  static Song fromJson(String id, Map<String, dynamic> json) {
    return Song(
      id: id,
      title: json[titleKey],
      artistId: json[artistIdKey],
      duration: Duration(milliseconds: json[durationKey]),
      imageUrl: json[imageUrlKey],
    );
  }

  /// Convert Song to JSON
  Map<String, dynamic> toJson(Song song) {
    return {
      titleKey: song.title,
      artistIdKey: song.artistId,
      durationKey: song.duration.inMilliseconds,
      imageUrlKey: song.imageUrl,
    };
  }
}
