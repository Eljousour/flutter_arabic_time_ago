import 'package:flutter_arabic_time_ago/arabic_time_ago.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TimeAgo Example')),
        body: Center(
          child: Text(
              ArabicTimeAgo.getTimeAgo(DateTime.now().microsecondsSinceEpoch)),
        ),
      ),
    );
  }
}
