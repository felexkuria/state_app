import 'package:flutter/material.dart';

class MyCounterInheritedWidgetSate extends StatefulWidget {
  const MyCounterInheritedWidgetSate({Key? key}) : super(key: key);

  @override
  _MyCounterInheritedWidgetSateState createState() =>
      _MyCounterInheritedWidgetSateState();
}

class _MyCounterInheritedWidgetSateState
    extends State<MyCounterInheritedWidgetSate> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyiheritedWidget extends InheritedWidget {
  final int counter;
  const MyiheritedWidget({
    required Key? key,
    required Widget child,
    required this.counter,
  }) : super(key: key, child: child);

  //final Widget child;

  static int of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MyiheritedWidget>()!
        .counter;
  }

  @override
  bool updateShouldNotify(MyiheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}
