import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';

abstract class CharacterDetailRepository {
  ///*
  ///Implementation of method to consult the detail of a character
  ///[id] this id the character
  ///*
  Future<CharacterDetail> getCharacterDetail(int id);
}