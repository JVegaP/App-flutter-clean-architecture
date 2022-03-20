
import 'package:flutter/material.dart';
import 'package:rick_morty/core/utils/strings.dart';
import 'package:rick_morty/presentation/widgets/text_field_custom.dart';

Widget buttonCustom() {
  return Container(
    height: 30,
    decoration: const BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: Center(
      child: textFieldCustom(
          Strings.detail,
          TextAlign.center,
          Colors.black87,
          14,
          FontWeight.bold),
    ),
  );
}