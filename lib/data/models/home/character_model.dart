import 'package:rick_morty/domain/entities/home/character.dart';

class CharacterModel extends Character {
  CharacterModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required String image
  }) : super(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      image: image
  );

  factory CharacterModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    return CharacterModel(
        id: parsedJson['id'],
        name: parsedJson['name'].toString(),
        status: parsedJson['status'].toString(),
        species: parsedJson['species'].toString(),
        type: parsedJson['type'].toString(),
        gender: parsedJson['gender'].toString(),
        image: parsedJson['image'].toString(),
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['species'] = species;
    data['type'] = type;
    data['gender'] = gender;
    data['image'] = image;
    return data;
  }
}