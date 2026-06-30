import 'package:shared_preferences/shared_preferences.dart';

class LocalDownloadService {
  Future<void> save(
      List<String> songs) async {
    final prefs =
        await SharedPreferences
            .getInstance();

    await prefs.setStringList(
      'downloads',
      songs,
    );
  }

  Future<List<String>> get() async {
    final prefs =
        await SharedPreferences
            .getInstance();

    return prefs.getStringList(
          'downloads',
        ) ??
        [];
  }
}