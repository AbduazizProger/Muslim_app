import 'package:flutter/material.dart';
import 'package:islam/models/appbar_model.dart';
import 'package:islam/ui/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarModel(
      text: "Muslim's app",
      child: MaterialApp(
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
