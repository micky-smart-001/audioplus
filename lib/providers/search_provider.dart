import 'package:flutter/material.dart';
import '../models/song_model.dart';
import '../services/search_service.dart';

class SearchProvider
    extends ChangeNotifier {
  final SearchService _service =
      SearchService();

  List<SongModel> results = [];

  bool loading = false;

  Future<void> search(
      String query) async {
    loading = true;
    notifyListeners();

    results =
        await _service.searchSongs(
      query,
    );

    loading = false;
    notifyListeners();
  }
}