
import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';

class CharacterDetailModel extends CharacterDetail {
  CharacterDetailModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required Origin origin,
    required Location location,
    required String image,
    required List<String> episode
  }) : super(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin,
      location: location,
      image: image,
      episode: episode
  );

  factory CharacterDetailModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    List<String> episode = <String>[];
    if(parsedJson['episode'].toString().isEmpty){
    }else{
      if (parsedJson['episode'] != null) {
        episode = <String>[];
        parsedJson['episode'].forEach((v) {episode.add(v);});
      }
    }
    return CharacterDetailModel(
      id: parsedJson['id'],
      name: parsedJson['name'].toString(),
      status: parsedJson['status'].toString(),
      species: parsedJson['species'].toString(),
      type: parsedJson['type'].toString(),
      gender: parsedJson['gender'].toString(),
      origin: OriginModel.fromJson(parsedJson['origin']),
      location: LocationModel.fromJson(parsedJson['location']),
      image: parsedJson['image'].toString(),
      episode: episode
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
    data['episode'] = episode.toList();
    return data;
  }
}

class OriginModel extends Origin {
  OriginModel({
    required String name,
    required String url,
  }) : super(
      name: name,
      url: url
  );

  factory OriginModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    return OriginModel(
      name: parsedJson['name'].toString(),
      url: parsedJson['url'].toString()
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}

class LocationModel extends Location {
  LocationModel({
    required String name,
    required String url,
  }) : super(
      name: name,
      url: url
  );

  factory LocationModel.fromJson(Map<dynamic, dynamic> parsedJson) {
    return LocationModel(
        name: parsedJson['name'].toString(),
        url: parsedJson['url'].toString()
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}