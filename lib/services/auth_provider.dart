import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _service =
      AuthService();

  bool loading = false;

  Future<String?> login(
      String email,
      String password) async {
    loading = true;
    notifyListeners();

    String? result =
        await _service.login(
      email: email,
      password: password,
    );

    loading = false;
    notifyListeners();

    return result;
  }

  Future<String?> signUp(
    String name,
    String email,
    String password,
  ) async {
    loading = true;
    notifyListeners();

    String? result =
        await _service.signUp(
      name: name,
      email: email,
      password: password,
    );

    loading = false;
    notifyListeners();

    return result;
  }

  Future<void> logout() async {
    await _service.logout();
  }
}