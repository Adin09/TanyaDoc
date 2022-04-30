import 'package:flutter/material.dart';
import 'package:tanya_doc/batal_pasien_page/batal_pasien_card.dart';

class Batal extends StatefulWidget {
  const Batal({Key? key}) : super(key: key);

  @override
  State<Batal> createState() => _BatalState();
}

class _BatalState extends State<Batal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Notification"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              HistoryCards(),
              SizedBox(height: 20,),
              HistoryCards(),
              SizedBox(height: 20,),
              HistoryCards(),
              SizedBox(height: 20,),

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
              Icon(Icons.check, size: 40,),
              Text("Changes Saved", style: TextStyle(
                color: Colors.white,
                fontSize: 26,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
