class SongModel {
  final String id;
  final String title;
  final String artist;
  final String imageUrl;
  final String songUrl;
  final String genre;
  final String uploadedBy;

  SongModel({
    required this.id,
    required this.title,
    required this.artist,
    required this.imageUrl,
    required this.songUrl,
    required this.genre,
    required this.uploadedBy,
  });

  factory SongModel.fromMap(
      Map<String, dynamic> map,
      String id) {
    return SongModel(
      id: id,
      title: map['title'],
      artist: map['artist'],
      imageUrl: map['imageUrl'],
      songUrl: map['songUrl'],
      genre: map['genre'],
      uploadedBy: map['uploadedBy'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'artist': artist,
      'imageUrl': imageUrl,
      'songUrl': songUrl,
      'genre': genre,
      'uploadedBy': uploadedBy,
    };
  }
}