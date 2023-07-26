import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:islam/models/name_model.dart';
import 'package:islam/ui/components/name_widget.dart';
import 'package:islam/ui/pages/islam_video.dart';

class NamesPage extends StatefulWidget {
  const NamesPage({super.key});

  @override
  State<NamesPage> createState() => _NamesPageState();
}

class _NamesPageState extends State<NamesPage> {
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
    fetchNames().then((_) => setState(() {}));
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
            return Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return const IslamVideo(videoId: 'tTao6LY05zw');
                      },
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset('assets/images/names_99.jpg'),
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(3),
            child: NameWidget(name: names_99[index - 1]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow_rounded, size: 40),
        onPressed: () {},
      ),
    );
  }
}
