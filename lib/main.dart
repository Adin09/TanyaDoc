import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/batal_paseien_page.dart';
import 'package:tanya_doc/chat_page/chat_page.dart';
import 'package:tanya_doc/get_started.dart';
import 'package:tanya_doc/home_page.dart';
import 'package:tanya_doc/informasi_page/informasi_page.dart';
import 'package:tanya_doc/kontak/kontak_view.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/start',
      routes: {
        '/start': (context) => const GetStarted(),
        '/home': (context) => const Home(),
        '/BatalPasien': (context) => const Batal(),
        '/informasi': (context) => const Informasi(),
        '/kontak': (context) => const Kontak(),
        '/chat': (context) => const ChatPage(),
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
