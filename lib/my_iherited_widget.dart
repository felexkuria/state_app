import 'package:flutter/material.dart';

class MyCounterInheritedWidget extends StatefulWidget {
  //const MyCounterInheritedWidgetSate({Key? key}) : super(key: key);
  final Widget child;

  const MyCounterInheritedWidget({Key? key, required this.child})
      : super(key: key);
  static _MyCounterInheritedWidgetState? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MyInheritedWidget>()
        ?.data;
  }

  @override
  _MyCounterInheritedWidgetState createState() =>
      _MyCounterInheritedWidgetState();
}

class _MyCounterInheritedWidgetState extends State<MyCounterInheritedWidget> {
  int _counter = 0;
  int get counter => _counter;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(child: widget.child, counter: counter, data: this);
  }
}

class MyInheritedWidget extends InheritedWidget {
  final int counter;
  final _MyCounterInheritedWidgetState data;
  const MyInheritedWidget({
    Key? key,
    required Widget child,
    required this.counter,
    required this.data,
  }) : super(key: key, child: child);

  //final Widget child;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return oldWidget.counter != counter;
  }
}
