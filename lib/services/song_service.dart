import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/song_model.dart';

class SongService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<void> addSong(
      SongModel song) async {
    await _db
        .collection('songs')
        .doc(song.id)
        .set(song.toMap());
  }

  Stream<List<SongModel>> getSongs() {
    return _db
        .collection('songs')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return SongModel.fromMap(
          doc.data(),
          doc.id,
        );
      }).toList();
    });
  }
}