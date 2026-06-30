import 'dart:io';
import 'package:flutter/material.dart';

class ProfileScreen
    extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(
        title:
            const Text(
          'Profile',
        ),
      ),
      body:
          SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(
                height: 30),

            const CircleAvatar(
              radius: 60,
              child:
                  Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(
                height: 20),

            const Text(
              'User Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const Text(
              'Music Lover',
            ),

            const SizedBox(
                height: 30),

            Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .spaceEvenly,
              children: const [

                Column(
                  children: [
                    Text(
                      '0',
                    ),
                    Text(
                      'Uploads',
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      '0',
                    ),
                    Text(
                      'Playlists',
                    ),
                  ],
                ),

                Column(
                  children: [
                    Text(
                      '0',
                    ),
                    Text(
                      'Favorites',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}