import 'package:flutter/material.dart';

Widget textFieldCustom(String text, TextAlign textAlign, Color color, double size, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: textAlign,
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight
    ),
  );
}