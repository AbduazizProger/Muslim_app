import 'package:flutter/material.dart';
import 'package:islam/models/surah_names_model.dart';
import 'package:islam/ui/components/page_content.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({
    super.key,
    required this.surahModel,
  });

  final SurahNameModel surahModel;

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  PageController pageController = PageController();
  int page = 0;
  @override
  void initState() {
    super.initState();
    page = widget.surahModel.pageNum;
    pageController = PageController(initialPage: widget.surahModel.pageNum - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quran'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$page',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: PageView.builder(
        reverse: true,
        itemCount: 604,
        controller: pageController,
        onPageChanged: (value) => setState(() {
          page = value + 1;
        }),
        itemBuilder: (context, index) {
          return PageContentWidget(pageNum: index + 1);
        },
      ),
    );
  }
}
