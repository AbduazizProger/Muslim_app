import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:Muslim/models/name_model.dart';
import 'package:Muslim/ui/components/name_image.dart';
import 'package:Muslim/ui/components/name_widget.dart';

class NamesPage extends StatefulWidget {
  const NamesPage({super.key});

  @override
  State<NamesPage> createState() => _NamesPageState();
}

class _NamesPageState extends State<NamesPage> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  List<Name> names_99 = [];
  Future<void> fetchNames() async {
    final String response =
        await rootBundle.loadString('assets/json/names_99/names_99.json');
    final data = json.decode(response);
    List<dynamic> names = data['data'];
    names_99 = names.map((json) => Name.fromJson(json)).toList();
  }

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerComplete.listen((event) {
      isPlaying = false;
      audioPlayer.stop();
      setState(() {});
    });
    fetchNames().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('99 names'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: names_99.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return const NameVideoImage();
          }
          return Padding(
            padding: const EdgeInsets.all(3),
            child: NameWidget(name: names_99[index - 1]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow_rounded,
          size: 40,
        ),
        onPressed: () {
          if (isPlaying) {
            audioPlayer.pause();
            setState(() {});
          } else {
            audioPlayer.state == PlayerState.paused
                ? audioPlayer.play(AssetSource('audios/names_99.mp3'))
                : audioPlayer.play(
                    AssetSource('audios/names_99.mp3'),
                    position: const Duration(seconds: 9),
                  );
            setState(() {});
          }
          isPlaying = !isPlaying;
        },
      ),
    );
  }
}
