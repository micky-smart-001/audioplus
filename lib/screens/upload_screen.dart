import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadScreen
    extends StatefulWidget {
  const UploadScreen({
    super.key,
  });

  @override
  State<UploadScreen>
      createState() =>
          _UploadScreenState();
}

class _UploadScreenState
    extends State<UploadScreen> {

  File? image;
  File? song;

  final titleController =
      TextEditingController();

  final artistController =
      TextEditingController();

  final genreController =
      TextEditingController();

  Future<void> pickImage()
  async {
    final picked =
        await ImagePicker()
            .pickImage(
      source:
          ImageSource.gallery,
    );

    if (picked != null) {
      setState(() {
        image =
            File(picked.path);
      });
    }
  }

  Future<void> pickSong()
  async {
    final result =
        await FilePicker
            .platform
            .pickFiles(
      type:
          FileType.audio,
    );

    if (result != null) {
      setState(() {
        song = File(
          result
              .files
              .single
              .path!,
        );
      });
    }
  }

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Upload Song',
        ),
      ),
      body:
          SingleChildScrollView(
        padding:
            const EdgeInsets
                .all(20),
        child: Column(
          children: [

            TextField(
              controller:
                  titleController,
              decoration:
                  const InputDecoration(
                labelText:
                    'Song Title',
              ),
            ),

            const SizedBox(
                height: 15),

            TextField(
              controller:
                  artistController,
              decoration:
                  const InputDecoration(
                labelText:
                    'Artist',
              ),
            ),

            const SizedBox(
                height: 15),

            TextField(
              controller:
                  genreController,
              decoration:
                  const InputDecoration(
                labelText:
                    'Genre',
              ),
            ),

            const SizedBox(
                height: 20),

            ElevatedButton(
              onPressed:
                  pickImage,
              child:
                  const Text(
                'Select Cover',
              ),
            ),

            ElevatedButton(
              onPressed:
                  pickSong,
              child:
                  const Text(
                'Select MP3',
              ),
            ),

            const SizedBox(
                height: 30),

            ElevatedButton(
              onPressed: () {
                // Upload Song
              },
              child:
                  const Text(
                'Upload',
              ),
            ),
          ],
        ),
      ),
    );
  }
}