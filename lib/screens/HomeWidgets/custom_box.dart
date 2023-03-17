import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';

class CustomBox extends StatelessWidget {
  final Color color;
  final String svg;
  final String title1;
  final String title2;
  final Color titleColor;

  const CustomBox({
    required this.color,
    required this.svg,
    required this.title1,
    required this.title2,
    required this.titleColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 158,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, right: 5),
                child: SvgPicture.asset(svg),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: title1,
                  style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: kDeepOrange)),
              TextSpan(
                  text: title2,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: titleColor)),
            ])),
          )
        ],
      ),
    );
  }
}
