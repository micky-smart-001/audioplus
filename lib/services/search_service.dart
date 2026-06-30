import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/song_model.dart';

class SearchService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<List<SongModel>> searchSongs(
      String query) async {
    query = query.toLowerCase();

    final snapshot =
        await _db
            .collection('songs')
            .get();

    return snapshot.docs
        .map(
          (doc) =>
              SongModel.fromMap(
            doc.data(),
            doc.id,
          ),
        )
        .where(
          (song) =>
              song.title
                  .toLowerCase()
                  .contains(query) ||
              song.artist
                  .toLowerCase()
                  .contains(query),
        )
        .toList();
  }
}