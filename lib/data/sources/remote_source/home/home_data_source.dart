import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:rick_morty/data/models/home/characters_model.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/domain/repositories/home/home_repository.dart';

class HomeDataSource extends HomeRepository {

  @override
  Future<List<Character>> getCharacters() async{
    try {
      final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'))
          .timeout(const Duration(seconds: 30));
      if(response.statusCode==200) {
        return CharactersModel.fromJson(jsonDecode(response.body)).characters;
      } else {
        throw Exception('Fue imposible adquirir esta url.');
      }
    } on SocketException catch (_) {
      throw Exception('Ocurrio un error.');
    }
  }

  //@override
  /*Future<BookDetail> getBookDetail(String isbn) async{
    try {
      final response = await http.get(Uri.parse('https://openlibrary.org/api/books?bibkeys=ISBN:$isbn&jscmd=data&format=json'))
          .timeout(const Duration(seconds: 10));
      if(response.statusCode==200) {
        if(response.body.isNotEmpty){
          return BookDetailObjectModel.fromJson(jsonDecode(response.body)).bookDetail;
        }else{
          throw Exception('Ocurrio un error.');
        }
      } else {
        throw Exception('Fue imposible adquirir esta url.');
      }
    } on SocketException catch (_) {
      throw Exception('Ocurrio un error.');
    }
  }*/

}