import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

class AudioPlusApp extends StatelessWidget {
  const AudioPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Plus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}