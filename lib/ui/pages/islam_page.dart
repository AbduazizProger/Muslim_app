import 'package:flutter/material.dart';
import 'package:islam/ui/components/video_widget.dart';

class IslamPage extends StatelessWidget {
  const IslamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        VideoWidget(
          videoId: 'Ow5d54nwEfk',
          name: 'What is Islam All About',
          image: 'assets/images/what_islam.jpg',
        ),
        VideoWidget(
          videoId: '_wHQyM3LE-s',
          name: 'Islam & Iman',
          image: 'assets/images/islam&eman.jpg',
        ),
      ],
    );
  }
}
