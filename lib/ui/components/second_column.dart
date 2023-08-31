import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Muslim/ui/pages/calendar_page.dart';
import 'package:Muslim/ui/pages/quiz_page.dart';
import 'package:Muslim/ui/pages/salah_page.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
              return const CalendarPage();
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
                  Icons.calendar_month_sharp,
                  size: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Taqvim',
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
            Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
              return const SalahPage();
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
                  'assets/images/sujud.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Namoz',
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
            Navigator.of(context).push(CupertinoPageRoute(builder: (_) {
              return const QuizPage();
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
                  'assets/images/quiz.png',
                  width: 90,
                  color: Colors.green[900],
                ),
                Text(
                  'Savol-javob',
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
