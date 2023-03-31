import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'search_player.dart';

//Initial Search parameters: Will return "nickname" as String, then "account_id" as int
//Will only scan for NA servers for now
//const applicationId = '65058cfc61fd13d0b31c9575c30e97b2';

//class API {
//  static Future getSearchList(search) async {
//    var playerNickname;
//    var searchRequest =
//        'https://api.worldofwarships.com/wows/account/list/?application_id=65058cfc61fd13d0b31c9575c30e97b2&search=' +
//            playerNickname +
//            '&limit=5';
//    return await http.get(Uri.parse(searchRequest));
// }
//}
const baseUrl =
    'https://api.worldofwarships.com/wows/account/list/?application_id=65058cfc61fd13d0b31c9575c30e97b2&search=';

class API {
  static Future getPlayerList(search) async {
    var url = baseUrl + search + '&limit=5';
    return await http.get(Uri.parse(url));
  }
}

class Player {
  String playerName;
  int playerId;

  Player(this.playerId, this.playerName);

  Player.fromJson(Map json)
      : playerName = json['data']['nickname'],
        playerId = json['data']['account_id'];
}
