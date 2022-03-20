import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';

abstract class CharacterDetailRepository {
  Future<CharacterDetail> getCharacterDetail(int id);
}