import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/colors.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
  });

  final List<Map<String, dynamic>> categories = [
    {
      'icon': 'lib/assets/icons/Read Icon.svg',
      'title': 'Read',
    },
    {
      'icon': 'lib/assets/icons/Play Icon.svg',
      'title': 'Watch',
    },
    {
      'icon': 'lib/assets/icons/Donate Icon.svg',
      'title': 'Donate',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Container(
          margin: const EdgeInsets.only(left: 25),
          height: 69,
          decoration: const BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                categories.length,
                (index) => Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          categories[index]['icon'],
                          height: 22,
                          width: 22,
                        ),
                        Text(categories[index]['title'],
                            style: GoogleFonts.sourceSansPro(
                                color: kGreyColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    index == 2
                        ? const SizedBox.shrink()
                        : const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: VerticalDivider(
                              color: Color(0xffE6E4E4),
                            ),
                          )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
