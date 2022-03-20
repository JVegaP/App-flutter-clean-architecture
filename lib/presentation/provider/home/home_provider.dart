import 'package:flutter/material.dart';
import 'package:rick_morty/data/sources/remote_source/home/home_data_source.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/domain/use_cases/home/home_use_case.dart';

class HomeProvider with ChangeNotifier{
  late HomeUseCase homeUseCase;
  late HomeDataSource homeDataSource;
  HomeProvider (){
    homeDataSource = HomeDataSource();
    homeUseCase = HomeUseCase(homeDataSource) ;
  }

  final List<Character> _characters =  <Character>[];
  List<Character> get characters {
    return _characters;
  }
  set characters (List<Character> books) {
    _characters.addAll(books);
    notifyListeners();
  }
  loadView() async{
    _characters.clear();
    characters = await homeUseCase.invoke();
    notifyListeners();
  }

}