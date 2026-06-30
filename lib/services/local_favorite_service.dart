import 'package:shared_preferences/shared_preferences.dart';

class LocalFavoriteService {
  Future<void> save(
      List<String> songs) async {
    final prefs =
        await SharedPreferences
            .getInstance();

    await prefs.setStringList(
      'favorites',
      songs,
    );
  }

  Future<List<String>> get() async {
    final prefs =
        await SharedPreferences
            .getInstance();

    return prefs.getStringList(
          'favorites',
        ) ??
        [];
  }
}