import 'package:flutter/material.dart';
import 'package:Muslim/models/surah_names_model.dart';

class SurahNameWidget extends StatelessWidget {
  const SurahNameWidget({
    super.key,
    required this.surah,
  });

  final SurahNameModel surah;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              '${surah.number}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
          SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    surah.englishName,
                    style: const TextStyle(fontSize: 25),
                  ),
                  Text(
                    '${surah.revelationType} - ${surah.numberOfAyahs} verses',
                    style: const TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Text(
            '${surah.pageNum}'.length == 3
                ? '${surah.pageNum}'
                : '${surah.pageNum}'.length == 2
                    ? ' ${surah.pageNum}'
                    : '  ${surah.pageNum}',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
