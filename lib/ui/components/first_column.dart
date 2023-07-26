import 'package:flutter/material.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        const SizedBox(height: 20),
        Container(
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
        const SizedBox(height: 20),
        Container(
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
                'Dua',
                style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
