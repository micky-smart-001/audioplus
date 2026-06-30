import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/search_provider.dart';

class SearchScreen
    extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() =>
      _SearchScreenState();
}

class _SearchScreenState
    extends State<SearchScreen> {

  final controller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<SearchProvider>(
      context,
    );

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Search'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller:
                  controller,
              decoration:
                  InputDecoration(
                hintText:
                    'Search songs...',
                prefixIcon:
                    const Icon(
                  Icons.search,
                ),
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),
                ),
              ),
              onChanged: (value) {
                provider.search(
                  value,
                );
              },
            ),

            const SizedBox(
              height: 20,
            ),

            Expanded(
              child:
                  provider.loading
                      ? const Center(
                          child:
                              CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount:
                              provider
                                  .results
                                  .length,
                          itemBuilder:
                              (
                            context,
                            index,
                          ) {
                            final song =
                                provider
                                        .results[
                                    index];

                            return ListTile(
                              leading:
                                  CircleAvatar(
                                backgroundImage:
                                    NetworkImage(
                                  song.imageUrl,
                                ),
                              ),
                              title:
                                  Text(
                                song.title,
                              ),
                              subtitle:
                                  Text(
                                song.artist,
                              ),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}