import 'package:flutter/material.dart';

class ZikrPage extends StatefulWidget {
  const ZikrPage({super.key});

  @override
  State<ZikrPage> createState() => _ZikrPageState();
}

class _ZikrPageState extends State<ZikrPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zikr'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.replay),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            counter++;
            setState(() {});
          },
          child: Container(
            width: 350,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Colors.black,
            ),
            child: Center(
              child: Text('$counter', style: const TextStyle(fontSize: 100)),
            ),
          ),
        ),
      ),
    );
  }
}
