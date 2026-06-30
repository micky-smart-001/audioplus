import 'package:flutter/material.dart';

class FavoritesScreen
    extends StatelessWidget {
  const FavoritesScreen({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Favorites',
        ),
      ),
      body: const Center(
        child:
            Text(
          'Favorite Songs',
        ),
      ),
    );
  }
  final favoriteIds =
    provider.favorites;

final favoriteSongs =
    allSongs.where(
      (song) =>
          favoriteIds.contains(
        song.id,
      ),
    ).toList();
}