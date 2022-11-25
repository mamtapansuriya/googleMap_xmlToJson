import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googlemap_demo/jsonapi/League/league_controller.dart';

class LeagueScreen extends StatelessWidget {
  LeagueScreen({Key? key}) : super(key: key);
  LeagueController _newsController = Get.put(LeagueController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _newsController.getData();
            },
            child: Text("Get Data")),
      ),
    ));
  }
}
