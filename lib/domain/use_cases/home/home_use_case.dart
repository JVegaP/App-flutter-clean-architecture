import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/domain/repositories/home/home_repository.dart';

class HomeUseCase {
  final HomeRepository homeRepository;
  HomeUseCase(this.homeRepository);

  Future<List<Character>> invoke() async{
    return await homeRepository.getCharacters();
  }
}