import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:rick_morty/data/models/character_detail/character_detail_model.dart';
import 'package:rick_morty/domain/entities/character_detail/character_detail.dart';
import 'package:rick_morty/domain/repositories/character_detail/character_detail_repository.dart';

class CharacterDetailDataSource extends CharacterDetailRepository {

  ///*
  ///Call to the api that consumes a particular character
  ///[id] this id the character
  ///*
  @override
  Future<CharacterDetail> getCharacterDetail(int id) async{
    try {
      final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character/${id.toString()}'))
          .timeout(const Duration(seconds: 10));
      if(response.statusCode==200) {
        if(response.body.isNotEmpty){
          return CharacterDetailModel.fromJson(jsonDecode(response.body));
        }else{
          throw Exception('Ocurrio un error.');
        }
      } else {
        throw Exception('Fue imposible adquirir esta url.');
      }
    } on SocketException catch (_) {
      throw Exception('Ocurrio un error.');
    }
  }

}