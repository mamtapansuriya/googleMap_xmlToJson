import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

import 'listmatches_model.dart';

class ListMatchesScreen extends StatelessWidget {
  ListMatchesScreen({Key? key}) : super(key: key);
  final myTransformer = Xml2Json();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("List Matches Api")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              const String fullURL =
                  "https://api3.fotmob.com/matches?date=20221117&tz=19800000&ongoing=true";
              final response = await http.get(Uri.parse(fullURL));

              print("status code===${response.statusCode}");
              //log("responce body===${response.body}");

              myTransformer.parse(response.body);
              print('XML string');

              var json = myTransformer.toBadgerfish();

              ListMatchesModel listMatchesModel =
                  ListMatchesModel.fromJson(jsonDecode(json));
              log("ListMatchesModel value is---${listMatchesModel.live?.exmatches?.league?.length}");
            } catch (e, st) {
              log("error to get data====${e}     ${st}");
            }
          },
          child: Text("Get data"),
        ),
      ),
    ));
  }
}
