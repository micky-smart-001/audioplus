class PlaylistModel {
  final String id;
  final String name;
  final String userId;
  final String imageUrl;
  final List<String> songs;

  PlaylistModel({
    required this.id,
    required this.name,
    required this.userId,
    required this.imageUrl,
    required this.songs,
  });

  factory PlaylistModel.fromMap(
      Map<String, dynamic> map,
      String id) {
    return PlaylistModel(
      id: id,
      name: map['name'],
      userId: map['userId'],
      imageUrl: map['imageUrl'],
      songs:
          List<String>.from(
        map['songs'] ?? [],
      ),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'userId': userId,
      'imageUrl': imageUrl,
      'songs': songs,
    };
  }
}