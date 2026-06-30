import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FCMService {
  Future<void> saveToken(
      String uid) async {
    final token =
        await FirebaseMessaging
            .instance
            .getToken();

    if (token == null) return;

    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .update({
      'fcmToken': token,
    });
  }
}