import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerProvider extends ChangeNotifier {
  final AudioPlayer player = AudioPlayer();

  List<String> playlist = [];
  int currentIndex = 0;

  bool get isPlaying =>
      player.playing;

  Duration get position =>
      player.position;

  Duration get duration =>
      player.duration ??
      Duration.zero;

  Future<void> loadPlaylist(
      List<String> songs) async {
    playlist = songs;

    await player.setAudioSources(
      songs
          .map(
            (e) => AudioSource.uri(
              Uri.parse(e),
            ),
          )
          .toList(),
    );
  }

  Future<void> playSong(
      int index) async {
    currentIndex = index;

    await player.seek(
      Duration.zero,
      index: index,
    );

    player.play();

    notifyListeners();
  }

  Future<void> pause() async {
    await player.pause();
    notifyListeners();
  }

  Future<void> resume() async {
    await player.play();
    notifyListeners();
  }

  Future<void> stop() async {
    await player.stop();
    notifyListeners();
  }

  Future<void> nextSong() async {
    await player.seekToNext();
    notifyListeners();
  }

  Future<void> previousSong() async {
    await player.seekToPrevious();
    notifyListeners();
  }

  Future<void> seek(
      Duration position) async {
    await player.seek(position);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}