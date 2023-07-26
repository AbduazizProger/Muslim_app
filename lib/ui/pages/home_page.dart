import 'package:flutter/material.dart';
import 'package:islam/models/appbar_model.dart';
import 'package:islam/ui/pages/components_page.dart';
import 'package:islam/ui/pages/settings_page.dart';
import 'package:islam/ui/pages/islam_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.findAncestorWidgetOfExactType<AppBarModel>()!.text,
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (int value) {
          pageIndex = value;
          if (value == 2) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                'Settings';
          } else if (value == 1) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                'Learning';
          } else {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "Muslim's app";
          }
          setState(() {});
        },
        children: [
          ListView(
            children: const [
              ComponentsPage(),
            ],
          ),
          const IslamPage(),
          const SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'Main'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt), label: 'Learning'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.green,
        selectedFontSize: 17,
        currentIndex: pageIndex,
        onTap: (value) {
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 350),
            curve: Curves.ease,
          );
          if (value == 2) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                'Settings';
          } else if (value == 1) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                'Learning';
          } else {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "Muslim's app";
          }
          setState(() {});
        },
      ),
    );
  }
}
