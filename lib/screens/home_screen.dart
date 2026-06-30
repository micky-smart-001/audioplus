import 'package:flutter/material.dart';
import 'player_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List songs = [
    {
      "title": "My Song",
      "artist": "John Doe",
      "image":
          "https://picsum.photos/300",
    },
    {
      "title": "Beautiful Day",
      "artist": "David",
      "image":
          "https://picsum.photos/301",
    }
  ];
IconButton(
  icon:
      const Icon(
    Icons.download,
  ),
  onPressed: () async {
    await DownloadService()
        .downloadSong(
      song.songUrl,
      '${song.title}.mp3',
    );
  },
)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Plus"),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(songs[index]["image"]),
            ),
            title: Text(songs[index]["title"]),
            subtitle: Text(songs[index]["artist"]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PlayerScreen(
                    title: songs[index]["title"],
                  ),
                ),
              );
            },
          );
        },
      ),
bottomNavigationBar: BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.library_music),
      label: 'Library',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ],
)
    );
  }
}