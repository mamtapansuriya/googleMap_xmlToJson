import 'package:flutter/material.dart';
import 'package:googlemap_demo/googlemap/googlemap_screen.dart';
import 'package:googlemap_demo/jsonapi/League/league_screen.dart';
import 'package:googlemap_demo/xmltojson/Fixture/fixture_screen.dart';
import 'package:googlemap_demo/xmltojson/ListMatches/listmatches_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleMapScreen()));
                },
                child: const Text("Map Demo")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FixtureScreen()));
                },
                child: const Text("Fixture Api Data")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LeagueScreen()));
                },
                child: const Text("League Api Data")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListMatchesScreen()));
                },
                child: const Text("ListMatches Data")),
          ],
        ),
      ),
    ));
  }
}
