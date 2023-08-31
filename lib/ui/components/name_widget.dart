import 'package:flutter/material.dart';
import 'package:Muslim/models/name_model.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.name,
  });

  final Name name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '${name.number}',
                  style: const TextStyle(fontSize: 27),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.name,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontFamily: 'ScheherazadeNew',
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      name.transliteration,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            name.en,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
