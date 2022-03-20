import 'package:rick_morty/domain/entities/home/character.dart';

abstract class HomeRepository {
  Future<List<Character>> getCharacters();
}