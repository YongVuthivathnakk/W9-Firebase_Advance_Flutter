import 'package:firebase/model/artists/artist.dart';
import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  final Artist artist;

  const ArtistTile({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          title: Text(artist.name),
          subtitle: Text(artist.genre),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(artist.imageUrl.toString()),
          ),
        ),
      ),
    );
    ;
  }
}
