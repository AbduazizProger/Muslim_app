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
            videoId: 'LcXHEclyfcs',
            name: 'Makka haqida',
            image: 'assets/images/makkah.png',
          ),
          VideoWidget(
            videoId: '3-ILPtaCey4',
            name: "Payg'ambarimiz ravzalari\n haqida",
            image: 'assets/images/medinah.jpg',
          ),
          VideoWidget(
            videoId: 'c7RDfh2cTDQ',
            name: 'Islom haqida',
            image: 'assets/images/islom_uz.jpg',
          ),
        ],
      ),
    );
  }
}
