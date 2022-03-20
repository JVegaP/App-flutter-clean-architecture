import 'package:flutter/material.dart';
import 'package:rick_morty/presentation/ui/character_detail/character_detail.dart';
import 'package:rick_morty/presentation/ui/home/home.dart';

final routes = Routes();
class Routes {
  /*view home*/
  openHome(BuildContext context) {
    Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (BuildContext context, _, __) => const HomePage()));
  }
  /*view character detail*/
  openCharacterDetail(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (BuildContext context, _, __) => const CharacterDetailPage()));
  }
}
