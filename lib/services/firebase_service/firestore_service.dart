final songModel =
    SongModel(
  id: songId,
  title:
      titleController.text,
  artist:
      artistController.text,
  genre:
      genreController.text,
  imageUrl: imageUrl,
  songUrl: songUrl,
  uploadedBy:
      currentUser.uid,
);

await SongService()
    .addSong(songModel);