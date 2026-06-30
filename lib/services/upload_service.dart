import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class UploadService {
  final FirebaseStorage storage =
      FirebaseStorage.instance;

  Future<String> uploadSong(
      File file,
      String fileName) async {
    final ref =
        storage.ref().child(
              "songs/$fileName",
            );

    await ref.putFile(file);

    return await ref.getDownloadURL();
  }

  Future<String> uploadImage(
      File file,
      String fileName) async {
    final ref =
        storage.ref().child(
              "covers/$fileName",
            );

    await ref.putFile(file);

    return await ref.getDownloadURL();
  }
}