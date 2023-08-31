import 'package:flutter/material.dart';
import 'package:Muslim/models/appbar_model.dart';
import 'package:Muslim/ui/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarModel(
      text: "Muslim dasturi",
      child: MaterialApp(
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
