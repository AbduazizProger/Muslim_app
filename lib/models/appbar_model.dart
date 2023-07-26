import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarModel extends InheritedWidget {
  AppBarModel({super.key, required this.child, required this.text})
      : super(child: child);

  final Widget child;
  String text;

  static AppBarModel? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppBarModel>();
  }

  @override
  bool updateShouldNotify(AppBarModel oldWidget) {
    return true;
  }
}
