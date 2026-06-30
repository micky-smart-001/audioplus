import 'package:shared_preferences/shared_preferences.dart';

class HistoryService {
  Future<void> save(
      String search) async {
    final prefs =
        await SharedPreferences
            .getInstance();

    List<String> history =
        prefs.getStringList(
              'history',
            ) ??
            [];

    if (!history.contains(
      search,
    )) {
      history.add(search);
    }

    await prefs.setStringList(
      'history',
      history,
    );
  }

  Future<List<String>> get() async {
    final prefs =
        await SharedPreferences
            .getInstance();

    return prefs.getStringList(
          'history',
        ) ??
        [];
  }
}