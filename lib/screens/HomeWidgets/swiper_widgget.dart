import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ramzan/utils/colors.dart';

class SwiperWidget extends StatelessWidget {
  const SwiperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[200],
      elevation: 5,
      child: Column(
        children: [
          SizedBox(
            height: 186,
            child: Swiper(
                containerHeight: 20,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Image.asset(
                      'lib/assets/images/Living Ramadan.png',
                      height: 153,
                      width: 267,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                pagination: const SwiperPagination()),
          ),
          const Text(
            'KANZL UL HUDA',
            style: TextStyle(
                color: kGreyColor, fontSize: 8, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
