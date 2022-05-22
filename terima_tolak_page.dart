import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_card.dart';
import 'package:tanya_doc/batal_pasien_page/list/list_itemss.dart';

class Terima_tolak extends StatefulWidget {
  const Terima_tolak({Key? key}) : super(key: key);

  @override
  State<Terima_tolak> createState() => _Terima_tolakState();
}

class _Terima_tolakState extends State<Terima_tolak> {
  final List<ListItem> items = List.from(listItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Jadwal Pasien"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              width: 350,
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
            )
          ],
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
