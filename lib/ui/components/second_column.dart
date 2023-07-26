import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({
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
                Icons.calendar_month_sharp,
                size: 90,
                color: Colors.green[900],
              ),
              Text(
                'Calendar',
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
                'assets/images/sujud.png',
                width: 90,
                color: Colors.green[900],
              ),
              Text(
                'Salah',
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
                'assets/images/qibla-compass.png',
                width: 90,
                color: Colors.green[900],
              ),
              Text(
                'Qibla',
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
