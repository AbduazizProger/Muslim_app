import 'package:flutter/material.dart';

class CalendarContent extends StatelessWidget {
  const CalendarContent({
    super.key,
    required this.fajrTime,
    required this.sunRiseTime,
    required this.dhuhrTime,
    required this.asrTime,
    required this.maghribTime,
    required this.ishaTime,
  });

  final String fajrTime;
  final String sunRiseTime;
  final String dhuhrTime;
  final String asrTime;
  final String maghribTime;
  final String ishaTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bomdod:  $fajrTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/fajr.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Quyosh:  $sunRiseTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/sunrise.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Peshin:  $dhuhrTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/dhuhr.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Asr:  $asrTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/asr.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shom:  $maghribTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/maghrib.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Xufton:  $ishaTime',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Image.asset('assets/images/isha.png', width: 60),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
