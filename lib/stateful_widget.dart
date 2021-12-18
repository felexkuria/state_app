import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget {
  int counter;
  final Function callback;
  ExampleStatefulPage({
    Key? key,
    required this.counter,
    required this.callback,
  }) : super(key: key);

  @override
  _ExampleStatefulPageState createState() => _ExampleStatefulPageState();
}

class _ExampleStatefulPageState extends State<ExampleStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('Child Widget builds');
    return Scaffold(
      body: Center(
        child: Text("${widget.counter}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.callback.call();
          setState(() {
            widget.counter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
