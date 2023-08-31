import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:Muslim/ui/components/calendar_content.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  String fajrTime = '';
  String sunRiseTime = '';
  String dhuhrTime = '';
  String asrTime = '';
  String maghribTime = '';
  String ishaTime = '';

  Future<void> fetchPrayerTimes() async {
    try {
      final response = await http.get(
        Uri.parse(
          'http://api.aladhan.com/v1/timingsByCity?city=Tashkent&country=Uzbekistan&method=14&school=1',
        ),
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final timings = data['data']['timings'];

        setState(() {
          fajrTime = timings['Fajr'];
          sunRiseTime = timings['Sunrise'];
          dhuhrTime = timings['Dhuhr'];
          asrTime = timings['Asr'];
          maghribTime = timings['Maghrib'];
          ishaTime = timings['Isha'];
        });
      }
    } catch (e) {
      const snackBar = SnackBar(
        content: Text(
          'Internetga ulaning !',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPrayerTimes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Taqvim'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: CalendarContent(
              fajrTime: fajrTime,
              sunRiseTime: sunRiseTime,
              dhuhrTime: dhuhrTime,
              asrTime: asrTime,
              maghribTime: maghribTime,
              ishaTime: ishaTime,
            ),
          ),
          const Text(
            "Ushbu taqvimdagi vaqtlar hanafiy mazhabi bo'yicha Toshkent shahri uchun hisoblangan !!!",
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
