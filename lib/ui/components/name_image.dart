import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:Muslim/ui/pages/islam_video.dart';

class NameVideoImage extends StatelessWidget {
  const NameVideoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () async {
          try {
            await http.get(
              Uri.parse(
                'https://example.com',
              ),
            );
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) {
                  return const IslamVideo(videoId: 'tTao6LY05zw');
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset('assets/images/names_99.jpg'),
        ),
      ),
    );
  }
}
