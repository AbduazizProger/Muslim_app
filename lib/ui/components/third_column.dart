import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islam/ui/pages/fasting_page.dart';
import 'package:islam/ui/pages/names_page.dart';
import 'package:islam/ui/pages/surah_names_page.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return const SurahNamesPage();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              children: [
                Icon(
                  Icons.menu_book_rounded,
                  size: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Quran',
                  style: TextStyle(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return const NamesPage();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/belief.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  '99 names',
                  style: TextStyle(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return const FastingPage();
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/fasting.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Fasting',
                  style: TextStyle(
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
