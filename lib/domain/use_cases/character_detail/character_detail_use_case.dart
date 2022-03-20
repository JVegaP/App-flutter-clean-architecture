
import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';
import 'package:rick_morty/domain/repositories/character_detail/character_detail_repository.dart';

class CharacterDetailUseCase {
  final CharacterDetailRepository characterDetailRepository;
  CharacterDetailUseCase(this.characterDetailRepository);

 Future<CharacterDetail> invoke(int id) async{
    return await characterDetailRepository.getCharacterDetail(id);
  }
}