import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

class DownloadService {
  Future<String?> downloadSong(
      String url,
      String fileName) async {
    final directory =
        await getApplicationDocumentsDirectory();

    await FlutterDownloader.registerCallback(
      downloadCallback,
    );

    return await FlutterDownloader.enqueue(
      url: url,
      savedDir: directory.path,
      fileName: fileName,
      showNotification: true,
      openFileFromNotification: true,
    );
  }

  Future<void> deleteDownload(
      String taskId) async {
    await FlutterDownloader.remove(
      taskId: taskId,
      shouldDeleteContent: true,
    );
  }
}

@pragma('vm:entry-point')
void downloadCallback(
  String id,
  DownloadTaskStatus status,
  int progress,
) {
  print('Download Progress: $progress%');
}

class DownloadTaskStatus {
  static const int undefined = 0;
  static const int enqueued = 1;
  static const int running = 2;
  static const int complete = 3;
  static const int failed = 4;
  static const int cancelled = 5;
  static const int paused = 6;
}
