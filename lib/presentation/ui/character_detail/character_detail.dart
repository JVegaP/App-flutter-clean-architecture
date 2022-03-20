import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_morty/core/utils/strings.dart';
import 'package:rick_morty/presentation/provider/character_detail/character_detail_provider.dart';
import 'package:rick_morty/presentation/ui/character_detail/widgets/skeleton_detail.dart';
import 'package:rick_morty/presentation/widgets/app_bar.dart';
import 'package:rick_morty/presentation/widgets/text_field_custom.dart';

class CharacterDetailPage extends StatefulWidget{
  const CharacterDetailPage({Key? key}) : super(key: key);
  @override
  CharacterDetail createState()=> CharacterDetail();
}

class CharacterDetail extends State<CharacterDetailPage> {
  late CharacterDetailProvider provider;

  @override
  void initState() {
    provider = Provider.of<CharacterDetailProvider>(context,listen: false);
    WidgetsBinding.instance!.addPostFrameCallback((_) async{
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<CharacterDetailProvider>(this.context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
                    decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: provider.characterDetail.id == -1 ?skeletonDetail() : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        textFieldCustom(Strings.detail, TextAlign.center, Colors.black87, 15, FontWeight.bold),
                        const SizedBox(height: 8),
                        Container(
                          height: 200, width: 200,
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            child: Stack(
                              children: [
                                const Center(
                                  child: Image(
                                    image: AssetImage('assets/images/ic_placeholder.png'),
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,),
                                ),
                                FadeInImage.assetNetwork(
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                  placeholderScale: 0.5,
                                  placeholder: '',
                                  image: provider.characterDetail.image,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        textFieldCustom(provider.characterDetail.name, TextAlign.center, Colors.black87, 15, FontWeight.bold),
                        const SizedBox(height: 8),
                        Align(alignment: Alignment.centerLeft, child: textFieldCustom(provider.characterDetail.gender, TextAlign.start, Colors.black54, 13, FontWeight.bold)),
                        const SizedBox(height: 5),
                        Align(alignment: Alignment.centerLeft, child: textFieldCustom(provider.characterDetail.origin.name, TextAlign.start, Colors.black54, 13, FontWeight.bold)),
                        const SizedBox(height: 5),
                        Align(alignment: Alignment.centerLeft, child: textFieldCustom(provider.characterDetail.location.name, TextAlign.start, Colors.black54, 13, FontWeight.bold)),
                        const SizedBox(height: 5),
                        Align(alignment: Alignment.centerLeft, child: textFieldCustom('${provider.characterDetail.episode.length.toString()}${Strings.episodes}', TextAlign.start, Colors.black54, 13, FontWeight.bold)),
                        const SizedBox(height: 5),
                      ],
                    ),
                  )
              ),
              Column(
                children: [
                  appBar(context, true),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}