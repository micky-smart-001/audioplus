import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/playlist_model.dart';

class PlaylistService {
  final FirebaseFirestore _db =
      FirebaseFirestore.instance;

  Future<void> createPlaylist(
      PlaylistModel playlist) async {
    await _db
        .collection('playlists')
        .doc(playlist.id)
        .set(
          playlist.toMap(),
        );
  }

  Stream<List<PlaylistModel>>
      getUserPlaylists(
    String userId,
  ) {
    return _db
        .collection('playlists')
        .where(
          'userId',
          isEqualTo: userId,
        )
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs.map(
          (doc) {
            return PlaylistModel
                .fromMap(
              doc.data(),
              doc.id,
            );
          },
        ).toList();
      },
    );
  }

  Future<void> deletePlaylist(
      String playlistId) async {
    await _db
        .collection('playlists')
        .doc(playlistId)
        .delete();
  }

  Future<void> addSong(
    String playlistId,
    String songId,
  ) async {
    await _db
        .collection('playlists')
        .doc(playlistId)
        .update({
      'songs':
          FieldValue.arrayUnion(
        [songId],
      ),
    });
  }

  Future<void> removeSong(
    String playlistId,
    String songId,
  ) async {
    await _db
        .collection('playlists')
        .doc(playlistId)
        .update({
      'songs':
          FieldValue.arrayRemove(
        [songId],
      ),
    });
  }
}