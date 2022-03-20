import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/presentation/ui/home/widgets/item_home.dart';
import 'package:rick_morty/presentation/widgets/container_empty.dart';
import 'package:rick_morty/presentation/widgets/item_loading.dart';

Widget listHome(BuildContext context, List<Character> characters, Function function) {
  return characters.isEmpty ? containerEmpty(context) : AnimationLimiter(
    child: ListView.builder(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: characters.isEmpty ? 10 : characters.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index){
        return AnimationConfiguration.staggeredList(
            position: index,
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 350),
            child: SlideAnimation(
              verticalOffset: 50.0,
              curve: Curves.decelerate,
              child: FadeInAnimation(
                child: characters.isEmpty? itemLoading():
                InkWell(onTap:(){
                  function(characters[index]);
                  },
                    child: itemHome(context, characters[index])
                ),
              )
            )
        );
      },
    )
  );
}