import 'package:flutter/material.dart';
import 'package:Muslim/ui/components/video_widget.dart';

class TVPage extends StatelessWidget {
  const TVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          VideoWidget(
            videoId: 'UtvBCFyq2eI',
            name: 'Makka LIVE',
            image: 'assets/images/makkah.png',
          ),
          VideoWidget(
            videoId: 'gUC3TjCrwRw',
            name: 'Madina LIVE',
            image: 'assets/images/medinah.jpg',
          ),
          VideoWidget(
            videoId: 'Ly5NG0LCsT0',
            name: 'Islom.uz LIVE',
            image: 'assets/images/islom_uz.jpg',
          ),
        ],
      ),
    );
  }
}
