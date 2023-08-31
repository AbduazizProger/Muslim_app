import 'package:flutter/material.dart';
import 'package:Muslim/ui/components/third_column.dart';
import 'package:Muslim/ui/components/second_column.dart';
import 'package:Muslim/ui/components/first_column.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FirstWidget(),
        SecondWidget(),
        ThirdWidget(),
      ],
    );
  }
}
