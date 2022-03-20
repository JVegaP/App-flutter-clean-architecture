
import 'package:flutter/material.dart';
import 'package:rick_morty/core/utils/strings.dart';
import 'package:rick_morty/presentation/widgets/text_field_custom.dart';
import 'package:shimmer/shimmer.dart';

Widget skeletonDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      textFieldCustom(Strings.detail, TextAlign.center, Colors.black87, 15, FontWeight.bold),
      const SizedBox(height: 10),
      Align(
        alignment:
        Alignment.center,
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment:
        Alignment.center,
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 12,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment:
      Alignment.centerLeft,
        child: Shimmer.fromColors(
        baseColor: Colors.white24,
        highlightColor: Colors.white24.withOpacity(.4),
        period: const Duration(milliseconds:900),
        child: Container(
          height: 12,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white24.withOpacity(0.4),
          ),
        ),
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment:
        Alignment.centerLeft,
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment:
        Alignment.centerLeft,
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
      ),
      const SizedBox(height: 10),
      Align(
        alignment:
        Alignment.centerLeft,
        child: Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
      ),
      const SizedBox(height: 5),
    ],
  );
}