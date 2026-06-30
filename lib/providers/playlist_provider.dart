import 'package:flutter/material.dart';
import '../services/playlist_service.dart';

class PlaylistProvider
    extends ChangeNotifier {
  final PlaylistService service =
      PlaylistService();

  bool loading = false;

  void setLoading(
      bool value) {
    loading = value;
    notifyListeners();
  }
}