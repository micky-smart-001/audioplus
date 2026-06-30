import 'package:cloud_firestore/cloud_firestore.dart';

class AdminService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<bool> isAdmin(
      String uid) async {
    final doc = await _db
        .collection('admins')
        .doc(uid)
        .get();

    return doc.exists;
  }

  Stream<QuerySnapshot>
      getUsers() {
    return _db
        .collection('users')
        .snapshots();
  }

  Stream<QuerySnapshot>
      getSongs() {
    return _db
        .collection('songs')
        .snapshots();
  }

  Future<void> deleteSong(
      String songId) async {
    await _db
        .collection('songs')
        .doc(songId)
        .delete();
  }

  Future<void> deleteUser(
      String uid) async {
    await _db
        .collection('users')
        .doc(uid)
        .delete();
  }
}