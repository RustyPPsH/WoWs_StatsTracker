import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:helloworld/main.dart';
import 'api.dart';

class SearchPlayer extends StatefulWidget {
  const SearchPlayer({Key? key}) : super(key: key);

  @override
  _SearchPlayerState createState() => _SearchPlayerState();
}

class _SearchPlayerState extends State<SearchPlayer> {
  List<PlayerList> players = List<PlayerList>.empty();
  String searchNickname = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        backgroundColor: Colors.teal[100],
        title:
            const Text('Search for player name', textAlign: TextAlign.center),
        onSearch: (value) => setState(() => searchNickname = value),
      ),
      body: const Center(
        child: Text(
          'Start by searching for a player:',
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
