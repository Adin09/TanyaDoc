import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/batal_paseien_page.dart';
import 'package:tanya_doc/get_started.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/start',
      routes: {
        '/start': (context) => const GetStarted(),
        '/BatalPasien': (context) => const Batal(),
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
