import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_card.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_itemss.dart';

class JadwalDokter extends StatefulWidget {
  const JadwalDokter({Key? key}) : super(key: key);

  @override
  State<JadwalDokter> createState() => _JadwalDokterState();
}

class _JadwalDokterState extends State<JadwalDokter> {
  final List<ListItem> items = List.from(listItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Jadwal Dokter"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
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
