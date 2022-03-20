import 'package:flutter/material.dart';
import 'package:rick_morty/data/sources/remote_source/character_detail/character_detail_data_source.dart';
import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';
import 'package:rick_morty/domain/use_cases/character_detail/character_detail_use_case.dart';

class CharacterDetailProvider with ChangeNotifier{
  late CharacterDetailUseCase characterDetailUseCase;
  late CharacterDetailDataSource characterDetailDataSource;
  CharacterDetailProvider (){
    characterDetailDataSource = CharacterDetailDataSource();
    characterDetailUseCase = CharacterDetailUseCase(characterDetailDataSource) ;
  }

  late CharacterDetail _characterDetail;
  CharacterDetail get characterDetail {
    return _characterDetail;
  }
  set characterDetail(CharacterDetail characterDetail) {
    _characterDetail = characterDetail;
    notifyListeners();
  }

  loadView(int id) async{
    _characterDetail = CharacterDetail(
      id: -1,
      image: "",
      gender: "",
      name: "",
      species: "",
      status: "",
      type: "",
      location: Location(name: "", url: ""),
      origin: Origin(name: "", url: ""),
      episode: [""]
    );
    _characterDetail = await characterDetailUseCase.invoke(id);
    notifyListeners();
  }

}