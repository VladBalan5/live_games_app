class TournamentsGroupModel {
  int id;
  String name;
  int priority;
  int url;
  Meta meta;
  Tournaments tournaments;

  TournamentsGroupModel({
    required this.id,
    required this.name,
    required this.priority,
    required this.url,
    required this.meta,
    required this.tournaments,
  });

  factory TournamentsGroupModel.fromJson(Map<String, dynamic> jsonData) {
    return TournamentsGroupModel(
      id: jsonData['id'],
      name: jsonData['name'],
      priority: jsonData['priority'],
      url: jsonData['url'],
      meta: Meta.fromJson(jsonData['meta']),
      tournaments: Tournaments.fromJson(jsonData['tournaments']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      'name': name,
      'priority': priority,
      'url': url,
      'meta': meta.toJson(),
      'tournaments': tournaments.toJson(),
    };
  }
}

class Tournaments {
  int id;
  String name;
  int start_date;
  int end_date;
  bool enrolled;
  bool activated;
  String mission_group_id;
  Meta meta;

  Tournaments({
    required this.id,
    required this.name,
    required this.start_date,
    required this.end_date,
    required this.enrolled,
    required this.activated,
    required this.mission_group_id,
    required this.meta,
  });

  factory Tournaments.fromJson(Map<String, dynamic> jsonData) {
    return Tournaments(
      id: jsonData['id'],
      name: jsonData['name'],
      start_date: jsonData['start_date'],
      end_date: jsonData['end_date'],
      enrolled: jsonData['enrolled'],
      activated: jsonData['activated'],
      mission_group_id: jsonData['mission_group_id'],
      meta: Meta.fromJson(jsonData['meta']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      'name': name,
      'start_date': start_date,
      'end_date': end_date,
      'enrolled': enrolled,
      'activated': activated,
      'mission_group_id': mission_group_id,
      'meta': meta.toJson(),
    };
  }
}

class Meta {
  Ui ui;
  int levels;

  Meta({
    required this.ui,
    required this.levels,
  });

  factory Meta.fromJson(Map<String, dynamic> jsonData) {
    return Meta(
      ui: Ui.fromJson(jsonData['ui']),
      levels: jsonData['levels'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "ui": ui.toJson(),
      "levels": levels,
    };
  }
}

class Ui {
  TranslatedString prize_1;
  TranslatedString prize_2;
  TranslatedString? rules;
  ImageResource corner_image;
  ImageResource current_place_image;
  ImageResource games_image;
  ImageResource objectives_image;
  ImageResource scores_image;
  ImageResource top_image;

  Ui({
    required this.prize_1,
    required this.prize_2,
    required this.rules,
    required this.corner_image,
    required this.current_place_image,
    required this.games_image,
    required this.objectives_image,
    required this.scores_image,
    required this.top_image,
  });

  factory Ui.fromJson(Map<String, dynamic> jsonData) {
    return Ui(
      prize_1: TranslatedString.fromJson(jsonData['prize_1']),
      prize_2: TranslatedString.fromJson(jsonData['prize_2']),
      rules: TranslatedString.fromJson(jsonData['rules']),
      corner_image: ImageResource.fromJson(jsonData['corner_image']),
      current_place_image:
          ImageResource.fromJson(jsonData['current_place_image']),
      games_image: ImageResource.fromJson(jsonData['games_image']),
      objectives_image: ImageResource.fromJson(jsonData['objectives_image']),
      scores_image: ImageResource.fromJson(jsonData['scores_image']),
      top_image: ImageResource.fromJson(jsonData['top_image']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "prize_1": prize_1,
      'prize_2': prize_2,
      'rules': rules,
      'corner_image': corner_image,
      'current_place_image': current_place_image,
      'games_image': games_image,
      'objectives_image': objectives_image,
      'scores_image': scores_image,
      'top_image': top_image,
    };
  }
}

class TranslatedString {
  TextModel textJson;

  TranslatedString({
    required this.textJson,
  });

  factory TranslatedString.fromJson(Map<String, dynamic> jsonData) {
    return TranslatedString(
      textJson: TextModel.fromJson(jsonData['text']),
    );
  }

  Map<String, dynamic> toJson() {
    return {"textJson": textJson.toJson()};
  }
}

class TextModel {
  String ro;
  String? en;

  TextModel({
    required this.ro,
    required this.en,
  });

  factory TextModel.fromJson(Map<String, dynamic> jsonData) {
    return TextModel(
      ro: jsonData['ro'],
      en: jsonData['en'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "ro": ro,
      'en': en,
    };
  }
}

class ImageResource {
  String url;

  ImageResource({
    required this.url,
  });

  factory ImageResource.fromJson(Map<String, dynamic> jsonData) {
    return ImageResource(
      url: jsonData['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "url": url,
    };
  }
}
