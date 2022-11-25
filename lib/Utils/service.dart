import 'dart:developer';

import 'package:googlemap_demo/Utils/network_helper.dart';
import 'package:googlemap_demo/jsonapi/League/league_model.dart';

class UserService {
  static final NetworkAPICall _networkAPICall = NetworkAPICall();

  static Future<LeagueModel> userGetData() async {
    try {
      log("============called userGetData");
      final response = await _networkAPICall
          .get("https://data.fotmob.com/webcl/leagues/league77.json.gz");
      //  body: jsonEncode(body), header: {"Content-Type": "application/json"});

      return LeagueModel.fromJson(response);
    } catch (exception) {
      log("error in userpostdata========$exception");
      rethrow;
    }
  }
}
