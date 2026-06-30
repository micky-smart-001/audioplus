import 'package:flutter/material.dart';

class ProfileProvider
    extends ChangeNotifier {
  bool loading = false;

  void setLoading(
      bool value) {
    loading = value;
    notifyListeners();
  }
}