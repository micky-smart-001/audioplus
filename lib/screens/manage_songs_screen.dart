import 'package:flutter/material.dart';

class ManageSongsScreen
    extends StatelessWidget {
  const ManageSongsScreen({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text(
          'Manage Songs',
        ),
      ),
      body: const Center(
        child:
            Text('Songs List'),
      ),
    );
  }
}