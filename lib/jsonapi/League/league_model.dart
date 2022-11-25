import 'dart:convert';

LeagueModel leagueModelFromJson(String str) =>
    LeagueModel.fromJson(json.decode(str));

String leagueModelToJson(LeagueModel data) => json.encode(data.toJson());

class LeagueModel {
  LeagueModel({
    this.tournamentTemplateId,
    this.name,
    this.gender,
    this.feeds,
    this.countryCode,
    this.hasAssists,
    this.startDate,
    this.endDate,
    this.stagesCount,
    this.knownStagesCount,
    this.hasBronzeFinal,
    this.hasPlayoff,
    this.isCup,
    this.rules,
    this.hasPlayoffExtended,
    this.nationalTeams,
    this.transfersPosition,
    this.shouldOpenInKnockout,
    this.deepStats,
    this.trophies,
    this.seasonStatLinks,
    this.hasTopScorer,
    this.bracketInfo,
    this.seasons,
  });

  int? tournamentTemplateId;
  String? name;
  String? gender;
  List<Feed>? feeds;
  String? countryCode;
  bool? hasAssists;
  String? startDate;
  String? endDate;
  int? stagesCount;
  int? knownStagesCount;
  bool? hasBronzeFinal;
  bool? hasPlayoff;
  bool? isCup;
  int? rules;
  bool? hasPlayoffExtended;
  bool? nationalTeams;
  int? transfersPosition;
  bool? shouldOpenInKnockout;
  bool? deepStats;
  List<Trophy>? trophies;
  List<SeasonStatLink>? seasonStatLinks;
  bool? hasTopScorer;
  BracketInfo? bracketInfo;
  List<Season>? seasons;

  factory LeagueModel.fromJson(Map<String, dynamic> json) => LeagueModel(
        tournamentTemplateId: json["TournamentTemplateId"],
        name: json["Name"],
        gender: json["Gender"],
        feeds: List<Feed>.from(json["Feeds"].map((x) => Feed.fromJson(x))),
        countryCode: json["CountryCode"],
        hasAssists: json["HasAssists"],
        startDate: json["StartDate"],
        endDate: json["EndDate"],
        stagesCount: json["StagesCount"],
        knownStagesCount: json["KnownStagesCount"],
        hasBronzeFinal: json["HasBronzeFinal"],
        hasPlayoff: json["HasPlayoff"],
        isCup: json["IsCup"],
        rules: json["Rules"],
        hasPlayoffExtended: json["HasPlayoffExtended"],
        nationalTeams: json["NationalTeams"],
        transfersPosition: json["TransfersPosition"],
        shouldOpenInKnockout: json["ShouldOpenInKnockout"],
        deepStats: json["DeepStats"],
        trophies:
            List<Trophy>.from(json["Trophies"].map((x) => Trophy.fromJson(x))),
        seasonStatLinks: List<SeasonStatLink>.from(
            json["SeasonStatLinks"].map((x) => SeasonStatLink.fromJson(x))),
        hasTopScorer: json["HasTopScorer"],
        bracketInfo: BracketInfo.fromJson(json["BracketInfo"]),
        seasons:
            List<Season>.from(json["Seasons"].map((x) => Season.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "TournamentTemplateId": tournamentTemplateId,
        "Name": name,
        "Gender": gender,
        "Feeds": List<dynamic>.from(feeds!.map((x) => x.toJson())),
        "CountryCode": countryCode,
        "HasAssists": hasAssists,
        "StartDate": startDate,
        "EndDate": endDate,
        "StagesCount": stagesCount,
        "KnownStagesCount": knownStagesCount,
        "HasBronzeFinal": hasBronzeFinal,
        "HasPlayoff": hasPlayoff,
        "IsCup": isCup,
        "Rules": rules,
        "HasPlayoffExtended": hasPlayoffExtended,
        "NationalTeams": nationalTeams,
        "TransfersPosition": transfersPosition,
        "ShouldOpenInKnockout": shouldOpenInKnockout,
        "DeepStats": deepStats,
        "Trophies": List<dynamic>.from(trophies!.map((x) => x.toJson())),
        "SeasonStatLinks":
            List<dynamic>.from(seasonStatLinks!.map((x) => x.toJson())),
        "HasTopScorer": hasTopScorer,
        "BracketInfo": bracketInfo?.toJson(),
        "Seasons": List<dynamic>.from(seasons!.map((x) => x.toJson())),
      };
}

class BracketInfo {
  BracketInfo({
    this.href,
    this.currentRoundOf,
    this.firstStage,
    this.lastStage,
  });

  String? href;
  int? currentRoundOf;
  String? firstStage;
  String? lastStage;

  factory BracketInfo.fromJson(Map<String, dynamic> json) => BracketInfo(
        href: json["Href"],
        currentRoundOf: json["CurrentRoundOf"],
        firstStage: json["FirstStage"],
        lastStage: json["LastStage"],
      );

  Map<String, dynamic> toJson() => {
        "Href": href,
        "CurrentRoundOf": currentRoundOf,
        "FirstStage": firstStage,
        "LastStage": lastStage,
      };
}

class Feed {
  Feed({
    this.language,
    this.url,
    this.format,
    this.title,
  });

  String? language;
  String? url;
  String? format;
  String? title;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        language: json["Language"],
        url: json["Url"],
        format: json["Format"],
        title: json["Title"],
      );

  Map<String, dynamic> toJson() => {
        "Language": language,
        "Url": url,
        "Format": format,
        "Title": title,
      };
}

class SeasonStatLink {
  SeasonStatLink({
    this.name,
    this.countryCode,
    this.relativePath,
    this.league,
    this.stageId,
    this.templateId,
    this.tournamentId,
    this.totwRoundsLink,
  });

