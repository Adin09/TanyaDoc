import 'package:flutter/material.dart';
import 'package:tanya_doc/kontak/list/list_class.dart';
import 'package:tanya_doc/kontak/list/list_kontak.dart';
import 'package:tanya_doc/kontak/list_contact_widget.dart';

class Kontak extends StatefulWidget {
  const Kontak({Key? key}) : super(key: key);

  @override
  State<Kontak> createState() => _Kontak();
}

class _Kontak extends State<Kontak> {
  final List<ListKontak> kontak = List.from(listKontak);
  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

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
      body: AnimatedList(
        key: listKey,
        initialItemCount: kontak.length,
        itemBuilder: (context, index, animation) => ListContactWidget(
          kontak: kontak[index],
          animation: animation,
          onClicked: () => removedItem(index),
        ),
      ),
    );
  }

  void removedItem(int index) {
    final removedItem = kontak[index];
    kontak.removeAt(index);
    listKey.currentState!.removeItem(
      index,
      (context, animation) => ListContactWidget(
        kontak: removedItem,
        animation: animation,
        onClicked: () {},
      ),
      duration: const Duration(microseconds: 600),
    );
  }
}
