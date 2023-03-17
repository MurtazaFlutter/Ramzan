import 'package:flutter/material.dart';
import '../../models/prayer_timing_model.dart';
import '../../utils/colors.dart';

class PrayerTiming extends StatelessWidget {
  const PrayerTiming({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: prayerTimings.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 40,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      prayerTimings[index]['title'].toString(),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Container(
                      height: 22,
                      width: 92,
                      decoration: BoxDecoration(
                          color: index == 0 || index == 4
                              ? kGreyColor
                              : kDeepOrange,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          prayerTimings[index]['timing'].toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
