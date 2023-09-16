import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:Muslim/ui/pages/islam_video.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.videoId,
    required this.name,
    required this.image,
  });

  final String videoId;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () async {
          try {
            await http.get(Uri.parse(
              'http://example.com',
            ));
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return IslamVideo(videoId: videoId);
                },
              ),
            );
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
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(image,
                      width: name.contains('haqida') ? 250 : null),
                  const Icon(Icons.play_arrow_rounded, size: 80),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
