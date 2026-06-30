import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

class DownloadService {
  get FlutterDownloader => null;

  Future<String?> downloadSong(
      String url,
      String fileName) async {
    final directory =
        await getApplicationDocumentsDirectory();

FlutterDownloader.registerCallback(
  downloadCallback,
);

@pragma('vm:entry-point')
void downloadCallback(
  String id,
  DownloadTaskStatus status,
  int progress,
) {
  print(progress);
}

    return await FlutterDownloader.enqueue(
      url: url,
      savedDir: directory.path,
      fileName: fileName,
      showNotification: true,
      openFileFromNotification: true,
    );
  }
*-
  Future<void> deleteDownload(
      String taskId) async {
    await FlutterDownloader.remove(
      taskId: taskId,
      shouldDeleteContent: true,
    );
  }
}

class DownloadTaskStatus {
}