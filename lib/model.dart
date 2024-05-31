// To parse this JSON data, do
//
//     final character = characterFromJson(jsonString);

import 'dart:convert';

Character characterFromJson(String str) => Character.fromJson(json.decode(str));

String characterToJson(Character data) => json.encode(data.toJson());

class Character {
  List<CharacterElement> characters;
  int currentPage;
  int pageSize;
  int total;

  Character({
    required this.characters,
    required this.currentPage,
    required this.pageSize,
    required this.total,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
    characters: List<CharacterElement>.from(json["characters"].map((x) => CharacterElement.fromJson(x))),
    currentPage: json["currentPage"],
    pageSize: json["pageSize"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "characters": List<dynamic>.from(characters.map((x) => x.toJson())),
    "currentPage": currentPage,
    "pageSize": pageSize,
    "total": total,
  };
}

class CharacterElement {
  int id;
  String name;
  List<String> images;
  Debut debut;
  Family? family;
  List<String> jutsu;
  List<String>? natureType;
  Personal personal;
  Rank? rank;
  List<String>? tools;
  VoiceActors voiceActors;
  List<String>? uniqueTraits;

  CharacterElement({
    required this.id,
    required this.name,
    required this.images,
    required this.debut,
    this.family,
    required this.jutsu,
    this.natureType,
    required this.personal,
    this.rank,
    this.tools,
    required this.voiceActors,
    this.uniqueTraits,
  });

  factory CharacterElement.fromJson(Map<String, dynamic> json) => CharacterElement(
    id: json["id"],
    name: json["name"],
    images: List<String>.from(json["images"].map((x) => x)),
    debut: Debut.fromJson(json["debut"]),
    family: json["family"] == null ? null : Family.fromJson(json["family"]),
    jutsu: List<String>.from(json["jutsu"].map((x) => x)),
    natureType: json["natureType"] == null ? [] : List<String>.from(json["natureType"].map((x) => x)),
    personal: Personal.fromJson(json["personal"]),
    rank: json["rank"] == null ? null : Rank.fromJson(json["rank"]),
    tools: json["tools"] == null ? [] : List<String>.from(json["tools"].map((x) => x)),
    voiceActors: VoiceActors.fromJson(json["voiceActors"]),
    uniqueTraits: json["uniqueTraits"] == null ? [] : List<String>.from(json["uniqueTraits"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "images": List<dynamic>.from(images.map((x) => x)),
    "debut": debut.toJson(),
    "family": family?.toJson(),
    "jutsu": List<dynamic>.from(jutsu.map((x) => x)),
    "natureType": natureType == null ? [] : List<dynamic>.from(natureType!.map((x) => x)),
    "personal": personal.toJson(),
    "rank": rank?.toJson(),
    "tools": tools == null ? [] : List<dynamic>.from(tools!.map((x) => x)),
    "voiceActors": voiceActors.toJson(),
    "uniqueTraits": uniqueTraits == null ? [] : List<dynamic>.from(uniqueTraits!.map((x) => x)),
  };
}

class Debut {
  String manga;
  String anime;
  String? novel;
  String? movie;
  String game;
  String? ova;
  AppearsIn appearsIn;

  Debut({
    required this.manga,
    required this.anime,
    this.novel,
    this.movie,
    required this.game,
    this.ova,
    required this.appearsIn,
  });

  factory Debut.fromJson(Map<String, dynamic> json) => Debut(
    manga: json["manga"],
    anime: json["anime"],
    novel: json["novel"],
    movie: json["movie"],
    game: json["game"],
    ova: json["ova"],
    appearsIn: appearsInValues.map[json["appearsIn"]]!,
  );

  Map<String, dynamic> toJson() => {
    "manga": manga,
    "anime": anime,
    "novel": novel,
    "movie": movie,
    "game": game,
    "ova": ova,
    "appearsIn": appearsInValues.reverse[appearsIn],
  };
}

enum AppearsIn {
  ANIME_MANGA_GAME,
  ANIME_MANGA_GAME_MOVIE,
  ANIME_MANGA_NOVEL_GAME_MOVIE
}

final appearsInValues = EnumValues({
  "Anime, Manga, Game": AppearsIn.ANIME_MANGA_GAME,
  "Anime, Manga, Game, Movie": AppearsIn.ANIME_MANGA_GAME_MOVIE,
  "Anime, Manga, Novel, Game, Movie": AppearsIn.ANIME_MANGA_NOVEL_GAME_MOVIE
});

class Family {
  String? father;
  String? mother;
  String? son;
  String? daughter;
  String? wife;
  String? adoptiveSon;
  String? godfather;
  String? brother;
  String? cloneSon;
  String? familyGrandmother;
  String? sister;
  String? nephew;
  String? uncle;
  String? adoptiveMother;
  String? adoptiveSons;
  String? adoptiveBrother;
  String? clone;
  String? godson;
  String? greatGrandfather;
  String? grandfather;
  String? grandmother;
  String? cousin;
  String? geneticTemplateParent;
  String? cloneBrother;
  String? pet;
  String? grandson;
  String? granddaughter;
  String? granduncle;
  String? aunt;
  String? firstCousinOnceRemoved;
  String? host;
  String? niece;
  String? lover;
  String? creator;
  String? geneticTemplate;

  Family({
    this.father,
    this.mother,
    this.son,
    this.daughter,
    this.wife,
    this.adoptiveSon,
    this.godfather,
    this.brother,
    this.cloneSon,
    this.familyGrandmother,
    this.sister,
    this.nephew,
    this.uncle,
    this.adoptiveMother,
    this.adoptiveSons,
    this.adoptiveBrother,
    this.clone,
    this.godson,
    this.greatGrandfather,
    this.grandfather,
    this.grandmother,
    this.cousin,
    this.geneticTemplateParent,
    this.cloneBrother,
    this.pet,
    this.grandson,
    this.granddaughter,
    this.granduncle,
    this.aunt,
    this.firstCousinOnceRemoved,
    this.host,
    this.niece,
    this.lover,
    this.creator,
    this.geneticTemplate,
  });

  factory Family.fromJson(Map<String, dynamic> json) => Family(
    father: json["father"],
    mother: json["mother"],
    son: json["son"],
    daughter: json["daughter"],
    wife: json["wife"],
    adoptiveSon: json["adoptive son"],
    godfather: json["godfather"],
    brother: json["brother"],
    cloneSon: json["clone/son"],
    familyGrandmother: json["grandmother "],
    sister: json["sister"],
    nephew: json["nephew"],
    uncle: json["uncle"],
    adoptiveMother: json["adoptive mother"],
    adoptiveSons: json["adoptive sons"],
    adoptiveBrother: json["adoptive brother"],
    clone: json["clone"],
    godson: json["godson"],
    greatGrandfather: json["great-grandfather"],
    grandfather: json["grandfather"],
    grandmother: json["grandmother"],
    cousin: json["cousin"],
    geneticTemplateParent: json["genetic template/parent"],
    cloneBrother: json["clone/brother"],
    pet: json["pet "],
    grandson: json["grandson"],
    granddaughter: json["granddaughter"],
    granduncle: json["granduncle"],
    aunt: json["aunt"],
    firstCousinOnceRemoved: json["first cousin once removed"],
    host: json["host"],
    niece: json["niece"],
    lover: json["lover"],
    creator: json["creator"],
    geneticTemplate: json["genetic template"],
  );

  Map<String, dynamic> toJson() => {
    "father": father,
    "mother": mother,
    "son": son,
    "daughter": daughter,
    "wife": wife,
    "adoptive son": adoptiveSon,
    "godfather": godfather,
    "brother": brother,
    "clone/son": cloneSon,
    "grandmother ": familyGrandmother,
    "sister": sister,
    "nephew": nephew,
    "uncle": uncle,
    "adoptive mother": adoptiveMother,
    "adoptive sons": adoptiveSons,
    "adoptive brother": adoptiveBrother,
    "clone": clone,
    "godson": godson,
    "great-grandfather": greatGrandfather,
    "grandfather": grandfather,
    "grandmother": grandmother,
    "cousin": cousin,
    "genetic template/parent": geneticTemplateParent,
    "clone/brother": cloneBrother,
    "pet ": pet,
    "grandson": grandson,
    "granddaughter": granddaughter,
    "granduncle": granduncle,
    "aunt": aunt,
    "first cousin once removed": firstCousinOnceRemoved,
    "host": host,
    "niece": niece,
    "lover": lover,
    "creator": creator,
    "genetic template": geneticTemplate,
  };
}

class Personal {
  String? birthdate;
  Sex sex;
  Age? age;
  Height? height;
  Weight? weight;
  BloodType? bloodType;
  dynamic kekkeiGenkai;
  dynamic classification;
  String? tailedBeast;
  dynamic occupation;
  List<String> affiliation;
  dynamic team;
  dynamic clan;
  List<String>? titles;
  String? status;
  String? kekkeiMra;
  dynamic partner;
  String? species;

  Personal({
    this.birthdate,
    required this.sex,
    this.age,
    this.height,
    this.weight,
    this.bloodType,
    this.kekkeiGenkai,
    this.classification,
    this.tailedBeast,
    this.occupation,
    required this.affiliation,
    this.team,
    this.clan,
    this.titles,
    this.status,
    this.kekkeiMra,
    this.partner,
    this.species,
  });

  factory Personal.fromJson(Map<String, dynamic> json) => Personal(
    birthdate: json["birthdate"],
    sex: sexValues.map[json["sex"]]!,
    age: json["age"] == null ? null : Age.fromJson(json["age"]),
    height: json["height"] == null ? null : Height.fromJson(json["height"]),
    weight: json["weight"] == null ? null : Weight.fromJson(json["weight"]),
    bloodType: bloodTypeValues.map[json["bloodType"]],
    kekkeiGenkai: json["kekkeiGenkai"],
    classification: json["classification"],
    tailedBeast: json["tailedBeast"],
    occupation: json["occupation"],
    affiliation: List<String>.from(json["affiliation"].map((x) => x)),
    team: json["team"],
    clan: json["clan"],
    titles: json["titles"] == null ? [] : List<String>.from(json["titles"].map((x) => x)),
    status: json["status"],
    kekkeiMra: json["kekkeiMōra"],
    partner: json["partner"],
    species: json["species"],
  );

  Map<String, dynamic> toJson() => {
    "birthdate": birthdate,
    "sex": sexValues.reverse[sex],
    "age": age?.toJson(),
    "height": height?.toJson(),
    "weight": weight?.toJson(),
    "bloodType": bloodTypeValues.reverse[bloodType],
    "kekkeiGenkai": kekkeiGenkai,
    "classification": classification,
    "tailedBeast": tailedBeast,
    "occupation": occupation,
    "affiliation": List<dynamic>.from(affiliation.map((x) => x)),
    "team": team,
    "clan": clan,
    "titles": titles == null ? [] : List<dynamic>.from(titles!.map((x) => x)),
    "status": status,
    "kekkeiMōra": kekkeiMra,
    "partner": partner,
    "species": species,
  };
}

class Age {
  String? partI;
  String? partIi;
  String? academyGraduate;
  String? chuninPromotion;
  String? blankPeriod;
  String? borutoMovie;
  String? borutoManga;

  Age({
    this.partI,
    this.partIi,
    this.academyGraduate,
    this.chuninPromotion,
    this.blankPeriod,
    this.borutoMovie,
    this.borutoManga,
  });

  factory Age.fromJson(Map<String, dynamic> json) => Age(
    partI: json["Part I"],
    partIi: json["Part II"],
    academyGraduate: json["Academy Graduate"],
    chuninPromotion: json["Chunin Promotion"],
    blankPeriod: json["Blank Period"],
    borutoMovie: json["Boruto Movie"],
    borutoManga: json["Boruto Manga"],
  );

  Map<String, dynamic> toJson() => {
    "Part I": partI,
    "Part II": partIi,
    "Academy Graduate": academyGraduate,
    "Chunin Promotion": chuninPromotion,
    "Blank Period": blankPeriod,
    "Boruto Movie": borutoMovie,
    "Boruto Manga": borutoManga,
  };
}

enum BloodType {
  A,
  AB,
  B,
  O
}

final bloodTypeValues = EnumValues({
  "A": BloodType.A,
  "AB": BloodType.AB,
  "B": BloodType.B,
  "O": BloodType.O
});

class Height {
  String? partI;
  String? partIi;
  String? blankPeriod;
  String? gaiden;
  String? borutoMovie;
  String? borutoManga;

  Height({
    this.partI,
    this.partIi,
    this.blankPeriod,
    this.gaiden,
    this.borutoMovie,
    this.borutoManga,
  });

  factory Height.fromJson(Map<String, dynamic> json) => Height(
    partI: json["Part I"],
    partIi: json["Part II"],
    blankPeriod: json["Blank Period"],
    gaiden: json["Gaiden"],
    borutoMovie: json["Boruto Movie"],
    borutoManga: json["Boruto Manga"],
  );

  Map<String, dynamic> toJson() => {
    "Part I": partI,
    "Part II": partIi,
    "Blank Period": blankPeriod,
    "Gaiden": gaiden,
    "Boruto Movie": borutoMovie,
    "Boruto Manga": borutoManga,
  };
}

enum Sex {
  FEMALE,
  FILE_GENDER_VARIOUS_SVG_VARIOUS,
  MALE
}

final sexValues = EnumValues({
  "Female": Sex.FEMALE,
  "File:Gender Various.svg Various": Sex.FILE_GENDER_VARIOUS_SVG_VARIOUS,
  "Male": Sex.MALE
});

class Weight {
  String? partI;
  String? partIi;

  Weight({
    this.partI,
    this.partIi,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => Weight(
    partI: json["Part I"],
    partIi: json["Part II"],
  );

  Map<String, dynamic> toJson() => {
    "Part I": partI,
    "Part II": partIi,
  };
}

class Rank {
  NinjaRank ninjaRank;
  String? ninjaRegistration;

  Rank({
    required this.ninjaRank,
    this.ninjaRegistration,
  });

  factory Rank.fromJson(Map<String, dynamic> json) => Rank(
    ninjaRank: NinjaRank.fromJson(json["ninjaRank"]),
    ninjaRegistration: json["ninjaRegistration"],
  );

  Map<String, dynamic> toJson() => {
    "ninjaRank": ninjaRank.toJson(),
    "ninjaRegistration": ninjaRegistration,
  };
}

class NinjaRank {
  String? partI;
  String? gaiden;
  String? blankPeriod;
  String? partIi;

  NinjaRank({
    this.partI,
    this.gaiden,
    this.blankPeriod,
    this.partIi,
  });

  factory NinjaRank.fromJson(Map<String, dynamic> json) => NinjaRank(
    partI: json["Part I"],
    gaiden: json["Gaiden"],
    blankPeriod: json["Blank Period"],
    partIi: json["Part II"],
  );

  Map<String, dynamic> toJson() => {
    "Part I": partI,
    "Gaiden": gaiden,
    "Blank Period": blankPeriod,
    "Part II": partIi,
  };
}

class VoiceActors {
  dynamic japanese;
  dynamic english;

  VoiceActors({
    required this.japanese,
    required this.english,
  });

  factory VoiceActors.fromJson(Map<String, dynamic> json) => VoiceActors(
    japanese: json["japanese"],
    english: json["english"],
  );

  Map<String, dynamic> toJson() => {
    "japanese": japanese,
    "english": english,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}