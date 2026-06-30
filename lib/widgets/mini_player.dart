import 'package:flutter/material.dart';

class MiniPlayer
    extends StatelessWidget {
  const MiniPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.grey[900],
      child: const ListTile(
        leading:
            Icon(Icons.music_note),
        title:
            Text("Now Playing"),
        subtitle:
            Text("Audio Plus"),
      ),
    );
  }
}