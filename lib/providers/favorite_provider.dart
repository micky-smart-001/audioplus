import 'package:flutter/material.dart';
import '../services/favorite_service.dart';

class FavoriteProvider
    extends ChangeNotifier {

  final FavoriteService service =
      FavoriteService();

  List<String> favorites = [];

  void setFavorites(
      List<String> list) {
    favorites = list;
    notifyListeners();
  }

  bool isFavorite(
      String songId) {
    return favorites.contains(
      songId,
    );
  }
}