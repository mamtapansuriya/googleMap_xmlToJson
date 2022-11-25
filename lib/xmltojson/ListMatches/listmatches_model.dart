class ListMatchesModel {
  Live? live;

  ListMatchesModel({this.live});

  // ListMatchesModel.fromJson(Map<String, dynamic> json) {
  //   live = json['live'] != null ? new Live.fromJson(json['live']) : null;
  // }
  factory ListMatchesModel.fromJson(Map<String, dynamic> json) =>
      ListMatchesModel(
        live: Live.fromJson(json["live"]),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.live != null) {
      data['live'] = this.live!.toJson();
    }
    return data;
  }
}

class Live {
  Exmatches? exmatches;

  Live({this.exmatches});

  // Live.fromJson(Map<String, dynamic> json) {
  //   exmatches = json['exmatches'] != null
  //       ? new Exmatches.fromJson(json['exmatches'])
  //       : null;
  // }
  factory Live.fromJson(Map<String, dynamic> json) => Live(
        exmatches: Exmatches.fromJson(json["exmatches"]),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.exmatches != null) {
      data['exmatches'] = this.exmatches!.toJson();
    }
    return data;
  }
}

class Exmatches {
  String? msgId;
  String? msg3;
  String? ads;
  List<League>? league;

  Exmatches({this.msgId, this.msg3, this.ads, this.league});

  // Exmatches.fromJson(Map<String, dynamic> json) {
  //   msgId = json['@msgId'];
  //   msg3 = json['@msg3'];
  //   ads = json['@ads'];
  //   if (json['league'] != null) {
  //     league = <League>[];
  //     json['league'].forEach((v) {
  //       league?.add(League.fromJson(v));
  //     });
  //   }
  // }
  factory Exmatches.fromJson(Map<String, dynamic> json) => Exmatches(
        msgId: json["@msgId"],
        msg3: json["@msg3"],
        ads: json["@ads"],
        league:
            List<League>.from(json["league"].map((x) => League.fromJson(x))),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@msgId'] = this.msgId;
    data['@msg3'] = this.msg3;
    data['@ads'] = this.ads;
    if (this.league != null) {
      data['league'] = this.league!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class League {
  String? id;
  String? name;
  String? sl;
  String? lr;
  String? ir;
  String? ccode;
  String? pl;
  List<Match>? match;

  League(
      {this.id,
      this.name,
      this.sl,
      this.lr,
      this.ir,
      this.ccode,
      this.pl,
      this.match});

  // League.fromJson(Map<String, dynamic> json) {
  //   id = json['@id'];
  //   name = json['@name'];
  //   sl = json['@sl'];
  //   lr = json['@lr'];
  //   ir = json['@ir'];
  //   ccode = json['@ccode'];
  //   pl = json['@pl'];
  //
  //   if (json['match'] != null) {
  //     match = <Match>[];
  //     json['match'].forEach((v) {
  //       //print("match foreach====${v}");
  //       match?.add(Match.fromJson(v));
  //     });
  //   }
  // }
  factory League.fromJson(Map<String, dynamic> json) => League(
        id: json["@id"],
        name: json["@name"],
        sl: json["@sl"],
        lr: json["@lr"],
        ir: json["@ir"],
        ccode: json["@ccode"],
        pl: json["@pl"] == null ? null : json["@pl"],
        match: json["match"],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@id'] = this.id;
    data['@name'] = this.name;
    data['@sl'] = this.sl;
    data['@lr'] = this.lr;
    data['@ir'] = this.ir;
    data['@ccode'] = this.ccode;
    data['@pl'] = this.pl;
    if (this.match != null) {
      data['match'] = this.match!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Match {
  String? id;
  String? hTeam;
  String? aTeam;
  String? hScore;
  String? aScore;
  String? hId;
  String? aId;
  String? stage;
  String? time;
  String? status;
  String? med;
  String? w;
  String? sId;
  String? gs;
  String? shs;
  String? extid;
  String? fehs;
  String? sehs;
  String? pah;
  String? paa;

  Match(
      {this.id,
      this.hTeam,
      this.aTeam,
      this.hScore,
      this.aScore,
      this.hId,
      this.aId,
      this.stage,
      this.time,
      this.status,
      this.med,
      this.w,
      this.sId,
      this.gs,
      this.shs,
      this.extid,
      this.fehs,
      this.sehs,
      this.pah,
      this.paa});

  // Match.fromJson(Map<String, dynamic> json) {
  //   id = json['@id'];
  //   hTeam = json['@hTeam'];
  //   aTeam = json['@aTeam'];
  //   hScore = json['@hScore'];
  //   aScore = json['@aScore'];
  //   hId = json['@hId'];
  //   aId = json['@aId'];
  //   stage = json['@stage'];
  //   time = json['@time'];
  //   status = json['@Status'];
  //   med = json['@med'];
  //   w = json['@w'];
  //   sId = json['@sId'];
  //   gs = json['@gs'];
  //   shs = json['@shs'];
  //   extid = json['@extid'];
  //   fehs = json['@fehs'];
  //   sehs = json['@sehs'];
  //   pah = json['@pah'];
  //   paa = json['@paa'];
  // }
  factory Match.fromJson(Map<String, dynamic> json) => Match(
        id: json['@id'],
        hTeam: json['@hTeam'],
        aTeam: json['@aTeam'],
        hScore: json['@hScore'],
        aScore: json['@aScore'],
        hId: json['@hId'],
        aId: json['@aId'],
        stage: json['@stage'],
        time: json['@time'],
        status: json['@Status'],
        med: json['@med'],
        w: json['@w'],
        sId: json['@sId'],
        gs: json['@gs'],
        shs: json['@shs'],
        extid: json['@extid'],
        fehs: json['@fehs'],
        sehs: json['@sehs'],
        pah: json['@pah'],
        paa: json['@paa'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@id'] = this.id;
    data['@hTeam'] = this.hTeam;
    data['@aTeam'] = this.aTeam;
    data['@hScore'] = this.hScore;
    data['@aScore'] = this.aScore;
    data['@hId'] = this.hId;
    data['@aId'] = this.aId;
    data['@stage'] = this.stage;
    data['@time'] = this.time;
    data['@Status'] = this.status;
    data['@med'] = this.med;
    data['@w'] = this.w;
    data['@sId'] = this.sId;
    data['@gs'] = this.gs;
    data['@shs'] = this.shs;
    data['@extid'] = this.extid;
    data['@fehs'] = this.fehs;
    data['@sehs'] = this.sehs;
    data['@pah'] = this.pah;
    data['@paa'] = this.paa;
    return data;
  }
}
