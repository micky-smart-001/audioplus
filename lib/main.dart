import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'firebase_options.dart';
import 'app.dart';
import 'services/auth_provider.dart';
import 'providers/player_provider.dart';
import 'providers/search_provider.dart';
import 'providers/playlist_provider.dart';
import 'providers/favorite_provider.dart';
import 'providers/download_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize Flutter Downloader
  await FlutterDownloader.initialize(debug: true);

  // Initialize Google Mobile Ads
  await MobileAds.instance.initialize();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => PlayerProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => PlaylistProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => DownloadProvider()),
      ],
      child: const AudioPlusApp(),
    ),
  );
}
