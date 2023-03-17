import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'HomeWidgets/category_card.dart';
import 'HomeWidgets/custom_box.dart';
import 'HomeWidgets/prayer_timing.dart';
import 'HomeWidgets/swiper_widgget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SwiperWidget(),
                const SizedBox(
                  height: 20,
                ),
                CategoryCard(),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Todays Timings',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                const PrayerTiming(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomBox(
                        color: Colors.orange.shade100,
                        svg: 'lib/assets/icons/icon.svg',
                        title1: 'EXPLORE THE ',
                        title2: '\nRAMZAN GUIDE',
                        titleColor: kGreyColor),
                    const CustomBox(
                      color: kGreyColor,
                      svg: 'lib/assets/icons/play.svg',
                      title1: 'WATCH THE  ',
                      title2: '\nDAILY VIDEO',
                      titleColor: Colors.white,
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
