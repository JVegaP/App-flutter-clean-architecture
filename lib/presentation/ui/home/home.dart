import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/core/utils/routes.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/presentation/provider/character_detail/character_detail_provider.dart';
import 'package:rick_morty/presentation/provider/home/home_provider.dart';
import 'package:rick_morty/presentation/ui/home/widgets/list_home.dart';
import 'package:rick_morty/presentation/widgets/app_bar.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Home createState()=> Home();
}

class Home extends State<HomePage> {
  late HomeProvider provider;
  late CharacterDetailProvider providerDetail;

  @override
  void initState() {
    provider = Provider.of<HomeProvider>(context,listen: false);
    providerDetail = Provider.of<CharacterDetailProvider>(context,listen: false);
    WidgetsBinding.instance!.addPostFrameCallback((_) async{
      _loadView();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<HomeProvider>(this.context);
    providerDetail = Provider.of<CharacterDetailProvider>(this.context);
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(top: 80),
                  child: listHome(
                      context,
                      provider.characters,
                      _detailItem
                  )
              ),
              Column(
                children: [
                  appBar(context, false),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _loadView() async{
    provider.loadView();
  }

  _detailItem(Character character) async{
    providerDetail.loadView(character.id);
    routes.openCharacterDetail(context);
  }
}