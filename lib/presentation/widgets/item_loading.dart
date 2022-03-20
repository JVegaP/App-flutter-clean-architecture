import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget itemLoading() {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: Colors.white,
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.white24,
          highlightColor: Colors.white24.withOpacity(.4),
          period: const Duration(milliseconds:900),
          child: Container(
            height: 60, width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white24.withOpacity(0.4),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.white24,
                highlightColor: Colors.white24.withOpacity(.4),
                period: const Duration(milliseconds:900),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white24.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}