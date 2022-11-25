// To parse this JSON data, do
//
//     final fixtureModel = fixtureModelFromJson(jsonString);

import 'dart:convert';

FixtureModel fixtureModelFromJson(String str) =>
    FixtureModel.fromJson(json.decode(str));

String fixtureModelToJson(FixtureModel data) => json.encode(data.toJson());

class FixtureModel {
  FixtureModel({
    this.root,
  });

  Root? root;

  factory FixtureModel.fromJson(Map<String, dynamic> json) => FixtureModel(
        root: Root.fromJson(json["root"]),
      );

  Map<String, dynamic> toJson() => {
        "root": root?.toJson(),
      };
}

class Root {
  Root({
    this.lu,
    this.lh,
    this.rs,
    this.ms,
    this.tl,
    this.ct,
    this.ts,
    this.ccode,
    this.tbd,
    // this.dataListOver,
  });

  Lh? lu;
  Lh? lh;
  Lh? rs;
  Ccode? ms;
  Lh? tl;
  Ccode? ct;
  Ccode? ts;
  Ccode? ccode;
  Lh? tbd;

  // DataListOver? dataListOver;

  factory Root.fromJson(Map<String, dynamic> json) => Root(
        lu: Lh.fromJson(json["LU"]),
        lh: Lh.fromJson(json["LH"]),
        rs: Lh.fromJson(json["RS"]),
        ms: Ccode.fromJson(json["MS"]),
        tl: Lh.fromJson(json["TL"]),
        ct: Ccode.fromJson(json["CT"]),
        ts: Ccode.fromJson(json["TS"]),
        ccode: Ccode.fromJson(json["CCODE"]),
        tbd: Lh.fromJson(json["TBD"]),
        // dataListOver:
        //     json['data'] != null ? DataListOver.fromJson(json["TL"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "LU": lu?.toJson(),
        "LH": lh?.toJson(),
        "RS": rs?.toJson(),
        "MS": ms?.toJson(),
        "TL": tl?.toJson(),
        "CT": ct?.toJson(),
        "TS": ts?.toJson(),
        "CCODE": ccode?.toJson(),
        "TBD": tbd?.toJson(),
      };
}

class Ccode {
  Ccode();

  factory Ccode.fromJson(Map<String, dynamic> json) => Ccode();

  Map<String, dynamic> toJson() => {};
}

class Lh {
  Lh({
    this.empty,
  });

  String? empty;

  factory Lh.fromJson(Map<String, dynamic> json) => Lh(
        empty: json["\u0024"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024": empty,
      };
}

class TeamsModel {
  TeamsModel({
    this.teamName,
    this.teamId,
    this.teamShortName,
  });

  String? teamName;
  String? teamId;
  String? teamShortName;

  // DataListOver? dataListOver;

  factory TeamsModel.fromJson(String json) {
    String? teamId = json.split(":")[0];
    String? teamName = json.split(":")[1];
    String? teamShortName = json.split(":")[2];

    return TeamsModel(
      teamId: teamId,
      teamName: teamName,
      teamShortName: teamShortName,
    );
  }

  Map<String, dynamic> toJson() => {
        "teamId": teamId,
        "teamName": teamName,
        "teamShortName": teamShortName,
      };
}

class CombineTeamsModel {
  CombineTeamsModel({
    this.team1,
    this.team2,
  });

  TeamsModel? team1;
  TeamsModel? team2;

  // DataListOver? dataListOver;

  factory CombineTeamsModel.fromJson(json, json2) {
    return CombineTeamsModel(
      team1: TeamsModel.fromJson(jsonEncode(json)),
      team2: TeamsModel.fromJson(jsonEncode(json2)),
    );
  }

  Map<String, dynamic> toJson() => {
        "team1": team1,
        "team2": team2,
      };
}
