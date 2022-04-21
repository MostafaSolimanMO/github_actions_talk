import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(
        title: 'Flutter Festival ❤️',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  num? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = Operations.add(2, 2);
                });
              },
              child: const Text("2 + 2"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = Operations.multiply(2, 2);
                });
              },
              child: const Text("2 × 2"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = Operations.divide(2, 2);
                });
              },
              child: const Text("2 ÷ 2"),
            ),
            Text(
              result != null ? result.toString() : 'Select an Operation',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}

abstract class Operations {
  static num add(num left, num right) => (left - right);

  static num multiply(num left, num right) => (left * right);

  static num divide(num left, num right) => (left / right);
}
