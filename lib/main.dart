import 'package:provider/provider.dart';
import 'services/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDownloader.initialize(
    debug: true,
  );

  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions
            .currentPlatform,
  );

  runApp(const AudioPlusApp());
}

  runApp(
  ChangeNotifierProvider(
    create: (_) => AuthProvider(),
    child: const AudioPlusApp(),

    runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) =>
            AuthProvider(),
      ),
      ChangeNotifierProvider(
        create: (_) =>
            PlayerProvider(),
      ),
      ChangeNotifierProvider(
  create: (_) =>
      SearchProvider(),
),
ChangeNotifierProvider(
  create: (_) =>
      PlaylistProvider(),
),
ChangeNotifierProvider(
  create: (_) =>
      FavoriteProvider(),
),
ChangeNotifierProvider(
  create: (_) =>
      DownloadProvider(),
),
    ],
    child: const AudioPlusApp(),
  ),
);
  ),
);

if (!user.isPremium) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) =>
          const SubscriptionScreen(),
    ),
  );
}
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized();

  await MobileAds.instance
      .initialize();

  runApp(
    const AudioPlusApp(),
  );
}
void main() async {
  WidgetsFlutterBinding
      .ensureInitialized();

  await MobileAds.instance
      .initialize();

  runApp(
    const AudioPlusApp(),
  );
}
if (!user.isPremium)
  AdWidget(
    ad: bannerAd,
  );
  ElevatedButton(
  onPressed: () {
    FlutterEqualizer.open(
      sessionId,
    );
  },
  child:
      const Text(
    "Equalizer",
  ),
)
MaterialApp(
  debugShowCheckedModeBanner:
      false,
  theme:
      AppTheme.light,
  darkTheme:
      AppTheme.dark,
  themeMode:
      ThemeMode.system,
);
final picked =
    await ImagePicker()
        .pickImage(
  source:
      ImageSource.gallery,
);

if (picked != null) {
  File image =
      File(picked.path);
}
final imageUrl =
    await UploadService()
        .uploadImage(
  image,
  'profile.jpg',
);
await ProfileService()
    .updateProfile(
  uid: user.uid,
  name: name,
  bio: bio,
  image: imageUrl,
);
await FirebaseFirestore
    .instance
    .collection('users')
    .doc(targetUserId)
    .update({
  'followers':
      FieldValue.increment(1),
});
await FirebaseFirestore
    .instance
    .collection('users')
    .doc(targetUserId)
    .update({
  'followers':
      FieldValue.increment(-1),
});
match /users/{userId} {
  allow read: if true;

  allow write:
  if request.auth != null;
}
match /notifications/{notificationId} {
  allow read, write:
  if request.auth != null;
}
}