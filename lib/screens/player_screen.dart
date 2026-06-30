import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/player_provider.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayerScreen extends StatelessWidget {
  final String title;
  final String artist;
  final String imageUrl;

  const PlayerScreen({
    super.key,
    required this.title,
    required this.artist,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<PlayerProvider>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),

            ClipRRect(
              borderRadius:
                  BorderRadius.circular(
                20,
              ),
              child: Image.network(
                imageUrl,
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            Text(
              title,
              style:
                  const TextStyle(
                fontSize: 24,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            Text(
              artist,
              style:
                  const TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            StreamBuilder<Duration>(
              stream:
                  provider.player
                      .positionStream,
              builder:
                  (context, snapshot) {
                final position =
                    snapshot.data ??
                        Duration.zero;

                return ProgressBar(
                  progress:
                      position,
                  total:
                      provider.duration,
                  onSeek:
                      provider.seek,
                );
              },
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceEvenly,
              children: [

                IconButton(
                  onPressed:
                      provider
                          .previousSong,
                  icon:
                      const Icon(
                    Icons
                        .skip_previous,
                    size: 40,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    if (provider
                        .isPlaying) {
                      provider.pause();
                    } else {
                      provider.resume();
                    }
                  },
                  icon: Icon(
                    provider.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    size: 60,
                  ),
                ),

                IconButton(
                  onPressed:
                      provider
                          .nextSong,
                  icon:
                      const Icon(
                    Icons.skip_next,
                    size: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}