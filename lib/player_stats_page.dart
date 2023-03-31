import 'dart:html';
import 'api.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PlayerStatsPage extends StatefulWidget {
  const PlayerStatsPage({Key? key}) : super(key: key);

  @override
  _PlayerStatsPageState createState() => _PlayerStatsPageState();
}

var playerStatsUrl =
    'https://api.worldofwarships.com/wows/account/info/?application_id=65058cfc61fd13d0b31c9575c30e97b2&account_id=1015198915';

class _PlayerStatsPageState extends State<PlayerStatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [],
        )
      ],
    );
  }
}
