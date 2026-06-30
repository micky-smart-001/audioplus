class UserModel {
  final String uid;
  final String name;
  final String email;
  final String bio;
  final String profileImage;
  final int followers;
  final int following;
  final int uploadsCount;
  final int playlistsCount;
  final int favoritesCount;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.bio,
    required this.profileImage,
    required this.followers,
    required this.following,
    required this.uploadsCount,
    required this.playlistsCount,
    required this.favoritesCount,
  });

  factory UserModel.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      bio: map['bio'] ?? '',
      profileImage:
          map['profileImage'] ?? '',
      followers:
          map['followers'] ?? 0,
      following:
          map['following'] ?? 0,
      uploadsCount:
          map['uploadsCount'] ?? 0,
      playlistsCount:
          map['playlistsCount'] ?? 0,
      favoritesCount:
          map['favoritesCount'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'bio': bio,
      'profileImage':
          profileImage,
      'followers': followers,
      'following': following,
      'uploadsCount':
          uploadsCount,
      'playlistsCount':
          playlistsCount,
      'favoritesCount':
          favoritesCount,
    };
  }

  final bool isPremium;
final String subscriptionPlan;

UserModel({
  required this.isPremium,
  required this.subscriptionPlan,
});
}