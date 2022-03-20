import 'package:rick_morty/data/models/home/character_model.dart';
import 'package:rick_morty/data/models/home/info_model.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/domain/entities/home/characters.dart';
import 'package:rick_morty/domain/entities/home/info.dart';

class CharactersModel extends Characters {
  CharactersModel({
    required Info info,
    required List<Character> characters,
  }) : super(
      info: info,
      characters: characters
  );

  factory CharactersModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    return CharactersModel(
      info: InfoModel.fromJson(parsedJson['info']),
      characters: List<CharacterModel>.from(parsedJson['results'].map((data) => CharacterModel.fromJson(data))),
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['info'] = info;
    data['results'] = List<dynamic>.from(characters.map((character) => character));
    return data;
  }
}