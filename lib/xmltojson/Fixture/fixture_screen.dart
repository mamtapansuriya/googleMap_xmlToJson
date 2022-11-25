import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:googlemap_demo/Utils/utils.dart';
import 'package:googlemap_demo/xmltojson/Fixture/Fixture_model.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class FixtureScreen extends StatefulWidget {
  FixtureScreen({Key? key}) : super(key: key);

  @override
  State<FixtureScreen> createState() => _FixtureScreenState();
}

class _FixtureScreenState extends State<FixtureScreen> {
  final myTransformer = Xml2Json();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    try {
                      const String fullURL =
                          "https://data.fotmob.com/league_data.77.fot.gz";
                      final response = await http.get(Uri.parse(fullURL));

                      print("status code===${response.statusCode}");

                      String xmlFormat =
                          Utils.instance.xmlFormatString(response.body);
                      myTransformer.parse(xmlFormat);

                      var json = myTransformer.toBadgerfish();
                      FixtureModel fixtureModel =
                          FixtureModel.fromJson(jsonDecode(json));
                      List<String>? abc =
                          fixtureModel.root?.tl?.empty?.split('|');
                      List<TeamsModel> teams = [];

                      abc?.forEach((element) {
                        if (element.isNotEmpty) {
                          teams.add(TeamsModel.fromJson(element));
                        }
                      });
                      log('abc data===${teams.length}----');
                    } catch (e, st) {
                      print('error in conver data===$e--------$st');
                    }
                  },
                  child: Text("Convert")),
            ),
          ],
        ),
      ),
    ));
  }
}
