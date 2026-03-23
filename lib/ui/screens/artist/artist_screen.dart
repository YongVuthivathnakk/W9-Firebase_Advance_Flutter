import 'package:firebase/data/repositories/artists/artists_repository.dart';
import 'package:firebase/ui/screens/artist/view_model/artist_veiw_model.dart';
import 'package:firebase/ui/screens/artist/widgets/artist_content.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ArtistScreen extends StatelessWidget {
  const ArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) =>
          ArtistVeiwModel(artistRepository: ctx.read<ArtistRepository>()),
      child: ArtistContent(),
    );
  }
}
