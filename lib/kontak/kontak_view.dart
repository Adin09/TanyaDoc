import 'package:flutter/material.dart';
import 'package:tanya_doc/kontak/kontak_card.dart';

class Kontak extends StatefulWidget {
  const Kontak({Key? key}) : super(key: key);

  @override
  State<Kontak> createState() => _Kontak();
}

class _Kontak extends State<Kontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Kontak",
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.purple),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              CardKontak(),
              CardKontak(),
              CardKontak(),
              CardKontak(),
              CardKontak(),
              CardKontak(),
            ],
          ),
        ),
      ),
    );
  }
}
