import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';
import 'package:Muslim/models/surah_names_model.dart';
import 'package:Muslim/ui/components/page_content.dart';

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
  bool isPlaying = false;
  AudioPlayer audioPlayer = AudioPlayer();
  PageController pageController = PageController();
  int page = 0;
  @override
  void initState() {
    super.initState();
    page = widget.surahModel.pageNum;
    pageController = PageController(initialPage: widget.surahModel.pageNum - 1);
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qur'on"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              size: 30,
            ),
            onPressed: () async {
              try {
                await http.get(
                  Uri.parse(
                    'https://example.com',
                  ),
                );
                if (isPlaying) {
                  audioPlayer.pause();
                } else {
                  audioPlayer.play(UrlSource(
                    "https://hilolnashr.uz/audios/audios/quran/pages/AbdulBasit/${page.toString().length == 1 ? '00$page' : page.toString().length == 2 ? '0$page' : '$page'}.mp3",
                  ));
                }
                isPlaying = !isPlaying;
                setState(() {});
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
            },
          ),
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
          isPlaying = false;
          audioPlayer.stop();
          page = value + 1;
        }),
        itemBuilder: (context, index) {
          return PageContentWidget(pageNum: index + 1);
        },
      ),
    );
  }
}
