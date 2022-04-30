import 'package:flutter/material.dart';
import 'package:tanya_doc/get_started.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/start',
      routes: {
        '/start': (context) => GetStarted(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
