import 'package:flutter/material.dart';

class GlobalKeyPage extends StatefulWidget {
  const GlobalKeyPage({Key? key}) : super(key: key);

  @override
  _GlobalKeyPageState createState() => _GlobalKeyPageState();
}

class _GlobalKeyPageState extends State<GlobalKeyPage> {
  final keyCounter = GlobalKey<_CounterWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("global key"),
      ),
      body: Center(
        child: CounterWidget(key: keyCounter),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            final counter = keyCounter.currentState!.counter; // we can access to counter in other class(CounterWidget class)
            int a = counter;

            // we can call a method in other class
            keyCounter.currentState!.increment();

            final counterPlus = keyCounter.currentState!.counter; // we can access to counter in other class(CounterWidget class)
            int h = counterPlus;

          }),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void increment() => setState(() {
        counter += 5;
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Counter $counter",
      style: TextStyle(fontSize: 32),
    );
  }
}
