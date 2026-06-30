import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Stream<DocumentSnapshot>
      getProfile(
    String uid,
  ) {
    return _db
        .collection('users')
        .doc(uid)
        .snapshots();
  }

  Future<void> updateProfile({
    required String uid,
    required String name,
    required String bio,
    required String image,
  }) async {
    await _db
        .collection('users')
        .doc(uid)
        .update({
      'name': name,
      'bio': bio,
      'profileImage': image,
    });
  }
}