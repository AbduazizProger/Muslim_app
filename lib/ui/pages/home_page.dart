import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Muslim/models/appbar_model.dart';
import 'package:Muslim/ui/pages/components_page.dart';
import 'package:Muslim/ui/pages/learn_page.dart';
import 'package:Muslim/ui/pages/islam_page.dart';

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
                'Vaqt';
          } else if (value == 1) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "Islom";
          } else {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "Muslim dasturi";
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
          const LearnPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: 'Asosiy'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.moon_fill),
            label: "Islom",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled),
            label: 'Vaqt',
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
                'Vaqt';
          } else if (value == 1) {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "O'rganish";
          } else {
            context.dependOnInheritedWidgetOfExactType<AppBarModel>()!.text =
                "Muslim dasturi";
          }
          setState(() {});
        },
      ),
    );
  }
}
