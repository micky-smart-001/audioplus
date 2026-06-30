import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin
      _notifications =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const AndroidInitializationSettings
        androidSettings =
        AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const InitializationSettings
        settings =
        InitializationSettings(
      android: androidSettings,
    );

    await _notifications.initialize(
      settings,
    );

    await FirebaseMessaging.instance
        .requestPermission();

    FirebaseMessaging.onMessage.listen(
      _showNotification,
    );
  }

  static Future<void> _showNotification(
      RemoteMessage message) async {
    const AndroidNotificationDetails
        details =
        AndroidNotificationDetails(
      'audio_plus_channel',
      'Audio Plus Notifications',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails
        notificationDetails =
        NotificationDetails(
      android: details,
    );

    await _notifications.show(
      0,
      message.notification?.title,
      message.notification?.body,
      notificationDetails,
    );
  }
}