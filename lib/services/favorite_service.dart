import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<void> addFavorite(
      String userId,
      String songId) async {
    await _db
        .collection('users')
        .doc(userId)
        .update({
      'favorites':
          FieldValue.arrayUnion(
        [songId],
      ),
    });
  }

  Future<void> removeFavorite(
      String userId,
      String songId) async {
    await _db
        .collection('users')
        .doc(userId)
        .update({
      'favorites':
          FieldValue.arrayRemove(
        [songId],
      ),
    });
  }

  Stream<List<String>>
      getFavorites(
    String userId,
  ) {
    return _db
        .collection('users')
        .doc(userId)
        .snapshots()
        .map((doc) {
      if (!doc.exists) {
        return [];
      }

      final data = doc.data();

      return List<String>.from(
        data?['favorites'] ?? [],
      );
    });
  }
}