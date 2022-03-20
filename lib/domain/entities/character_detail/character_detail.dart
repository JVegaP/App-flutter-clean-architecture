class CharacterDetail{
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Location location;
  final String image;
  final List<String> episode;
  CharacterDetail({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode
  });
}

class Origin{
  final String name;
  final String url;
  Origin({
    required this.name,
    required this.url
  });
}

class Location{
  final String name;
  final String url;
  Location({
    required this.name,
    required this.url
  });
}