import 'package:arabic_time_ago_flutter/arabic_time_ago.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TimeAgo Example')),
        body: Center(
          child: Text(
              ArabicTimeAgo.getTimeAgo(DateTime.now().microsecondsSinceEpoch)),
        ),
      ),
    );
  }
}
