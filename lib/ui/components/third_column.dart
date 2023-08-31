import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Muslim/ui/pages/dua_page.dart';
import 'package:Muslim/ui/pages/tv_page.dart';
import 'package:Muslim/ui/pages/zikr_page.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
              return const TVPage();
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
                  Icons.tv,
                  size: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'TV',
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
            Navigator.of(context).push(
              CupertinoPageRoute(builder: (_) {
                return const ZikrPage();
              }),
            );
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
                  'assets/images/tasbih.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Zikr',
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
            Navigator.of(context).push(
              CupertinoPageRoute(builder: (_) {
                return const DuaPage();
              }),
            );
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
                  'assets/images/prayer.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Duo',
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
