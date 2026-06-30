import 'package:flutter/material.dart';

class DownloadProvider
    extends ChangeNotifier {

  List<String> downloadedSongs =
      [];

  void addSong(
      String songId) {
    downloadedSongs.add(
      songId,
    );

    notifyListeners();
  }

  void removeSong(
      String songId) {
    downloadedSongs.remove(
      songId,
    );

    notifyListeners();
  }

  bool isDownloaded(
      String songId) {
    return downloadedSongs.contains(
      songId,
    );
  }
}