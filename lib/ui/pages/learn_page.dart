import 'package:Muslim/ui/components/note_widget.dart';
import 'package:Muslim/ui/components/time_action.dart';
import 'package:Muslim/ui/pages/surah_names_page.dart';
import 'package:Muslim/ui/pages/zikr_page.dart';
import 'package:flutter/material.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const NoteWidget(),
        TimeAction(
          icon: Image.asset(
            'assets/images/sujud.png',
            color: Colors.green,
            width: 70,
          ),
          name: 'Bomdod namozi',
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const Padding(
                padding: EdgeInsets.only(top: 40),
                child: SurahNamesPage(),
              ),
              isScrollControlled: true,
            );
          },
          child: const TimeAction(
            icon: Icon(Icons.menu_book_rounded, size: 60, color: Colors.green),
            name: "Qur'on o'qish",
          ),
        ),
        TimeAction(
          icon: Image.asset(
            'assets/images/sujud.png',
            color: Colors.green,
            width: 70,
          ),
          name: 'Peshin namozi',
        ),
        const TimeAction(
          icon: Icon(Icons.book, size: 55, color: Colors.green),
          name: "Ilm(ma'ruza/kitob)",
        ),
        TimeAction(
          icon: Image.asset(
            'assets/images/sujud.png',
            color: Colors.green,
            width: 70,
          ),
          name: 'Asr namozi',
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const Padding(
                padding: EdgeInsets.only(top: 40),
                child: ZikrPage(),
              ),
              isScrollControlled: true,
            );
          },
          child: TimeAction(
            icon: Image.asset(
              'assets/images/tasbih.png',
              color: Colors.green,
              width: 63,
            ),
            name: "Ko'p zikr qilish",
          ),
        ),
        TimeAction(
          icon: Image.asset(
            'assets/images/sujud.png',
            color: Colors.green,
            width: 70,
          ),
          name: 'Shom namozi',
        ),
        TimeAction(
          icon: Image.asset(
            'assets/images/prayer.png',
            color: Colors.green,
            width: 70,
          ),
          name: 'Ota-ona(Oila) bilan\nsuhbat',
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TimeAction(
            icon: Image.asset(
              'assets/images/sujud.png',
              color: Colors.green,
              width: 70,
            ),
            name: 'Xufton namozi',
          ),
        ),
      ],
    );
  }
}
