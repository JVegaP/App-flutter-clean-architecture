import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget appBar(BuildContext context, bool back) {
  return Container(
    height: 60, width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.only(left: 15, right: 15),
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Visibility(
                visible: back,
                child: InkWell(
                    onTap: (){ Navigator.of(context).pop({'update' : true});},
                    child: FadeInLeft(
                        delay: const Duration(milliseconds: 150),
                        duration: const Duration(milliseconds: 350),
                        child: const Icon(Icons.arrow_back_ios, color: Colors.blueAccent, size: 20))
                ),
              ),
              const Image(
                image: AssetImage('assets/images/logo.png'),
                height: 35, width: 100, fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}