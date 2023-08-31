import 'package:flutter/material.dart';
import 'package:Muslim/ui/components/video_widget.dart';

class IslamPage extends StatelessWidget {
  const IslamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        VideoWidget(
          videoId: 'Qa4scKFFICQ',
          name: 'Iymon nima',
          image: 'assets/images/iymon.jpg',
        ),
        VideoWidget(
          videoId: 'YykTR7D5vdU',
          name: 'Islom arkonlari',
          image: 'assets/images/islom.jpg',
        ),
      ],
    );
  }
}
