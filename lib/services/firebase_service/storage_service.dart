final uploader =
    UploadService();

final imageUrl =
    await uploader.uploadImage(
  image!,
  'cover.jpg',
);

final songUrl =
    await uploader.uploadSong(
  song!,
  'music.mp3',
);
await ArtistService()
    .deleteSong(
  song.id,
);