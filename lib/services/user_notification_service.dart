import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/notification_model.dart';

class UserNotificationService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<void> addNotification(
      NotificationModel notification) async {
    await _db
        .collection('notifications')
        .doc(notification.id)
        .set(
          notification.toMap(),
        );
  }

  Stream<List<NotificationModel>>
      getNotifications(
    String userId,
  ) {
    return _db
        .collection('notifications')
        .where(
          'userId',
          isEqualTo: userId,
        )
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map(
        (doc) {
          return NotificationModel
              .fromMap(
            doc.data(),
            doc.id,
          );
        },
      ).toList();
    });
  }
}