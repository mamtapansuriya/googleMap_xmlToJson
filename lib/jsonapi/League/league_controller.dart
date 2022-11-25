import 'dart:developer';

import 'package:get/get.dart';
import 'package:googlemap_demo/Utils/service.dart';
import 'package:googlemap_demo/jsonapi/League/league_model.dart';

class LeagueController extends GetxController {
  LeagueModel? leagueModel;

  Future getData() async {
    try {
      leagueModel = await UserService.userGetData();
      print("news model value is===${leagueModel}");
    } catch (e) {
      log("error in post data======$e");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  // String timeAgo(DateTime date) {
  //   DateTime now = DateTime.now();
  //
  //   String? amPm;
  //   var formatter = DateFormat('dd,MMM hh:mm');
  //   int hours = date.hour;
  //
  //   if (hours > 12) {
  //     amPm = "PM";
  //   } else {
  //     amPm = "AM";
  //   }
  //   String formattedDate = "${formatter.format(date)} $amPm";
  //   return formattedDate;
  // }
}
