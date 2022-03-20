import 'package:flutter/material.dart';
import 'package:rick_morty/domain/entities/home/character.dart';
import 'package:rick_morty/presentation/widgets/button_custom.dart';
import 'package:rick_morty/presentation/widgets/text_field_custom.dart';

Widget itemHome(BuildContext context, Character item) {
  return Column(
    children: [
      const SizedBox(height: 10),
      Row(
        children: [
          SizedBox(
              height: 100,
              width: 100,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 100, width: 100,
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
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,),
                            ),
                            FadeInImage.assetNetwork(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              placeholderScale: 0.5,
                              placeholder: '',
                              image: item.image,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                        width: 80,
                        child: buttonCustom()
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textFieldCustom(item.name, TextAlign.start, Colors.black87, 15, FontWeight.bold),
                      const SizedBox(height: 5),
                      textFieldCustom(item.status, TextAlign.start, Colors.black, 13, FontWeight.bold),
                      const SizedBox(height: 5),
                      textFieldCustom(item.species, TextAlign.start, Colors.black38, 13, FontWeight.normal),
                      const SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10),
    ],
  );
}