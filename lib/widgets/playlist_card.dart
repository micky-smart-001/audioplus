import 'package:flutter/material.dart';

class PlaylistCard
    extends StatelessWidget {
  final String title;
  final int songs;

  const PlaylistCard({
    super.key,
    required this.title,
    required this.songs,
  });

  @override
  Widget build(
      BuildContext context) {
    return Card(
      child: ListTile(
        leading:
            const Icon(
          Icons.queue_music,
        ),
        title:
            Text(title),
        subtitle:
            Text(
          '$songs songs',
        ),
      ),
    );
  }
}