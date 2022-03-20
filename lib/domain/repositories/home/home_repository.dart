import 'package:rick_morty/domain/entities/home/character.dart';

abstract class HomeRepository {
  ///*
  ///Implementation of method to consult all characters
  ///*
  Future<List<Character>> getCharacters();
}