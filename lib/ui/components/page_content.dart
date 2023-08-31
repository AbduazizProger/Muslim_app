import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Muslim/functions/get_arabic_nums.dart';
import 'package:Muslim/models/page_model.dart';

class PageContentWidget extends StatefulWidget {
  const PageContentWidget({super.key, required this.pageNum});

  final int pageNum;

  @override
  State<PageContentWidget> createState() => _PageContentWidgetState();
}

class _PageContentWidgetState extends State<PageContentWidget> {
  PageModel? pageModel;

  Future<void> fetchPage(int pageNumber) async {
    final String fileName =
        'assets/json/surah_pages/surah_page_$pageNumber.json';
    String fileContent = await rootBundle.loadString(fileName);
    final Map<String, dynamic> json = jsonDecode(fileContent);
    pageModel = PageModel.fromJson(json['data']);
  }

  List<TextSpan> pageGenerator() {
    List<TextSpan> content = [];
    for (var ayah in pageModel?.ayahs ?? []) {
      content.addAll([
        ayah.numberInSurah == 1
            ? TextSpan(
                text:
                    '${pageModel!.ayahs.first == ayah ? '' : '\n'}${ayah.surahName}\n',
                style: TextStyle(
                  fontFamily: 'ScheherazadeNew',
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.green[200],
                ),
              )
            : const TextSpan(text: ''),
        TextSpan(
          text: ayah.text.toString() ==
                  '﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ'
              ? 'أَعُوْذُ بِاللّٰهِ مِنَ الشَّيْطٰانِ الرَّجِيْمِ\n${ayah.text} ۝${convertToArabicNumbers(ayah.numberInSurah)}\n'
              : ayah.text
                      .toString()
                      .startsWith('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ')
                  ? 'أَعُوْذُ بِاللّٰهِ مِنَ الشَّيْطٰانِ الرَّجِيْمِ\n﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ \n ${ayah.text.toString().split('بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ')[1]} ۝${convertToArabicNumbers(ayah.numberInSurah)} '
                  : '${ayah.text} ۝${convertToArabicNumbers(ayah.numberInSurah)}',
          style: const TextStyle(fontFamily: 'ScheherazadeNew', fontSize: 28),
        ),
      ]);
    }
    return content;
  }

  @override
  void initState() {
    super.initState();
    fetchPage(widget.pageNum).then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          RichText(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            text: TextSpan(
              children: pageGenerator(),
            ),
          ),
        ],
      ),
    );
  }
}
