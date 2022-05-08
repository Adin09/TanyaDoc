import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/batal_pasien_card.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_card.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_itemss.dart';

class Batal extends StatefulWidget {
  const Batal({Key? key}) : super(key: key);

  @override
  State<Batal> createState() => _BatalState();
}

class _BatalState extends State<Batal> {
  final List<ListItem> items = List.from(listItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HistoryCards(),
              HistoryCards(),
              HistoryCards(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20.0),
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () => {},
          color: Colors.purple,
          textColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check,
                size: 40,
              ),
              Text(
                "Changes Saved",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
