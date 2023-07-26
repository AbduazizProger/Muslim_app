import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/models/surah_names_model.dart';
import 'package:islam/ui/components/surah_name.dart';
import 'package:islam/ui/pages/quran_page.dart';

class SurahNamesPage extends StatefulWidget {
  const SurahNamesPage({super.key});

  @override
  State<SurahNamesPage> createState() => _SurahNamesPageState();
}

class _SurahNamesPageState extends State<SurahNamesPage> {
  List<SurahNameModel> surahs = [];

  Future<void> fetchSurahs() async {
    String jsonString = await rootBundle.loadString(
      'assets/json/surah_names/surah_names.json',
    );
    List jsonData = json.decode(jsonString)['data'];

    String jsonString1 = await rootBundle.loadString(
      'assets/json/surah_names/surah_pages.json',
    );
    List jsonData1 = json.decode(jsonString1)['surahs'];

    for (int i = 0; i < 114; i++) {
      surahs.add(SurahNameModel.fromJson(jsonData[i], jsonData1[i]));
    }
  }

  @override
  void initState() {
    super.initState();
    fetchSurahs().then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 114,
        itemBuilder: (context, index) {
          if (surahs.isNotEmpty) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) {
                      return QuranPage(
                        surahModel: surahs[index],
                      );
                    },
                  ),
                );
              },
              child: SurahNameWidget(surah: surahs[index]),
            );
          } else {
            return const Text('');
          }
        },
      ),
    );
  }
}
