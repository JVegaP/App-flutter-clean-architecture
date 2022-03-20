import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/domain/entities/home/info.dart';

class Characters{
  final Info info;
  final List<Character> characters;
  Characters({
    required this.info,
    required this.characters
  });
}