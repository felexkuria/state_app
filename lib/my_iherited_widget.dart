import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({Key? key, required Widget child, required this.data})
      : super(key: key, child: child);

  final MyCounterInheritedWidgetSate data;

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return child != oldWidget;
  }
}