  String? name;
  String? countryCode;
  String? relativePath;
  String? league;
  int? stageId;
  int? templateId;
  int? tournamentId;
  String? totwRoundsLink;

  factory SeasonStatLink.fromJson(Map<String, dynamic> json) => SeasonStatLink(
        name: json["Name"],
        countryCode: json["CountryCode"],
        relativePath: json["RelativePath"],
        league: json["League"],
        stageId: json["StageId"],
        templateId: json["TemplateId"],
        tournamentId: json["TournamentId"],
        totwRoundsLink: json["TotwRoundsLink"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "CountryCode": countryCode,
        "RelativePath": relativePath,
        "League": league,
        "StageId": stageId,
        "TemplateId": templateId,
        "TournamentId": tournamentId,
        "TotwRoundsLink": totwRoundsLink,
      };
}

class Season {
  Season({
    this.links,
    this.name,
    this.start,
    this.end,
  });

  List<Link>? links;
  String? name;
  String? start;
  String? end;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        links: List<Link>.from(json["Links"].map((x) => Link.fromJson(x))),
        name: json["Name"],
        start: json["Start"],
        end: json["End"],
      );

  Map<String, dynamic> toJson() => {
        "Links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "Name": name,
        "Start": start,
        "End": end,
      };
}

class Link {
  Link({
    this.rel,
    this.href,
  });

  String? rel;
  String? href;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        rel: json["Rel"],
        href: json["Href"],
      );

  Map<String, dynamic> toJson() => {
        "Rel": rel,
        "Href": href,
      };
}

class Trophy {
  Trophy({
    this.teamId,
    this.seasonName,
    this.position,
    this.startDate,
    this.endDate,
    this.teamName,
    this.tableLocation,
  });

  int? teamId;
  String? seasonName;
  int? position;
  String? startDate;
  String? endDate;
  String? teamName;
  String? tableLocation;

  factory Trophy.fromJson(Map<String, dynamic> json) => Trophy(
        teamId: json["TeamId"],
        seasonName: json["SeasonName"],
        position: json["Position"],
        startDate: json["StartDate"],
        endDate: json["EndDate"],
        teamName: json["TeamName"],
        tableLocation:
            json["TableLocation"] == null ? null : json["TableLocation"],
      );

  Map<String, dynamic> toJson() => {
        "TeamId": teamId,
        "SeasonName": seasonName,
        "Position": position,
        "StartDate": startDate,
        "EndDate": endDate,
        "TeamName": teamName,
        "TableLocation": tableLocation == null ? null : tableLocation,
      };
}
