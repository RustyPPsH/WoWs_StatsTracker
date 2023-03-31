import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:helloworld/player_stats_page.dart';
import 'main.dart';
import 'dart:convert';
import 'api.dart';
import 'package:http/http.dart' as http;

class SearchPlayer extends StatefulWidget {
  const SearchPlayer({Key? key}) : super(key: key);

  @override
  _SearchPlayerState createState() => _SearchPlayerState();
}

class _SearchPlayerState extends State<SearchPlayer> {
  List<Player> players = List<Player>.empty();
  String search = ''; // TODO: Make the search bar auto input this

  Future getPlayerList(search) async {
    var url =
        'https://api.worldofwarships.com/wows/account/list/?application_id=65058cfc61fd13d0b31c9575c30e97b2&search=' +
            search +
            '&limit=5';
    return await http.get(Uri.parse(url));
  }

  _SearchPlayerState() {
    API.getPlayerList(search).then(
      (response) {
        setState(
          () {
            Iterable lista = json.decode(response.body);
            players = lista.map((model) => Player.fromJson(model)).toList();
          },
        );
      },
    );
  }

  final List<String> _Suggestions = ['Rafacar', 'nubswon', 'Shadowrigger1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        backgroundColor: Colors.teal[100],
        title:
            const Text('Search for player name', textAlign: TextAlign.center),
        onSearch: (value) => setState(() => search = value),
        debounceDuration: const Duration(milliseconds: 400),
        //asyncSuggestions: (value) async => await _SearchPlayerState(playerName),
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
