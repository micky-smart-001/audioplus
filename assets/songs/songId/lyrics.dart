class LyricsScreen
    extends StatelessWidget {

  final String lyrics;

  const LyricsScreen({
    super.key,
    required this.lyrics,
  });

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Lyrics',
        ),
      ),
      body:
          SingleChildScrollView(
        padding:
            const EdgeInsets.all(20),
        child: Text(
          lyrics,
          style:
              const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) =>
        LyricsScreen(
      lyrics:
          song.lyrics,
    ),
  ),
);
}